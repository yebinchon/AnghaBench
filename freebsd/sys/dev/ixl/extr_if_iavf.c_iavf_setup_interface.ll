; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_setup_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_setup_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { %struct.ixl_vsi }
%struct.ixl_vsi = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ifnet = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.iavf_sc*)* @iavf_setup_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_setup_interface(i32 %0, %struct.iavf_sc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iavf_sc*, align 8
  %5 = alloca %struct.ixl_vsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.iavf_sc* %1, %struct.iavf_sc** %4, align 8
  %8 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %9 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %8, i32 0, i32 0
  store %struct.ixl_vsi* %9, %struct.ixl_vsi** %5, align 8
  %10 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %11 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.ifnet* @iflib_get_ifp(i32 %13)
  store %struct.ifnet* %14, %struct.ifnet** %7, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @INIT_DBG_DEV(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ETHER_HDR_LEN, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i64, i64* @ETHER_CRC_LEN, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %27 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %25, i64* %29, align 8
  %30 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %31 = call i32 @IF_Gbps(i32 40)
  %32 = call i32 @if_initbaudrate(%struct.ifnet* %30, i32 %31)
  %33 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %34 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IFM_ETHER, align 4
  %37 = load i32, i32* @IFM_AUTO, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @ifmedia_add(i32 %35, i32 %38, i32 0, i32* null)
  %40 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %41 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IFM_ETHER, align 4
  %44 = load i32, i32* @IFM_AUTO, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @ifmedia_set(i32 %42, i32 %45)
  ret void
}

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @INIT_DBG_DEV(i32, i8*) #1

declare dso_local i32 @if_initbaudrate(%struct.ifnet*, i32) #1

declare dso_local i32 @IF_Gbps(i32) #1

declare dso_local i32 @ifmedia_add(i32, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
