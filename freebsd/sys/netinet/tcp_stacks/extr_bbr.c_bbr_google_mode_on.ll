; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_google_mode_on.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_google_mode_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, i32, %struct.TYPE_2__, i64, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i64, i64, i32 }

@bbr_google_discount = common dso_local global i32 0, align 4
@bbr_policer_detection_enabled = common dso_local global i32 0, align 4
@USECS_IN_SECOND = common dso_local global i32 0, align 4
@BBR_NUM_RTTS_FOR_GOOG_DEL_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*)* @bbr_google_mode_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_google_mode_on(%struct.tcp_bbr* %0) #0 {
  %2 = alloca %struct.tcp_bbr*, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %2, align 8
  %3 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %4 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %6 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @bbr_google_discount, align 4
  %8 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %9 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 7
  store i32 %7, i32* %10, align 8
  %11 = load i32, i32* @bbr_policer_detection_enabled, align 4
  %12 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %13 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @USECS_IN_SECOND, align 4
  %15 = mul nsw i32 %14, 10
  %16 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %17 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %20 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %22 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %25 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %28 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %31 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %34 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* @BBR_NUM_RTTS_FOR_GOOG_DEL_LIMIT, align 4
  %37 = call i32 @reset_time(i32* %35, i32 %36)
  %38 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %39 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* @USECS_IN_SECOND, align 4
  %42 = mul nsw i32 11, %41
  %43 = call i32 @reset_time_small(i32* %40, i32 %42)
  %44 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %45 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %46 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %45, i32 0, i32 1
  %47 = call i32 @tcp_get_usecs(i32* %46)
  %48 = call i32 @tcp_bbr_tso_size_check(%struct.tcp_bbr* %44, i32 %47)
  ret void
}

declare dso_local i32 @reset_time(i32*, i32) #1

declare dso_local i32 @reset_time_small(i32*, i32) #1

declare dso_local i32 @tcp_bbr_tso_size_check(%struct.tcp_bbr*, i32) #1

declare dso_local i32 @tcp_get_usecs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
