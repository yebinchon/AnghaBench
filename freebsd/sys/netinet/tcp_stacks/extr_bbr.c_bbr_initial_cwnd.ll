; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_initial_cwnd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_initial_cwnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32 }
%struct.tcpcb = type { i32 }

@V_tcp_initcwnd_segments = common dso_local global i32 0, align 4
@V_tcp_do_rfc3390 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_bbr*, %struct.tcpcb*)* @bbr_initial_cwnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_initial_cwnd(%struct.tcp_bbr* %0, %struct.tcpcb* %1) #0 {
  %3 = alloca %struct.tcp_bbr*, align 8
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %3, align 8
  store %struct.tcpcb* %1, %struct.tcpcb** %4, align 8
  %6 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %7 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %12 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  store i32 %17, i32* %5, align 4
  br label %76

18:                                               ; preds = %2
  %19 = load i32, i32* @V_tcp_initcwnd_segments, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i32, i32* @V_tcp_initcwnd_segments, align 4
  %23 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %28 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 2, %29
  %31 = call i32 @max(i32 %30, i32 14600)
  %32 = call i32 @min(i32 %26, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %75

33:                                               ; preds = %18
  %34 = load i64, i64* @V_tcp_do_rfc3390, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %38 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 4, %39
  %41 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %42 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 2, %43
  %45 = call i32 @max(i32 %44, i32 4380)
  %46 = call i32 @min(i32 %40, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %74

47:                                               ; preds = %33
  %48 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %49 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 2190
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %54 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 2, %55
  store i32 %56, i32* %5, align 4
  br label %73

57:                                               ; preds = %47
  %58 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %59 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 1095
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %64 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 3, %65
  store i32 %66, i32* %5, align 4
  br label %72

67:                                               ; preds = %57
  %68 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %69 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 4, %70
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %52
  br label %74

74:                                               ; preds = %73, %36
  br label %75

75:                                               ; preds = %74, %21
  br label %76

76:                                               ; preds = %75, %10
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
