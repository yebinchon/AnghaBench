; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_set_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_set_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@JME_RXMAC = common dso_local global i32 0, align 4
@RXMAC_BROADCAST = common dso_local global i32 0, align 4
@RXMAC_PROMISC = common dso_local global i32 0, align 4
@RXMAC_MULTICAST = common dso_local global i32 0, align 4
@RXMAC_ALLMULTI = common dso_local global i32 0, align 4
@RXMAC_UNICAST = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@JME_MAR0 = common dso_local global i32 0, align 4
@JME_MAR1 = common dso_local global i32 0, align 4
@jme_hash_maddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*)* @jme_set_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_set_filter(%struct.jme_softc* %0) #0 {
  %2 = alloca %struct.jme_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %2, align 8
  %6 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %7 = call i32 @JME_LOCK_ASSERT(%struct.jme_softc* %6)
  %8 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %9 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %8, i32 0, i32 0
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %12 = load i32, i32* @JME_RXMAC, align 4
  %13 = call i32 @CSR_READ_4(%struct.jme_softc* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @RXMAC_BROADCAST, align 4
  %15 = load i32, i32* @RXMAC_PROMISC, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RXMAC_MULTICAST, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RXMAC_ALLMULTI, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @RXMAC_UNICAST, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_BROADCAST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* @RXMAC_BROADCAST, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %1
  %38 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = load i32, i32* @IFF_ALLMULTI, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %37
  %47 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFF_PROMISC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @RXMAC_PROMISC, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFF_ALLMULTI, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @RXMAC_ALLMULTI, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %70 = load i32, i32* @JME_MAR0, align 4
  %71 = call i32 @CSR_WRITE_4(%struct.jme_softc* %69, i32 %70, i32 -1)
  %72 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %73 = load i32, i32* @JME_MAR1, align 4
  %74 = call i32 @CSR_WRITE_4(%struct.jme_softc* %72, i32 %73, i32 -1)
  %75 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %76 = load i32, i32* @JME_RXMAC, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @CSR_WRITE_4(%struct.jme_softc* %75, i32 %76, i32 %77)
  br label %103

79:                                               ; preds = %37
  %80 = load i32, i32* @RXMAC_MULTICAST, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %84 = call i32 @bzero(i32* %83, i32 8)
  %85 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %86 = load i32, i32* @jme_hash_maddr, align 4
  %87 = bitcast [2 x i32]* %4 to i32**
  %88 = call i32 @if_foreach_llmaddr(%struct.ifnet* %85, i32 %86, i32** %87)
  %89 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %90 = load i32, i32* @JME_MAR0, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @CSR_WRITE_4(%struct.jme_softc* %89, i32 %90, i32 %92)
  %94 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %95 = load i32, i32* @JME_MAR1, align 4
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @CSR_WRITE_4(%struct.jme_softc* %94, i32 %95, i32 %97)
  %99 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %100 = load i32, i32* @JME_RXMAC, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @CSR_WRITE_4(%struct.jme_softc* %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %79, %68
  ret void
}

declare dso_local i32 @JME_LOCK_ASSERT(%struct.jme_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.jme_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jme_softc*, i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
