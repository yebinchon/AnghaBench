; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_should_enter_probe_rtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_should_enter_probe_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@bbr_can_force_probertt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_bbr*, i64)* @bbr_should_enter_probe_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_should_enter_probe_rtt(%struct.tcp_bbr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcp_bbr*, align 8
  %5 = alloca i64, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %7 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %12 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %18 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @bbr_calc_time(i64 %16, i32 %20)
  %22 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %23 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %58

28:                                               ; preds = %15, %10, %2
  %29 = load i64, i64* @bbr_can_force_probertt, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %33 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %39 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @TSTMP_GT(i64 %37, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %36
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %47 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %45, %49
  %51 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %52 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %58

57:                                               ; preds = %44, %36, %31, %28
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56, %27
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @bbr_calc_time(i64, i32) #1

declare dso_local i64 @TSTMP_GT(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
