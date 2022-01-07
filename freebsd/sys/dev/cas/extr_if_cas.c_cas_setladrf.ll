; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_setladrf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_setladrf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAS_MAC_RX_CONF_HFILTER = common dso_local global i32 0, align 4
@CAS_MAC_RX_CONF_EN = common dso_local global i32 0, align 4
@CAS_MAC_RX_CONF = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot disable RX MAC or hash filter\0A\00", align 1
@CAS_MAC_RX_CONF_PROMISC = common dso_local global i32 0, align 4
@CAS_MAC_RX_CONF_PGRP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@cas_hash_maddr = common dso_local global i32 0, align 4
@CAS_MAC_HASH0 = common dso_local global i32 0, align 4
@CAS_MAC_HASH1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas_softc*)* @cas_setladrf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_setladrf(%struct.cas_softc* %0) #0 {
  %2 = alloca %struct.cas_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.cas_softc* %0, %struct.cas_softc** %2, align 8
  %7 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %8 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %7, i32 0, i32 2
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @CAS_LOCK_ASSERT(%struct.cas_softc* %10, i32 %11)
  %13 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %14 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CAS_MAC_RX_CONF_HFILTER, align 4
  %17 = load i32, i32* @CAS_MAC_RX_CONF_EN, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %22 = load i32, i32* @CAS_MAC_RX_CONF, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @CAS_WRITE_4(%struct.cas_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %26 = load i32, i32* @CAS_MAC_RX_CONF, align 4
  %27 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %28 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @CAS_BARRIER(%struct.cas_softc* %25, i32 %26, i32 4, i32 %29)
  %31 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %32 = load i32, i32* @CAS_MAC_RX_CONF, align 4
  %33 = load i32, i32* @CAS_MAC_RX_CONF_HFILTER, align 4
  %34 = load i32, i32* @CAS_MAC_RX_CONF_EN, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @cas_bitwait(%struct.cas_softc* %31, i32 %32, i32 %35, i32 0)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %1
  %39 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %40 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %1
  %44 = load i32, i32* @CAS_MAC_RX_CONF_PROMISC, align 4
  %45 = load i32, i32* @CAS_MAC_RX_CONF_PGRP, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IFF_PROMISC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load i32, i32* @CAS_MAC_RX_CONF_PROMISC, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %102

60:                                               ; preds = %43
  %61 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IFF_ALLMULTI, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @CAS_MAC_RX_CONF_PGRP, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %102

71:                                               ; preds = %60
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %73 = call i32 @memset(i32* %72, i32 0, i32 64)
  %74 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %75 = load i32, i32* @cas_hash_maddr, align 4
  %76 = bitcast [16 x i32]* %5 to i32**
  %77 = call i32 @if_foreach_llmaddr(%struct.ifnet* %74, i32 %75, i32** %76)
  %78 = load i32, i32* @CAS_MAC_RX_CONF_HFILTER, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %98, %71
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 16
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  %85 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %86 = load i32, i32* @CAS_MAC_HASH0, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @CAS_MAC_HASH1, align 4
  %89 = load i32, i32* @CAS_MAC_HASH0, align 4
  %90 = sub nsw i32 %88, %89
  %91 = mul nsw i32 %87, %90
  %92 = add nsw i32 %86, %91
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @CAS_WRITE_4(%struct.cas_softc* %85, i32 %92, i32 %96)
  br label %98

98:                                               ; preds = %84
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %81

101:                                              ; preds = %81
  br label %102

102:                                              ; preds = %101, %67, %56
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %105 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %107 = load i32, i32* @CAS_MAC_RX_CONF, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @CAS_MAC_RX_CONF_EN, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @CAS_WRITE_4(%struct.cas_softc* %106, i32 %107, i32 %110)
  ret void
}

declare dso_local i32 @CAS_LOCK_ASSERT(%struct.cas_softc*, i32) #1

declare dso_local i32 @CAS_WRITE_4(%struct.cas_softc*, i32, i32) #1

declare dso_local i32 @CAS_BARRIER(%struct.cas_softc*, i32, i32, i32) #1

declare dso_local i32 @cas_bitwait(%struct.cas_softc*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
