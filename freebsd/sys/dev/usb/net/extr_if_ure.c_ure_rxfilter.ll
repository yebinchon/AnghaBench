; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.ure_softc = type { i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@URE_RCR_APM = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@URE_RCR_AB = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@URE_RCR_AAP = common dso_local global i32 0, align 4
@URE_RCR_AM = common dso_local global i32 0, align 4
@ure_hash_maddr = common dso_local global i32 0, align 4
@URE_PLA_MAR0 = common dso_local global i32 0, align 4
@URE_MCU_TYPE_PLA = common dso_local global i32 0, align 4
@URE_PLA_MAR4 = common dso_local global i32 0, align 4
@URE_PLA_RCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @ure_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ure_rxfilter(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.ure_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = call %struct.ure_softc* @uether_getsc(%struct.usb_ether* %8)
  store %struct.ure_softc* %9, %struct.ure_softc** %3, align 8
  %10 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %11 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %10)
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @URE_LOCK_ASSERT(%struct.ure_softc* %13, i32 %14)
  %16 = load i32, i32* @URE_RCR_APM, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_BROADCAST, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @URE_RCR_AB, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_ALLMULTI, align 4
  %32 = load i32, i32* @IFF_PROMISC, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %27
  %37 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFF_PROMISC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @URE_RCR_AAP, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load i32, i32* @URE_RCR_AM, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 -1, i32* %51, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 -1, i32* %52, align 4
  br label %73

53:                                               ; preds = %27
  %54 = load i32, i32* @URE_RCR_AM, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = load i32, i32* @ure_hash_maddr, align 4
  %59 = bitcast [2 x i32]* %7 to i32**
  %60 = call i32 @if_foreach_llmaddr(%struct.ifnet* %57, i32 %58, i32** %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bswap32(i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bswap32(i32 %65)
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @URE_RCR_AM, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %53, %47
  %74 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %75 = load i32, i32* @URE_PLA_MAR0, align 4
  %76 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ure_write_4(%struct.ure_softc* %74, i32 %75, i32 %76, i32 %78)
  %80 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %81 = load i32, i32* @URE_PLA_MAR4, align 4
  %82 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ure_write_4(%struct.ure_softc* %80, i32 %81, i32 %82, i32 %84)
  %86 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %87 = load i32, i32* @URE_PLA_RCR, align 4
  %88 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @ure_write_4(%struct.ure_softc* %86, i32 %87, i32 %88, i32 %89)
  ret void
}

declare dso_local %struct.ure_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @URE_LOCK_ASSERT(%struct.ure_softc*, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32**) #1

declare dso_local i32 @bswap32(i32) #1

declare dso_local i32 @ure_write_4(%struct.ure_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
