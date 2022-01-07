; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.axge_softc = type { i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@RCR_DROP_CRCERR = common dso_local global i32 0, align 4
@RCR_START = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@RCR_ACPT_BCAST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@RCR_PROMISC = common dso_local global i32 0, align 4
@RCR_ACPT_ALL_MCAST = common dso_local global i32 0, align 4
@AXGE_ACCESS_MAC = common dso_local global i32 0, align 4
@AXGE_RCR = common dso_local global i32 0, align 4
@RCR_ACPT_MCAST = common dso_local global i32 0, align 4
@axge_hash_maddr = common dso_local global i32 0, align 4
@AXGE_MFA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @axge_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axge_rxfilter(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.axge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32], align 16
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %7 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 32, i1 false)
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = call %struct.axge_softc* @uether_getsc(%struct.usb_ether* %8)
  store %struct.axge_softc* %9, %struct.axge_softc** %3, align 8
  %10 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %11 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %10)
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @AXGE_LOCK_ASSERT(%struct.axge_softc* %12, i32 %13)
  %15 = load i32, i32* @RCR_DROP_CRCERR, align 4
  %16 = load i32, i32* @RCR_START, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_BROADCAST, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @RCR_ACPT_BCAST, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_ALLMULTI, align 4
  %33 = load i32, i32* @IFF_PROMISC, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %28
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @RCR_PROMISC, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i32, i32* @RCR_ACPT_ALL_MCAST, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %53 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %54 = load i32, i32* @AXGE_RCR, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @axge_write_cmd_2(%struct.axge_softc* %52, i32 %53, i32 2, i32 %54, i32 %55)
  br label %75

57:                                               ; preds = %28
  %58 = load i32, i32* @RCR_ACPT_MCAST, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %62 = load i32, i32* @axge_hash_maddr, align 4
  %63 = bitcast [8 x i32]* %6 to i32**
  %64 = call i32 @if_foreach_llmaddr(%struct.ifnet* %61, i32 %62, i32** %63)
  %65 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %66 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %67 = load i32, i32* @AXGE_MFA, align 4
  %68 = bitcast [8 x i32]* %6 to i8*
  %69 = call i32 @axge_write_mem(%struct.axge_softc* %65, i32 %66, i32 8, i32 %67, i8* %68, i32 8)
  %70 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %71 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %72 = load i32, i32* @AXGE_RCR, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @axge_write_cmd_2(%struct.axge_softc* %70, i32 %71, i32 2, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %57, %48
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.axge_softc* @uether_getsc(%struct.usb_ether*) #2

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #2

declare dso_local i32 @AXGE_LOCK_ASSERT(%struct.axge_softc*, i32) #2

declare dso_local i32 @axge_write_cmd_2(%struct.axge_softc*, i32, i32, i32, i32) #2

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32**) #2

declare dso_local i32 @axge_write_mem(%struct.axge_softc*, i32, i32, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
