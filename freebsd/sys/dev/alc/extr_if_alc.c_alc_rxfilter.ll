; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@ALC_MAC_CFG = common dso_local global i32 0, align 4
@MAC_CFG_ALLMULTI = common dso_local global i32 0, align 4
@MAC_CFG_BCAST = common dso_local global i32 0, align 4
@MAC_CFG_PROMISC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@alc_hash_maddr = common dso_local global i32 0, align 4
@ALC_MAR0 = common dso_local global i32 0, align 4
@ALC_MAR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_rxfilter(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %6 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %7 = call i32 @ALC_LOCK_ASSERT(%struct.alc_softc* %6)
  %8 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %8, i32 0, i32 0
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %12 = call i32 @bzero(i32* %11, i32 8)
  %13 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %14 = load i32, i32* @ALC_MAC_CFG, align 4
  %15 = call i32 @CSR_READ_4(%struct.alc_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @MAC_CFG_ALLMULTI, align 4
  %17 = load i32, i32* @MAC_CFG_BCAST, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MAC_CFG_PROMISC, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_BROADCAST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32, i32* @MAC_CFG_BCAST, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %1
  %35 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_PROMISC, align 4
  %39 = load i32, i32* @IFF_ALLMULTI, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %34
  %44 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFF_PROMISC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @MAC_CFG_PROMISC, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_ALLMULTI, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @MAC_CFG_ALLMULTI, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %61, %54
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 -1, i32* %66, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 -1, i32* %67, align 4
  br label %73

68:                                               ; preds = %34
  %69 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %70 = load i32, i32* @alc_hash_maddr, align 4
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %72 = call i32 @if_foreach_llmaddr(%struct.ifnet* %69, i32 %70, i32* %71)
  br label %73

73:                                               ; preds = %68, %65
  %74 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %75 = load i32, i32* @ALC_MAR0, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @CSR_WRITE_4(%struct.alc_softc* %74, i32 %75, i32 %77)
  %79 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %80 = load i32, i32* @ALC_MAR1, align 4
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @CSR_WRITE_4(%struct.alc_softc* %79, i32 %80, i32 %82)
  %84 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %85 = load i32, i32* @ALC_MAC_CFG, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @CSR_WRITE_4(%struct.alc_softc* %84, i32 %85, i32 %86)
  ret void
}

declare dso_local i32 @ALC_LOCK_ASSERT(%struct.alc_softc*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
