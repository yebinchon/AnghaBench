; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_eee_set_timers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_eee_set_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@MISC_REG_CPMU_LP_IDLE_THR_P0 = common dso_local global i64 0, align 8
@ELINK_EEE_MODE_ENABLE_LPI = common dso_local global i32 0, align 4
@ELINK_EEE_MODE_OVERRIDE_NVRAM = common dso_local global i32 0, align 4
@ELINK_EEE_MODE_OUTPUT_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error: Tx LPI is enabled with timer 0\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@SHMEM_EEE_TIMER_MASK = common dso_local global i32 0, align 4
@SHMEM_EEE_TIME_OUTPUT_BIT = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_params*, %struct.elink_vars*)* @elink_eee_set_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_eee_set_timers(%struct.elink_params* %0, %struct.elink_vars* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %10 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %9, i32 0, i32 2
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  store %struct.bxe_softc* %11, %struct.bxe_softc** %8, align 8
  %12 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %13 = call i32 @elink_eee_calc_timer(%struct.elink_params* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %18 = load i64, i64* @MISC_REG_CPMU_LP_IDLE_THR_P0, align 8
  %19 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %20 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %18, %23
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @REG_WR(%struct.bxe_softc* %17, i64 %24, i32 %25)
  br label %53

27:                                               ; preds = %2
  %28 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %29 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ELINK_EEE_MODE_ENABLE_LPI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %36 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ELINK_EEE_MODE_OVERRIDE_NVRAM, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %43 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ELINK_EEE_MODE_OUTPUT_TIME, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %50 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %51, i32* %3, align 4
  br label %94

52:                                               ; preds = %41, %34, %27
  br label %53

53:                                               ; preds = %52, %16
  %54 = load i32, i32* @SHMEM_EEE_TIMER_MASK, align 4
  %55 = load i32, i32* @SHMEM_EEE_TIME_OUTPUT_BIT, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %59 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %63 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ELINK_EEE_MODE_OUTPUT_TIME, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %53
  %69 = load i32, i32* %6, align 4
  %70 = ashr i32 %69, 4
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @SHMEM_EEE_TIMER_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @SHMEM_EEE_TIME_OUTPUT_BIT, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %77 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %92

80:                                               ; preds = %53
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @elink_eee_time_to_nvram(i32 %81, i32* %7)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %85, i32* %3, align 4
  br label %94

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %89 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %68
  %93 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %84, %48
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @elink_eee_calc_timer(%struct.elink_params*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i64 @elink_eee_time_to_nvram(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
