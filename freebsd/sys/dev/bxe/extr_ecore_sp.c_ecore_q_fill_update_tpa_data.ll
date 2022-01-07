; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_q_fill_update_tpa_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_q_fill_update_tpa_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_queue_sp_obj = type { i32 }
%struct.ecore_queue_update_tpa_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tpa_update_ramrod_data = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_queue_sp_obj*, %struct.ecore_queue_update_tpa_params*, %struct.tpa_update_ramrod_data*)* @ecore_q_fill_update_tpa_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_q_fill_update_tpa_data(%struct.bxe_softc* %0, %struct.ecore_queue_sp_obj* %1, %struct.ecore_queue_update_tpa_params* %2, %struct.tpa_update_ramrod_data* %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.ecore_queue_sp_obj*, align 8
  %7 = alloca %struct.ecore_queue_update_tpa_params*, align 8
  %8 = alloca %struct.tpa_update_ramrod_data*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.ecore_queue_sp_obj* %1, %struct.ecore_queue_sp_obj** %6, align 8
  store %struct.ecore_queue_update_tpa_params* %2, %struct.ecore_queue_update_tpa_params** %7, align 8
  store %struct.tpa_update_ramrod_data* %3, %struct.tpa_update_ramrod_data** %8, align 8
  %9 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %10 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %8, align 8
  %13 = getelementptr inbounds %struct.tpa_update_ramrod_data, %struct.tpa_update_ramrod_data* %12, i32 0, i32 13
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ecore_queue_update_tpa_params*, %struct.ecore_queue_update_tpa_params** %7, align 8
  %15 = getelementptr inbounds %struct.ecore_queue_update_tpa_params, %struct.ecore_queue_update_tpa_params* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %8, align 8
  %18 = getelementptr inbounds %struct.tpa_update_ramrod_data, %struct.tpa_update_ramrod_data* %17, i32 0, i32 12
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ecore_queue_update_tpa_params*, %struct.ecore_queue_update_tpa_params** %7, align 8
  %20 = getelementptr inbounds %struct.ecore_queue_update_tpa_params, %struct.ecore_queue_update_tpa_params* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %8, align 8
  %23 = getelementptr inbounds %struct.tpa_update_ramrod_data, %struct.tpa_update_ramrod_data* %22, i32 0, i32 11
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ecore_queue_update_tpa_params*, %struct.ecore_queue_update_tpa_params** %7, align 8
  %25 = getelementptr inbounds %struct.ecore_queue_update_tpa_params, %struct.ecore_queue_update_tpa_params* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @ECORE_CPU_TO_LE16(i32 %26)
  %28 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %8, align 8
  %29 = getelementptr inbounds %struct.tpa_update_ramrod_data, %struct.tpa_update_ramrod_data* %28, i32 0, i32 10
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ecore_queue_update_tpa_params*, %struct.ecore_queue_update_tpa_params** %7, align 8
  %31 = getelementptr inbounds %struct.ecore_queue_update_tpa_params, %struct.ecore_queue_update_tpa_params* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %8, align 8
  %34 = getelementptr inbounds %struct.tpa_update_ramrod_data, %struct.tpa_update_ramrod_data* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ecore_queue_update_tpa_params*, %struct.ecore_queue_update_tpa_params** %7, align 8
  %36 = getelementptr inbounds %struct.ecore_queue_update_tpa_params, %struct.ecore_queue_update_tpa_params* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %8, align 8
  %39 = getelementptr inbounds %struct.tpa_update_ramrod_data, %struct.tpa_update_ramrod_data* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ecore_queue_update_tpa_params*, %struct.ecore_queue_update_tpa_params** %7, align 8
  %41 = getelementptr inbounds %struct.ecore_queue_update_tpa_params, %struct.ecore_queue_update_tpa_params* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @ECORE_CPU_TO_LE16(i32 %42)
  %44 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %8, align 8
  %45 = getelementptr inbounds %struct.tpa_update_ramrod_data, %struct.tpa_update_ramrod_data* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ecore_queue_update_tpa_params*, %struct.ecore_queue_update_tpa_params** %7, align 8
  %47 = getelementptr inbounds %struct.ecore_queue_update_tpa_params, %struct.ecore_queue_update_tpa_params* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @U64_HI(i32 %48)
  %50 = call i8* @ECORE_CPU_TO_LE32(i32 %49)
  %51 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %8, align 8
  %52 = getelementptr inbounds %struct.tpa_update_ramrod_data, %struct.tpa_update_ramrod_data* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ecore_queue_update_tpa_params*, %struct.ecore_queue_update_tpa_params** %7, align 8
  %54 = getelementptr inbounds %struct.ecore_queue_update_tpa_params, %struct.ecore_queue_update_tpa_params* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @U64_LO(i32 %55)
  %57 = call i8* @ECORE_CPU_TO_LE32(i32 %56)
  %58 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %8, align 8
  %59 = getelementptr inbounds %struct.tpa_update_ramrod_data, %struct.tpa_update_ramrod_data* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ecore_queue_update_tpa_params*, %struct.ecore_queue_update_tpa_params** %7, align 8
  %61 = getelementptr inbounds %struct.ecore_queue_update_tpa_params, %struct.ecore_queue_update_tpa_params* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @ECORE_CPU_TO_LE16(i32 %62)
  %64 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %8, align 8
  %65 = getelementptr inbounds %struct.tpa_update_ramrod_data, %struct.tpa_update_ramrod_data* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.ecore_queue_update_tpa_params*, %struct.ecore_queue_update_tpa_params** %7, align 8
  %67 = getelementptr inbounds %struct.ecore_queue_update_tpa_params, %struct.ecore_queue_update_tpa_params* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @ECORE_CPU_TO_LE16(i32 %68)
  %70 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %8, align 8
  %71 = getelementptr inbounds %struct.tpa_update_ramrod_data, %struct.tpa_update_ramrod_data* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.ecore_queue_update_tpa_params*, %struct.ecore_queue_update_tpa_params** %7, align 8
  %73 = getelementptr inbounds %struct.ecore_queue_update_tpa_params, %struct.ecore_queue_update_tpa_params* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %8, align 8
  %76 = getelementptr inbounds %struct.tpa_update_ramrod_data, %struct.tpa_update_ramrod_data* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ecore_queue_update_tpa_params*, %struct.ecore_queue_update_tpa_params** %7, align 8
  %78 = getelementptr inbounds %struct.ecore_queue_update_tpa_params, %struct.ecore_queue_update_tpa_params* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %8, align 8
  %81 = getelementptr inbounds %struct.tpa_update_ramrod_data, %struct.tpa_update_ramrod_data* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ecore_queue_update_tpa_params*, %struct.ecore_queue_update_tpa_params** %7, align 8
  %83 = getelementptr inbounds %struct.ecore_queue_update_tpa_params, %struct.ecore_queue_update_tpa_params* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %8, align 8
  %86 = getelementptr inbounds %struct.tpa_update_ramrod_data, %struct.tpa_update_ramrod_data* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  ret void
}

declare dso_local i8* @ECORE_CPU_TO_LE16(i32) #1

declare dso_local i8* @ECORE_CPU_TO_LE32(i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
