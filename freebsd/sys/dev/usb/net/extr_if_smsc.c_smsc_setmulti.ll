; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_setmulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_setmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.smsc_softc = type { i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"receive all multicast enabled\0A\00", align 1
@SMSC_MAC_CSR_MCPAS = common dso_local global i32 0, align 4
@SMSC_MAC_CSR_HPFILT = common dso_local global i32 0, align 4
@smsc_hash_maddr = common dso_local global i32 0, align 4
@SMSC_MAC_CSR_PRMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"receive select group of macs\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"receive own packets only\0A\00", align 1
@SMSC_HASHH = common dso_local global i32 0, align 4
@SMSC_HASHL = common dso_local global i32 0, align 4
@SMSC_MAC_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @smsc_setmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc_setmulti(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.smsc_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca [2 x i32], align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %7 = call %struct.smsc_softc* @uether_getsc(%struct.usb_ether* %6)
  store %struct.smsc_softc* %7, %struct.smsc_softc** %3, align 8
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %8)
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @SMSC_LOCK_ASSERT(%struct.smsc_softc* %11, i32 %12)
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IFF_ALLMULTI, align 4
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %1
  %23 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %24 = call i32 @smsc_dbg_printf(%struct.smsc_softc* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @SMSC_MAC_CSR_MCPAS, align 4
  %26 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %27 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @SMSC_MAC_CSR_HPFILT, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %33 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %79

36:                                               ; preds = %1
  %37 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %38 = load i32, i32* @smsc_hash_maddr, align 4
  %39 = bitcast [2 x i32]* %5 to i32**
  %40 = call i64 @if_foreach_llmaddr(%struct.ifnet* %37, i32 %38, i32** %39)
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load i32, i32* @SMSC_MAC_CSR_HPFILT, align 4
  %44 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %45 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @SMSC_MAC_CSR_PRMS, align 4
  %49 = load i32, i32* @SMSC_MAC_CSR_MCPAS, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %53 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %65

56:                                               ; preds = %36
  %57 = load i32, i32* @SMSC_MAC_CSR_MCPAS, align 4
  %58 = load i32, i32* @SMSC_MAC_CSR_HPFILT, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %62 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %56, %42
  %66 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %67 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SMSC_MAC_CSR_HPFILT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %74 = call i32 @smsc_dbg_printf(%struct.smsc_softc* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %78

75:                                               ; preds = %65
  %76 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %77 = call i32 @smsc_dbg_printf(%struct.smsc_softc* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %22
  %80 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %81 = load i32, i32* @SMSC_HASHH, align 4
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @smsc_write_reg(%struct.smsc_softc* %80, i32 %81, i32 %83)
  %85 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %86 = load i32, i32* @SMSC_HASHL, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @smsc_write_reg(%struct.smsc_softc* %85, i32 %86, i32 %88)
  %90 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %91 = load i32, i32* @SMSC_MAC_CSR, align 4
  %92 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %93 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @smsc_write_reg(%struct.smsc_softc* %90, i32 %91, i32 %94)
  ret void
}

declare dso_local %struct.smsc_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SMSC_LOCK_ASSERT(%struct.smsc_softc*, i32) #1

declare dso_local i32 @smsc_dbg_printf(%struct.smsc_softc*, i8*) #1

declare dso_local i64 @if_foreach_llmaddr(%struct.ifnet*, i32, i32**) #1

declare dso_local i32 @smsc_write_reg(%struct.smsc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
