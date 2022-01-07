; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_sp_vport_update_sge_tpa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_sp_vport_update_sge_tpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport_update_ramrod_data = type { %struct.TYPE_2__, %struct.eth_vport_tpa_param }
%struct.TYPE_2__ = type { i64, i64 }
%struct.eth_vport_tpa_param = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_sge_tpa_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vport_update_ramrod_data*, %struct.ecore_sge_tpa_params*)* @ecore_sp_vport_update_sge_tpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_sp_vport_update_sge_tpa(%struct.vport_update_ramrod_data* %0, %struct.ecore_sge_tpa_params* %1) #0 {
  %3 = alloca %struct.vport_update_ramrod_data*, align 8
  %4 = alloca %struct.ecore_sge_tpa_params*, align 8
  %5 = alloca %struct.eth_vport_tpa_param*, align 8
  %6 = alloca i32, align 4
  store %struct.vport_update_ramrod_data* %0, %struct.vport_update_ramrod_data** %3, align 8
  store %struct.ecore_sge_tpa_params* %1, %struct.ecore_sge_tpa_params** %4, align 8
  %7 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %4, align 8
  %8 = icmp ne %struct.ecore_sge_tpa_params* %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %3, align 8
  %11 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %3, align 8
  %14 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %3, align 8
  %17 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  br label %100

19:                                               ; preds = %2
  %20 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %4, align 8
  %21 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %20, i32 0, i32 13
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %3, align 8
  %24 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i64 %22, i64* %25, align 8
  %26 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %3, align 8
  %27 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %26, i32 0, i32 1
  store %struct.eth_vport_tpa_param* %27, %struct.eth_vport_tpa_param** %5, align 8
  %28 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %4, align 8
  %29 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %5, align 8
  %32 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %31, i32 0, i32 11
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %4, align 8
  %34 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %5, align 8
  %37 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %4, align 8
  %39 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %5, align 8
  %42 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %4, align 8
  %44 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %5, align 8
  %47 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %4, align 8
  %49 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %48, i32 0, i32 8
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %3, align 8
  %52 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %4, align 8
  %55 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %5, align 8
  %58 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %4, align 8
  %60 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %5, align 8
  %63 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %4, align 8
  %65 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %5, align 8
  %68 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %4, align 8
  %70 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %5, align 8
  %73 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %4, align 8
  %75 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %5, align 8
  %78 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %4, align 8
  %80 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i8* @OSAL_CPU_TO_LE16(i32 %82)
  %84 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %5, align 8
  %85 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %4, align 8
  %87 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i8* @OSAL_CPU_TO_LE16(i32 %89)
  %91 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %5, align 8
  %92 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %4, align 8
  %94 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i8* @OSAL_CPU_TO_LE16(i32 %96)
  %98 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %5, align 8
  %99 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %19, %9
  ret void
}

declare dso_local i8* @OSAL_CPU_TO_LE16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
