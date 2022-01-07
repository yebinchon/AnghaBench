; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_rxfilter_ns.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_rxfilter_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@SIS_RXFILT_CTL = common dso_local global i32 0, align 4
@SIS_RXFILTCTL_ENABLE = common dso_local global i32 0, align 4
@NS_RXFILTCTL_ARP = common dso_local global i32 0, align 4
@NS_RXFILTCTL_PERFECT = common dso_local global i32 0, align 4
@NS_RXFILTCTL_MCHASH = common dso_local global i32 0, align 4
@SIS_RXFILTCTL_ALLPHYS = common dso_local global i32 0, align 4
@SIS_RXFILTCTL_BROAD = common dso_local global i32 0, align 4
@SIS_RXFILTCTL_ALLMULTI = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@NS_FILTADDR_FMEM_LO = common dso_local global i32 0, align 4
@SIS_RXFILT_DATA = common dso_local global i32 0, align 4
@sis_write_maddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_softc*)* @sis_rxfilter_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_rxfilter_ns(%struct.sis_softc* %0) #0 {
  %2 = alloca %struct.sis_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sis_softc* %0, %struct.sis_softc** %2, align 8
  %6 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %7 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %6, i32 0, i32 0
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %10 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %11 = call i32 @CSR_READ_4(%struct.sis_softc* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SIS_RXFILTCTL_ENABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %18 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SIS_RXFILTCTL_ENABLE, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @CSR_WRITE_4(%struct.sis_softc* %17, i32 %18, i32 %22)
  %24 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %25 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %26 = call i32 @CSR_READ_4(%struct.sis_softc* %24, i32 %25)
  br label %27

27:                                               ; preds = %16, %1
  %28 = load i32, i32* @NS_RXFILTCTL_ARP, align 4
  %29 = load i32, i32* @NS_RXFILTCTL_PERFECT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @NS_RXFILTCTL_MCHASH, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SIS_RXFILTCTL_ALLPHYS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SIS_RXFILTCTL_BROAD, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SIS_RXFILTCTL_ALLMULTI, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_BROADCAST, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %27
  %49 = load i32, i32* @SIS_RXFILTCTL_BROAD, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %27
  %53 = load i32, i32* @NS_RXFILTCTL_ARP, align 4
  %54 = load i32, i32* @NS_RXFILTCTL_PERFECT, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFF_ALLMULTI, align 4
  %62 = load i32, i32* @IFF_PROMISC, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %52
  %67 = load i32, i32* @SIS_RXFILTCTL_ALLMULTI, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IFF_PROMISC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load i32, i32* @SIS_RXFILTCTL_ALLPHYS, align 4
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %66
  br label %107

81:                                               ; preds = %52
  %82 = load i32, i32* @NS_RXFILTCTL_MCHASH, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %99, %81
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 32
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %90 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %91 = load i32, i32* @NS_FILTADDR_FMEM_LO, align 4
  %92 = load i32, i32* %4, align 4
  %93 = mul nsw i32 %92, 2
  %94 = add nsw i32 %91, %93
  %95 = call i32 @CSR_WRITE_4(%struct.sis_softc* %89, i32 %90, i32 %94)
  %96 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %97 = load i32, i32* @SIS_RXFILT_DATA, align 4
  %98 = call i32 @CSR_WRITE_4(%struct.sis_softc* %96, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %88
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %85

102:                                              ; preds = %85
  %103 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %104 = load i32, i32* @sis_write_maddr, align 4
  %105 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %106 = call i32 @if_foreach_llmaddr(%struct.ifnet* %103, i32 %104, %struct.sis_softc* %105)
  br label %107

107:                                              ; preds = %102, %80
  %108 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %109 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @SIS_RXFILTCTL_ENABLE, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @CSR_WRITE_4(%struct.sis_softc* %108, i32 %109, i32 %112)
  %114 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %115 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %116 = call i32 @CSR_READ_4(%struct.sis_softc* %114, i32 %115)
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.sis_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sis_softc*, i32, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.sis_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
