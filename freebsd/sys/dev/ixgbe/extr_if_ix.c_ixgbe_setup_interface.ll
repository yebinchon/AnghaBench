; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_setup_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_setup_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.adapter = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"ixgbe_setup_interface: begin\00", align 1
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ixgbe_setup_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_setup_interface(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.adapter*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ifnet* @iflib_get_ifp(i32 %5)
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.adapter* @iflib_get_softc(i32 %7)
  store %struct.adapter* %8, %struct.adapter** %4, align 8
  %9 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = call i32 @IF_Gbps(i32 10)
  %12 = call i32 @if_setbaudrate(%struct.ifnet* %10, i32 %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ETHER_HDR_LEN, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @ETHER_CRC_LEN, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.adapter*, %struct.adapter** %4, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 3
  store i64 %19, i64* %21, align 8
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 1
  %24 = call i32 @ixgbe_get_supported_physical_layer(i32* %23)
  %25 = load %struct.adapter*, %struct.adapter** %4, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @ixgbe_add_media_types(i32 %27)
  %29 = load %struct.adapter*, %struct.adapter** %4, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IFM_ETHER, align 4
  %33 = load i32, i32* @IFM_AUTO, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @ifmedia_set(i32 %31, i32 %34)
  ret i32 0
}

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i32 @if_setbaudrate(%struct.ifnet*, i32) #1

declare dso_local i32 @IF_Gbps(i32) #1

declare dso_local i32 @ixgbe_get_supported_physical_layer(i32*) #1

declare dso_local i32 @ixgbe_add_media_types(i32) #1

declare dso_local i32 @ifmedia_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
