; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_output.c_tcp_sndbuf_autoscale.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_output.c_tcp_sndbuf_autoscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i64 }
%struct.socket = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@V_tcp_do_autosndbuf = common dso_local global i64 0, align 8
@SB_AUTOSIZE = common dso_local global i32 0, align 4
@V_tcp_sendbuf_auto_lowat = common dso_local global i64 0, align 8
@V_tcp_autosndbuf_max = common dso_local global i64 0, align 8
@V_tcp_autosndbuf_inc = common dso_local global i64 0, align 8
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_sndbuf_autoscale(%struct.tcpcb* %0, %struct.socket* %1, i64 %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* @V_tcp_do_autosndbuf, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %101

10:                                               ; preds = %3
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SB_AUTOSIZE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %101

18:                                               ; preds = %10
  %19 = load i64, i64* @V_tcp_sendbuf_auto_lowat, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.socket*, %struct.socket** %5, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i32 [ %25, %21 ], [ 0, %26 ]
  store i32 %28, i32* %7, align 4
  %29 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sdiv i32 %31, 4
  %33 = mul nsw i32 %32, 5
  %34 = load %struct.socket*, %struct.socket** %5, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %37, %38
  %40 = icmp sge i32 %33, %39
  br i1 %40, label %41, label %100

41:                                               ; preds = %27
  %42 = load %struct.socket*, %struct.socket** %5, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 0
  %44 = call i64 @sbused(%struct.TYPE_3__* %43)
  %45 = load %struct.socket*, %struct.socket** %5, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 8
  %50 = mul nsw i32 %49, 7
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = icmp sge i64 %44, %53
  br i1 %54, label %55, label %100

55:                                               ; preds = %41
  %56 = load %struct.socket*, %struct.socket** %5, align 8
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %56, i32 0, i32 0
  %58 = call i64 @sbused(%struct.TYPE_3__* %57)
  %59 = load i64, i64* @V_tcp_autosndbuf_max, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %100

61:                                               ; preds = %55
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.socket*, %struct.socket** %5, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 0
  %65 = call i64 @sbused(%struct.TYPE_3__* %64)
  %66 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %67 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %70 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = sub nsw i64 %65, %72
  %74 = icmp sge i64 %62, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %61
  %76 = load %struct.socket*, %struct.socket** %5, align 8
  %77 = getelementptr inbounds %struct.socket, %struct.socket* %76, i32 0, i32 0
  %78 = load %struct.socket*, %struct.socket** %5, align 8
  %79 = getelementptr inbounds %struct.socket, %struct.socket* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @V_tcp_autosndbuf_inc, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i64, i64* @V_tcp_autosndbuf_max, align 8
  %86 = call i32 @min(i64 %84, i64 %85)
  %87 = load %struct.socket*, %struct.socket** %5, align 8
  %88 = load i32, i32* @curthread, align 4
  %89 = call i32 @sbreserve_locked(%struct.TYPE_3__* %77, i32 %86, %struct.socket* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %75
  %92 = load i32, i32* @SB_AUTOSIZE, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.socket*, %struct.socket** %5, align 8
  %95 = getelementptr inbounds %struct.socket, %struct.socket* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %93
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %91, %75
  br label %100

100:                                              ; preds = %99, %61, %55, %41, %27
  br label %101

101:                                              ; preds = %100, %10, %3
  ret void
}

declare dso_local i64 @sbused(%struct.TYPE_3__*) #1

declare dso_local i32 @sbreserve_locked(%struct.TYPE_3__*, i32, %struct.socket*, i32) #1

declare dso_local i32 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
