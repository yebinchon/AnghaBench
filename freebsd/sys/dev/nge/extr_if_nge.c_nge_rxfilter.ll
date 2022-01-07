; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nge_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@NGE_RXFILT_CTL = common dso_local global i32 0, align 4
@NGE_RXFILTCTL_ENABLE = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@NGE_RXFILTCTL_ALLMULTI = common dso_local global i32 0, align 4
@NGE_RXFILTCTL_ALLPHYS = common dso_local global i32 0, align 4
@NGE_RXFILTCTL_BROAD = common dso_local global i32 0, align 4
@NGE_RXFILTCTL_MCHASH = common dso_local global i32 0, align 4
@NGE_RXFILTCTL_UCHASH = common dso_local global i32 0, align 4
@NGE_RXFILTCTL_ARP = common dso_local global i32 0, align 4
@NGE_RXFILTCTL_PERFECT = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@NGE_MCAST_FILTER_LEN = common dso_local global i32 0, align 4
@NGE_FILTADDR_MCAST_LO = common dso_local global i32 0, align 4
@NGE_RXFILT_DATA = common dso_local global i32 0, align 4
@nge_write_maddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nge_softc*)* @nge_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nge_rxfilter(%struct.nge_softc* %0) #0 {
  %2 = alloca %struct.nge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nge_softc* %0, %struct.nge_softc** %2, align 8
  %6 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %7 = call i32 @NGE_LOCK_ASSERT(%struct.nge_softc* %6)
  %8 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %8, i32 0, i32 0
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %12 = load i32, i32* @NGE_RXFILT_CTL, align 4
  %13 = call i32 @CSR_READ_4(%struct.nge_softc* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @NGE_RXFILTCTL_ENABLE, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %19 = load i32, i32* @NGE_RXFILT_CTL, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @CSR_WRITE_4(%struct.nge_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %23 = load i32, i32* @NGE_RXFILT_CTL, align 4
  %24 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %25 = call i32 @CSR_BARRIER_4(%struct.nge_softc* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @NGE_RXFILTCTL_ALLMULTI, align 4
  %27 = load i32, i32* @NGE_RXFILTCTL_ALLPHYS, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @NGE_RXFILTCTL_BROAD, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @NGE_RXFILTCTL_MCHASH, align 4
  %37 = load i32, i32* @NGE_RXFILTCTL_UCHASH, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @NGE_RXFILTCTL_ARP, align 4
  %43 = load i32, i32* @NGE_RXFILTCTL_PERFECT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFF_BROADCAST, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %1
  %54 = load i32, i32* @NGE_RXFILTCTL_BROAD, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %1
  %58 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFF_PROMISC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFF_ALLMULTI, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %64, %57
  %72 = load i32, i32* @NGE_RXFILTCTL_ALLMULTI, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IFF_PROMISC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i32, i32* @NGE_RXFILTCTL_ALLPHYS, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %71
  br label %112

86:                                               ; preds = %64
  %87 = load i32, i32* @NGE_RXFILTCTL_MCHASH, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %104, %86
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @NGE_MCAST_FILTER_LEN, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %96 = load i32, i32* @NGE_RXFILT_CTL, align 4
  %97 = load i32, i32* @NGE_FILTADDR_MCAST_LO, align 4
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %97, %98
  %100 = call i32 @CSR_WRITE_4(%struct.nge_softc* %95, i32 %96, i32 %99)
  %101 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %102 = load i32, i32* @NGE_RXFILT_DATA, align 4
  %103 = call i32 @CSR_WRITE_4(%struct.nge_softc* %101, i32 %102, i32 0)
  br label %104

104:                                              ; preds = %94
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 2
  store i32 %106, i32* %4, align 4
  br label %90

107:                                              ; preds = %90
  %108 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %109 = load i32, i32* @nge_write_maddr, align 4
  %110 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %111 = call i32 @if_foreach_llmaddr(%struct.ifnet* %108, i32 %109, %struct.nge_softc* %110)
  br label %112

112:                                              ; preds = %107, %85
  %113 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %114 = load i32, i32* @NGE_RXFILT_CTL, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @CSR_WRITE_4(%struct.nge_softc* %113, i32 %114, i32 %115)
  %117 = load i32, i32* @NGE_RXFILTCTL_ENABLE, align 4
  %118 = load i32, i32* %5, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %5, align 4
  %120 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %121 = load i32, i32* @NGE_RXFILT_CTL, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @CSR_WRITE_4(%struct.nge_softc* %120, i32 %121, i32 %122)
  %124 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %125 = load i32, i32* @NGE_RXFILT_CTL, align 4
  %126 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %127 = call i32 @CSR_BARRIER_4(%struct.nge_softc* %124, i32 %125, i32 %126)
  ret void
}

declare dso_local i32 @NGE_LOCK_ASSERT(%struct.nge_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.nge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.nge_softc*, i32, i32) #1

declare dso_local i32 @CSR_BARRIER_4(%struct.nge_softc*, i32, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.nge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
