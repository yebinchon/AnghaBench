; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_window_update_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_window_update_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i32 }
%struct.socket = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TCP_MAXWIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.socket*, i32, i32)* @bbr_window_update_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_window_update_needed(%struct.tcpcb* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @TCP_MAXWIN, align 4
  %14 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %13, %16
  %18 = call i32 @min(i32 %12, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @SEQ_GT(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %4
  %28 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %10, align 4
  br label %39

38:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %42 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %40, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %45, %46
  %48 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %49 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %47, %50
  %52 = icmp eq i32 %44, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %94

54:                                               ; preds = %39
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 2, %56
  %58 = icmp sge i32 %55, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.socket*, %struct.socket** %7, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %64, 4
  %66 = icmp sge i32 %60, %65
  br i1 %66, label %83, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.socket*, %struct.socket** %7, align 8
  %70 = getelementptr inbounds %struct.socket, %struct.socket* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 8
  %74 = icmp sle i32 %68, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %67
  %76 = load %struct.socket*, %struct.socket** %7, align 8
  %77 = getelementptr inbounds %struct.socket, %struct.socket* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 8, %80
  %82 = icmp sle i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75, %67, %59
  store i32 1, i32* %5, align 4
  br label %94

84:                                               ; preds = %75, %54
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 2, %85
  %87 = load %struct.socket*, %struct.socket** %7, align 8
  %88 = getelementptr inbounds %struct.socket, %struct.socket* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %86, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 1, i32* %5, align 4
  br label %94

93:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %92, %83, %53
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @SEQ_GT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
