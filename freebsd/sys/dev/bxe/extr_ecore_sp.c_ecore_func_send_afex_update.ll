; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_send_afex_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_send_afex_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_func_state_params = type { %struct.TYPE_2__, %struct.ecore_func_sp_obj* }
%struct.TYPE_2__ = type { %struct.ecore_func_afex_update_params }
%struct.ecore_func_afex_update_params = type { i32, i32, i32 }
%struct.ecore_func_sp_obj = type { i32, i64 }
%struct.function_update_data = type { i32, i32, i32, i32, i8*, i8*, i32 }

@AFEX_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"afex: sending func_update vif_id 0x%x dvlan 0x%x prio 0x%x\0A\00", align 1
@RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE = common dso_local global i32 0, align 4
@NONE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_func_state_params*)* @ecore_func_send_afex_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_func_send_afex_update(%struct.bxe_softc* %0, %struct.ecore_func_state_params* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.ecore_func_state_params*, align 8
  %5 = alloca %struct.ecore_func_sp_obj*, align 8
  %6 = alloca %struct.function_update_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_func_afex_update_params*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.ecore_func_state_params* %1, %struct.ecore_func_state_params** %4, align 8
  %9 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %4, align 8
  %10 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %9, i32 0, i32 1
  %11 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %10, align 8
  store %struct.ecore_func_sp_obj* %11, %struct.ecore_func_sp_obj** %5, align 8
  %12 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.function_update_data*
  store %struct.function_update_data* %15, %struct.function_update_data** %6, align 8
  %16 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %4, align 8
  %20 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.ecore_func_afex_update_params* %21, %struct.ecore_func_afex_update_params** %8, align 8
  %22 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %23 = call i32 @ECORE_MEMSET(%struct.function_update_data* %22, i32 0, i32 40)
  %24 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %25 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.ecore_func_afex_update_params*, %struct.ecore_func_afex_update_params** %8, align 8
  %27 = getelementptr inbounds %struct.ecore_func_afex_update_params, %struct.ecore_func_afex_update_params* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @ECORE_CPU_TO_LE16(i32 %28)
  %30 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %31 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %33 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.ecore_func_afex_update_params*, %struct.ecore_func_afex_update_params** %8, align 8
  %35 = getelementptr inbounds %struct.ecore_func_afex_update_params, %struct.ecore_func_afex_update_params* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @ECORE_CPU_TO_LE16(i32 %36)
  %38 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %39 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %41 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  %42 = load %struct.ecore_func_afex_update_params*, %struct.ecore_func_afex_update_params** %8, align 8
  %43 = getelementptr inbounds %struct.ecore_func_afex_update_params, %struct.ecore_func_afex_update_params* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %46 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @AFEX_UPDATE, align 4
  %48 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %49 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %51 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %52 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %51, i32 0, i32 5
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %55 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %54, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %58 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ECORE_MSG(%struct.bxe_softc* %50, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %53, i8* %56, i32 %59)
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %62 = load i32, i32* @RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @NONE_CONNECTION_TYPE, align 4
  %65 = call i32 @ecore_sp_post(%struct.bxe_softc* %61, i32 %62, i32 0, i32 %63, i32 %64)
  ret i32 %65
}

declare dso_local i32 @ECORE_MEMSET(%struct.function_update_data*, i32, i32) #1

declare dso_local i8* @ECORE_CPU_TO_LE16(i32) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @ecore_sp_post(%struct.bxe_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
