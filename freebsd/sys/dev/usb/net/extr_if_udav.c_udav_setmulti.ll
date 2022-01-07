; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_setmulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_setmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { %struct.udav_softc* }
%struct.udav_softc = type { i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@UDAV_RCR = common dso_local global i32 0, align 4
@UDAV_RCR_ALL = common dso_local global i32 0, align 4
@UDAV_RCR_PRMSC = common dso_local global i32 0, align 4
@UDAV_MAR = common dso_local global i32 0, align 4
@udav_hash_maddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @udav_setmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udav_setmulti(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.udav_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca [8 x i32], align 16
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %7 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %6, i32 0, i32 0
  %8 = load %struct.udav_softc*, %struct.udav_softc** %7, align 8
  store %struct.udav_softc* %8, %struct.udav_softc** %3, align 8
  %9 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %10 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %9, i32 0, i32 0
  %11 = call %struct.ifnet* @uether_getifp(i32* %10)
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 32, i1 false)
  %13 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @UDAV_LOCK_ASSERT(%struct.udav_softc* %13, i32 %14)
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_ALLMULTI, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_PROMISC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22, %1
  %30 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %31 = load i32, i32* @UDAV_RCR, align 4
  %32 = load i32, i32* @UDAV_RCR_ALL, align 4
  %33 = load i32, i32* @UDAV_RCR_PRMSC, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @UDAV_SETBIT(%struct.udav_softc* %30, i32 %31, i32 %34)
  br label %58

36:                                               ; preds = %22
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %38 = call i32 @memset(i32* %37, i32 0, i32 32)
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, 128
  store i32 %41, i32* %39, align 4
  %42 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %43 = load i32, i32* @UDAV_MAR, align 4
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %45 = call i32 @udav_csr_write(%struct.udav_softc* %42, i32 %43, i32* %44, i32 32)
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = load i32, i32* @udav_hash_maddr, align 4
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %49 = call i32 @if_foreach_llmaddr(%struct.ifnet* %46, i32 %47, i32* %48)
  %50 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %51 = load i32, i32* @UDAV_RCR, align 4
  %52 = load i32, i32* @UDAV_RCR_ALL, align 4
  %53 = call i32 @UDAV_CLRBIT(%struct.udav_softc* %50, i32 %51, i32 %52)
  %54 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %55 = load i32, i32* @UDAV_MAR, align 4
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %57 = call i32 @udav_csr_write(%struct.udav_softc* %54, i32 %55, i32* %56, i32 32)
  br label %58

58:                                               ; preds = %36, %29
  ret void
}

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @UDAV_LOCK_ASSERT(%struct.udav_softc*, i32) #1

declare dso_local i32 @UDAV_SETBIT(%struct.udav_softc*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @udav_csr_write(%struct.udav_softc*, i32, i32*, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #1

declare dso_local i32 @UDAV_CLRBIT(%struct.udav_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
