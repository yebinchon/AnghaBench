; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_send_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_send_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_func_state_params = type { %struct.TYPE_3__, %struct.ecore_func_sp_obj* }
%struct.TYPE_3__ = type { %struct.ecore_func_start_params }
%struct.ecore_func_start_params = type { i32, i32, i64, i32, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.ecore_func_sp_obj = type { i32, i64 }
%struct.function_start_data = type { i32, i32, %struct.TYPE_4__, i64, i32, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64 }
%struct.TYPE_4__ = type { i32 }

@MAX_VLAN_PRIORITIES = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_COMMON_FUNCTION_START = common dso_local global i32 0, align 4
@NONE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_func_state_params*)* @ecore_func_send_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_func_send_start(%struct.bxe_softc* %0, %struct.ecore_func_state_params* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.ecore_func_state_params*, align 8
  %5 = alloca %struct.ecore_func_sp_obj*, align 8
  %6 = alloca %struct.function_start_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_func_start_params*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.ecore_func_state_params* %1, %struct.ecore_func_state_params** %4, align 8
  %9 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %4, align 8
  %10 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %9, i32 0, i32 1
  %11 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %10, align 8
  store %struct.ecore_func_sp_obj* %11, %struct.ecore_func_sp_obj** %5, align 8
  %12 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.function_start_data*
  store %struct.function_start_data* %15, %struct.function_start_data** %6, align 8
  %16 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %4, align 8
  %20 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.ecore_func_start_params* %21, %struct.ecore_func_start_params** %8, align 8
  %22 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %23 = call i32 @ECORE_MEMSET(%struct.function_start_data* %22, i32 0, i32 112)
  %24 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %25 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %24, i32 0, i32 17
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %28 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %27, i32 0, i32 19
  store i64 %26, i64* %28, align 8
  %29 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %30 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %29, i32 0, i32 16
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @ECORE_CPU_TO_LE16(i64 %31)
  %33 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %34 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %33, i32 0, i32 18
  store i8* %32, i8** %34, align 8
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %36 = call i32 @ECORE_PATH_ID(%struct.bxe_softc* %35)
  %37 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %38 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %37, i32 0, i32 17
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %40 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %39, i32 0, i32 15
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %43 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %42, i32 0, i32 16
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %45 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %44, i32 0, i32 14
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %48 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %47, i32 0, i32 15
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %50 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %53 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %52, i32 0, i32 14
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %55 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %54, i32 0, i32 12
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %58 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %57, i32 0, i32 13
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %60 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %63 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %62, i32 0, i32 12
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %65 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %68 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %67, i32 0, i32 11
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %70 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %73 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %72, i32 0, i32 10
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %75 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %78 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %77, i32 0, i32 9
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %80 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %2
  %84 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %85 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %87 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %86, i32 0, i32 7
  %88 = load i64, i64* %87, align 8
  %89 = call i8* @ECORE_CPU_TO_LE16(i64 %88)
  %90 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %91 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %90, i32 0, i32 8
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %83, %2
  %93 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %94 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %97 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %99 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %102 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %104 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %92
  %108 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %109 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i8* @ECORE_CPU_TO_LE16(i64 %110)
  %112 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %113 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %112, i32 0, i32 5
  store i8* %111, i8** %113, align 8
  br label %118

114:                                              ; preds = %92
  %115 = call i8* @ECORE_CPU_TO_LE16(i64 33024)
  %116 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %117 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %116, i32 0, i32 5
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %114, %107
  %119 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %120 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %123 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %125 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %128 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  %129 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %130 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %118
  %134 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %135 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %139 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @MAX_VLAN_PRIORITIES, align 4
  %142 = call i32 @memcpy(i32 %137, i32 %140, i32 %141)
  %143 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %8, align 8
  %144 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %147 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %133, %118
  %149 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %150 = load i32, i32* @RAMROD_CMD_ID_COMMON_FUNCTION_START, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @NONE_CONNECTION_TYPE, align 4
  %153 = call i32 @ecore_sp_post(%struct.bxe_softc* %149, i32 %150, i32 0, i32 %151, i32 %152)
  ret i32 %153
}

declare dso_local i32 @ECORE_MEMSET(%struct.function_start_data*, i32, i32) #1

declare dso_local i8* @ECORE_CPU_TO_LE16(i64) #1

declare dso_local i32 @ECORE_PATH_ID(%struct.bxe_softc*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ecore_sp_post(%struct.bxe_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
