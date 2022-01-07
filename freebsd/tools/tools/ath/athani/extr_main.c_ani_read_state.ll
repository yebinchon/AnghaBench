; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athani/extr_main.c_ani_read_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athani/extr_main.c_ani_read_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_driver_req = type { i32 }
%struct.ath_diag = type { i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@HAL_DIAG_ANI_CURRENT = common dso_local global i32 0, align 4
@SIOCGATHDIAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"  ofdm_noise_immunity_level=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"  cck_noise_immunity_level=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"  spur_immunity_level=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"  firstep_level=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"  ofdm_weak_signal_detect=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"  cck_weak_signal_threshold=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"  mrc_cck=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_driver_req*, i8*)* @ani_read_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ani_read_state(%struct.ath_driver_req* %0, i8* %1) #0 {
  %3 = alloca %struct.ath_driver_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ath_diag, align 8
  %6 = alloca %struct.TYPE_2__, align 4
  store %struct.ath_driver_req* %0, %struct.ath_driver_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %5, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strncpy(i32 %8, i8* %9, i32 4)
  %11 = load i32, i32* @HAL_DIAG_ANI_CURRENT, align 4
  %12 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %5, i32 0, i32 3
  store i32 %11, i32* %12, align 8
  %13 = ptrtoint %struct.TYPE_2__* %6 to i64
  %14 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %5, i32 0, i32 2
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %5, i32 0, i32 0
  store i32 28, i32* %15, align 8
  %16 = load %struct.ath_driver_req*, %struct.ath_driver_req** %3, align 8
  %17 = load i32, i32* @SIOCGATHDIAG, align 4
  %18 = call i64 @ath_driver_req_fetch_diag(%struct.ath_driver_req* %16, i32 %17, %struct.ath_diag* %5)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %5, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %44)
  ret void
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @ath_driver_req_fetch_diag(%struct.ath_driver_req*, i32, %struct.ath_diag*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
