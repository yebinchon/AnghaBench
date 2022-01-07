; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_rxq_parse_gsi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_rxq_parse_gsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.core_rx_cqe_union = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ecore_ll2_comp_rx_data = type { i8*, i8*, %struct.TYPE_7__, i8*, i8*, i8*, %struct.TYPE_6__, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.core_rx_cqe_union*, %struct.ecore_ll2_comp_rx_data*)* @ecore_ll2_rxq_parse_gsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_ll2_rxq_parse_gsi(%union.core_rx_cqe_union* %0, %struct.ecore_ll2_comp_rx_data* %1) #0 {
  %3 = alloca %union.core_rx_cqe_union*, align 8
  %4 = alloca %struct.ecore_ll2_comp_rx_data*, align 8
  store %union.core_rx_cqe_union* %0, %union.core_rx_cqe_union** %3, align 8
  store %struct.ecore_ll2_comp_rx_data* %1, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %5 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %3, align 8
  %6 = bitcast %union.core_rx_cqe_union* %5 to %struct.TYPE_8__*
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @OSAL_LE16_TO_CPU(i32 %9)
  %11 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %12 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %11, i32 0, i32 7
  store i8* %10, i8** %12, align 8
  %13 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %3, align 8
  %14 = bitcast %union.core_rx_cqe_union* %13 to %struct.TYPE_8__*
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @OSAL_LE16_TO_CPU(i32 %16)
  %18 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %19 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  %21 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %3, align 8
  %22 = bitcast %union.core_rx_cqe_union* %21 to %struct.TYPE_8__*
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @OSAL_LE16_TO_CPU(i32 %24)
  %26 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %27 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %3, align 8
  %29 = bitcast %union.core_rx_cqe_union* %28 to %struct.TYPE_8__*
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @OSAL_LE32_TO_CPU(i32 %31)
  %33 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %34 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %3, align 8
  %36 = bitcast %union.core_rx_cqe_union* %35 to %struct.TYPE_8__*
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @OSAL_LE16_TO_CPU(i32 %38)
  %40 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %41 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %3, align 8
  %43 = bitcast %union.core_rx_cqe_union* %42 to %struct.TYPE_8__*
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %47 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %3, align 8
  %50 = bitcast %union.core_rx_cqe_union* %49 to %struct.TYPE_8__*
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @OSAL_LE16_TO_CPU(i32 %52)
  %54 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %55 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %3, align 8
  %57 = bitcast %union.core_rx_cqe_union* %56 to %struct.TYPE_8__*
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @OSAL_LE32_TO_CPU(i32 %59)
  %61 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %62 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  ret void
}

declare dso_local i8* @OSAL_LE16_TO_CPU(i32) #1

declare dso_local i8* @OSAL_LE32_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
