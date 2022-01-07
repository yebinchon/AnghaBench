; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_mcast_set_rdata_hdr_e2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_mcast_set_rdata_hdr_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_mcast_ramrod_params = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ecore_raw_obj }
%struct.ecore_raw_obj = type { i32, i64 }
%struct.eth_multicast_rules_ramrod_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ECORE_SWCID_MASK = common dso_local global i32 0, align 4
@ECORE_FILTER_MCAST_PENDING = common dso_local global i32 0, align 4
@ECORE_SWCID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_mcast_ramrod_params*, i32)* @ecore_mcast_set_rdata_hdr_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_mcast_set_rdata_hdr_e2(%struct.bxe_softc* %0, %struct.ecore_mcast_ramrod_params* %1, i32 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_mcast_ramrod_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_raw_obj*, align 8
  %8 = alloca %struct.eth_multicast_rules_ramrod_data*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_mcast_ramrod_params* %1, %struct.ecore_mcast_ramrod_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %5, align 8
  %10 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.ecore_raw_obj* %12, %struct.ecore_raw_obj** %7, align 8
  %13 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %7, align 8
  %14 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.eth_multicast_rules_ramrod_data*
  store %struct.eth_multicast_rules_ramrod_data* %16, %struct.eth_multicast_rules_ramrod_data** %8, align 8
  %17 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %7, align 8
  %18 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ECORE_SWCID_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @ECORE_FILTER_MCAST_PENDING, align 4
  %23 = load i32, i32* @ECORE_SWCID_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %21, %24
  %26 = call i32 @ECORE_CPU_TO_LE32(i32 %25)
  %27 = load %struct.eth_multicast_rules_ramrod_data*, %struct.eth_multicast_rules_ramrod_data** %8, align 8
  %28 = getelementptr inbounds %struct.eth_multicast_rules_ramrod_data, %struct.eth_multicast_rules_ramrod_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.eth_multicast_rules_ramrod_data*, %struct.eth_multicast_rules_ramrod_data** %8, align 8
  %32 = getelementptr inbounds %struct.eth_multicast_rules_ramrod_data, %struct.eth_multicast_rules_ramrod_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  ret void
}

declare dso_local i32 @ECORE_CPU_TO_LE32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
