; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_rxq_parse_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_rxq_parse_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.core_rx_cqe_union = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ecore_ll2_comp_rx_data = type { %struct.TYPE_11__, i8*, i8*, i8*, %struct.TYPE_9__, i8*, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.core_rx_cqe_union*, %struct.ecore_ll2_comp_rx_data*)* @ecore_ll2_rxq_parse_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_ll2_rxq_parse_reg(%union.core_rx_cqe_union* %0, %struct.ecore_ll2_comp_rx_data* %1) #0 {
  %3 = alloca %union.core_rx_cqe_union*, align 8
  %4 = alloca %struct.ecore_ll2_comp_rx_data*, align 8
  store %union.core_rx_cqe_union* %0, %union.core_rx_cqe_union** %3, align 8
  store %struct.ecore_ll2_comp_rx_data* %1, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %5 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %3, align 8
  %6 = bitcast %union.core_rx_cqe_union* %5 to %struct.TYPE_12__*
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @OSAL_LE16_TO_CPU(i32 %9)
  %11 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %12 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %11, i32 0, i32 6
  store i8* %10, i8** %12, align 8
  %13 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %3, align 8
  %14 = bitcast %union.core_rx_cqe_union* %13 to %struct.TYPE_12__*
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @OSAL_LE16_TO_CPU(i32 %17)
  %19 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %20 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %3, align 8
  %22 = bitcast %union.core_rx_cqe_union* %21 to %struct.TYPE_12__*
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @OSAL_LE16_TO_CPU(i32 %24)
  %26 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %27 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %3, align 8
  %30 = bitcast %union.core_rx_cqe_union* %29 to %struct.TYPE_12__*
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @OSAL_LE16_TO_CPU(i32 %32)
  %34 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %35 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %3, align 8
  %37 = bitcast %union.core_rx_cqe_union* %36 to %struct.TYPE_12__*
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @OSAL_LE32_TO_CPU(i32 %42)
  %44 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %45 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %3, align 8
  %47 = bitcast %union.core_rx_cqe_union* %46 to %struct.TYPE_12__*
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @OSAL_LE32_TO_CPU(i32 %52)
  %54 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %55 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %3, align 8
  %57 = bitcast %union.core_rx_cqe_union* %56 to %struct.TYPE_12__*
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %61 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
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
