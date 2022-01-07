; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_send_set_timesync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_send_set_timesync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_func_state_params = type { %struct.TYPE_3__, %struct.ecore_func_sp_obj* }
%struct.TYPE_3__ = type { %struct.ecore_func_set_timesync_params }
%struct.ecore_func_set_timesync_params = type { i32, i32, i32, i32, i32, i32 }
%struct.ecore_func_sp_obj = type { i32, i64 }
%struct.set_timesync_ramrod_data = type { %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i8*, i8* }

@.str = private unnamed_addr constant [149 x i8] c"Set timesync command params: drift_cmd = %d, offset_cmd = %d, add_sub_drift = %d, drift_val = %d, drift_period = %d, offset_lo = %d, offset_hi = %d\0A\00", align 1
@RAMROD_CMD_ID_COMMON_SET_TIMESYNC = common dso_local global i32 0, align 4
@NONE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_func_state_params*)* @ecore_func_send_set_timesync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_func_send_set_timesync(%struct.bxe_softc* %0, %struct.ecore_func_state_params* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.ecore_func_state_params*, align 8
  %5 = alloca %struct.ecore_func_sp_obj*, align 8
  %6 = alloca %struct.set_timesync_ramrod_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_func_set_timesync_params*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.ecore_func_state_params* %1, %struct.ecore_func_state_params** %4, align 8
  %9 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %4, align 8
  %10 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %9, i32 0, i32 1
  %11 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %10, align 8
  store %struct.ecore_func_sp_obj* %11, %struct.ecore_func_sp_obj** %5, align 8
  %12 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.set_timesync_ramrod_data*
  store %struct.set_timesync_ramrod_data* %15, %struct.set_timesync_ramrod_data** %6, align 8
  %16 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %4, align 8
  %20 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.ecore_func_set_timesync_params* %21, %struct.ecore_func_set_timesync_params** %8, align 8
  %22 = load %struct.set_timesync_ramrod_data*, %struct.set_timesync_ramrod_data** %6, align 8
  %23 = call i32 @ECORE_MEMSET(%struct.set_timesync_ramrod_data* %22, i32 0, i32 40)
  %24 = load %struct.ecore_func_set_timesync_params*, %struct.ecore_func_set_timesync_params** %8, align 8
  %25 = getelementptr inbounds %struct.ecore_func_set_timesync_params, %struct.ecore_func_set_timesync_params* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.set_timesync_ramrod_data*, %struct.set_timesync_ramrod_data** %6, align 8
  %28 = getelementptr inbounds %struct.set_timesync_ramrod_data, %struct.set_timesync_ramrod_data* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ecore_func_set_timesync_params*, %struct.ecore_func_set_timesync_params** %8, align 8
  %30 = getelementptr inbounds %struct.ecore_func_set_timesync_params, %struct.ecore_func_set_timesync_params* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.set_timesync_ramrod_data*, %struct.set_timesync_ramrod_data** %6, align 8
  %33 = getelementptr inbounds %struct.set_timesync_ramrod_data, %struct.set_timesync_ramrod_data* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ecore_func_set_timesync_params*, %struct.ecore_func_set_timesync_params** %8, align 8
  %35 = getelementptr inbounds %struct.ecore_func_set_timesync_params, %struct.ecore_func_set_timesync_params* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.set_timesync_ramrod_data*, %struct.set_timesync_ramrod_data** %6, align 8
  %38 = getelementptr inbounds %struct.set_timesync_ramrod_data, %struct.set_timesync_ramrod_data* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ecore_func_set_timesync_params*, %struct.ecore_func_set_timesync_params** %8, align 8
  %40 = getelementptr inbounds %struct.ecore_func_set_timesync_params, %struct.ecore_func_set_timesync_params* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.set_timesync_ramrod_data*, %struct.set_timesync_ramrod_data** %6, align 8
  %43 = getelementptr inbounds %struct.set_timesync_ramrod_data, %struct.set_timesync_ramrod_data* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ecore_func_set_timesync_params*, %struct.ecore_func_set_timesync_params** %8, align 8
  %45 = getelementptr inbounds %struct.ecore_func_set_timesync_params, %struct.ecore_func_set_timesync_params* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.set_timesync_ramrod_data*, %struct.set_timesync_ramrod_data** %6, align 8
  %48 = getelementptr inbounds %struct.set_timesync_ramrod_data, %struct.set_timesync_ramrod_data* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ecore_func_set_timesync_params*, %struct.ecore_func_set_timesync_params** %8, align 8
  %50 = getelementptr inbounds %struct.ecore_func_set_timesync_params, %struct.ecore_func_set_timesync_params* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @U64_LO(i32 %51)
  %53 = call i8* @ECORE_CPU_TO_LE32(i32 %52)
  %54 = load %struct.set_timesync_ramrod_data*, %struct.set_timesync_ramrod_data** %6, align 8
  %55 = getelementptr inbounds %struct.set_timesync_ramrod_data, %struct.set_timesync_ramrod_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i8* %53, i8** %56, align 8
  %57 = load %struct.ecore_func_set_timesync_params*, %struct.ecore_func_set_timesync_params** %8, align 8
  %58 = getelementptr inbounds %struct.ecore_func_set_timesync_params, %struct.ecore_func_set_timesync_params* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @U64_HI(i32 %59)
  %61 = call i8* @ECORE_CPU_TO_LE32(i32 %60)
  %62 = load %struct.set_timesync_ramrod_data*, %struct.set_timesync_ramrod_data** %6, align 8
  %63 = getelementptr inbounds %struct.set_timesync_ramrod_data, %struct.set_timesync_ramrod_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %66 = load %struct.set_timesync_ramrod_data*, %struct.set_timesync_ramrod_data** %6, align 8
  %67 = getelementptr inbounds %struct.set_timesync_ramrod_data, %struct.set_timesync_ramrod_data* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.set_timesync_ramrod_data*, %struct.set_timesync_ramrod_data** %6, align 8
  %70 = getelementptr inbounds %struct.set_timesync_ramrod_data, %struct.set_timesync_ramrod_data* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.set_timesync_ramrod_data*, %struct.set_timesync_ramrod_data** %6, align 8
  %73 = getelementptr inbounds %struct.set_timesync_ramrod_data, %struct.set_timesync_ramrod_data* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.set_timesync_ramrod_data*, %struct.set_timesync_ramrod_data** %6, align 8
  %76 = getelementptr inbounds %struct.set_timesync_ramrod_data, %struct.set_timesync_ramrod_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.set_timesync_ramrod_data*, %struct.set_timesync_ramrod_data** %6, align 8
  %79 = getelementptr inbounds %struct.set_timesync_ramrod_data, %struct.set_timesync_ramrod_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.set_timesync_ramrod_data*, %struct.set_timesync_ramrod_data** %6, align 8
  %82 = getelementptr inbounds %struct.set_timesync_ramrod_data, %struct.set_timesync_ramrod_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.set_timesync_ramrod_data*, %struct.set_timesync_ramrod_data** %6, align 8
  %86 = getelementptr inbounds %struct.set_timesync_ramrod_data, %struct.set_timesync_ramrod_data* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @ECORE_MSG(%struct.bxe_softc* %65, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71, i32 %74, i32 %77, i32 %80, i8* %84, i8* %88)
  %90 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %91 = load i32, i32* @RAMROD_CMD_ID_COMMON_SET_TIMESYNC, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @NONE_CONNECTION_TYPE, align 4
  %94 = call i32 @ecore_sp_post(%struct.bxe_softc* %90, i32 %91, i32 0, i32 %92, i32 %93)
  ret i32 %94
}

declare dso_local i32 @ECORE_MEMSET(%struct.set_timesync_ramrod_data*, i32, i32) #1

declare dso_local i8* @ECORE_CPU_TO_LE32(i32) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i32, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @ecore_sp_post(%struct.bxe_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
