; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_uc_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_uc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ecore_vlan_mac_obj }
%struct.ecore_vlan_mac_obj = type { i32 }
%struct.bxe_set_addr_ctx = type { i64, i32, i32, i32, %struct.bxe_softc* }

@ECORE_UC_LIST_MAC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to schedule delete of all ETH MACs (%d)\0A\00", align 1
@bxe_set_addr = common dso_local global i32 0, align 4
@RAMROD_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_set_uc_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_set_uc_list(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %6 = alloca %struct.bxe_set_addr_ctx, align 8
  %7 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.ecore_vlan_mac_obj* %14, %struct.ecore_vlan_mac_obj** %5, align 8
  %15 = bitcast %struct.bxe_set_addr_ctx* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = getelementptr inbounds %struct.bxe_set_addr_ctx, %struct.bxe_set_addr_ctx* %6, i32 0, i32 0
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %18 = ptrtoint %struct.bxe_softc* %17 to i64
  store i64 %18, i64* %16, align 8
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %20 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %5, align 8
  %21 = load i32, i32* @ECORE_UC_LIST_MAC, align 4
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i32 @bxe_del_all_macs(%struct.bxe_softc* %19, %struct.ecore_vlan_mac_obj* %20, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @BLOGE(%struct.bxe_softc* %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %52

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @bxe_set_addr, align 4
  %34 = call i32 @if_foreach_lladdr(i32 %32, i32 %33, %struct.bxe_set_addr_ctx* %6)
  %35 = getelementptr inbounds %struct.bxe_set_addr_ctx, %struct.bxe_set_addr_ctx* %6, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.bxe_set_addr_ctx, %struct.bxe_set_addr_ctx* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %2, align 4
  br label %52

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.bxe_set_addr_ctx, %struct.bxe_set_addr_ctx* %6, i32 0, i32 1
  %44 = load i32, i32* @RAMROD_CONT, align 4
  %45 = call i32 @bit_set(i32* %43, i32 %44)
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %47 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %5, align 8
  %48 = load i32, i32* @FALSE, align 4
  %49 = load i32, i32* @ECORE_UC_LIST_MAC, align 4
  %50 = getelementptr inbounds %struct.bxe_set_addr_ctx, %struct.bxe_set_addr_ctx* %6, i32 0, i32 1
  %51 = call i32 @bxe_set_mac_one(%struct.bxe_softc* %46, i32* null, %struct.ecore_vlan_mac_obj* %47, i32 %48, i32 %49, i32* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %42, %38, %26
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bxe_del_all_macs(%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, i32, i32) #2

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32) #2

declare dso_local i32 @if_foreach_lladdr(i32, i32, %struct.bxe_set_addr_ctx*) #2

declare dso_local i32 @bit_set(i32*, i32) #2

declare dso_local i32 @bxe_set_mac_one(%struct.bxe_softc*, i32*, %struct.ecore_vlan_mac_obj*, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
