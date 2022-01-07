; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_port_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)* }
%struct.mtkswitch_softc.0 = type opaque
%struct.mtkswitch_softc.1 = type opaque

@PCR_PORT_VLAN_SECURE = common dso_local global i32 0, align 4
@PVC_VLAN_ATTR_MASK = common dso_local global i32 0, align 4
@PMCR_CFG_DEFAULT = common dso_local global i32 0, align 4
@PMCR_FORCE_LINK = common dso_local global i32 0, align 4
@PMCR_FORCE_DPX = common dso_local global i32 0, align 4
@PMCR_FORCE_SPD_1000 = common dso_local global i32 0, align 4
@PMCR_FORCE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtkswitch_softc*, i32)* @mtkswitch_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtkswitch_port_init(%struct.mtkswitch_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mtkswitch_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %8, align 8
  %10 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %11 = bitcast %struct.mtkswitch_softc* %10 to %struct.mtkswitch_softc.0*
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @MTKSWITCH_PCR(i32 %12)
  %14 = call i32 %9(%struct.mtkswitch_softc.0* %11, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @PCR_PORT_VLAN_SECURE, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (%struct.mtkswitch_softc.1*, i32, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)** %20, align 8
  %22 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %23 = bitcast %struct.mtkswitch_softc* %22 to %struct.mtkswitch_softc.1*
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @MTKSWITCH_PCR(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 %21(%struct.mtkswitch_softc.1* %23, i32 %25, i32 %26)
  %28 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %30, align 8
  %32 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %33 = bitcast %struct.mtkswitch_softc* %32 to %struct.mtkswitch_softc.0*
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @MTKSWITCH_PVC(i32 %34)
  %36 = call i32 %31(%struct.mtkswitch_softc.0* %33, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @PVC_VLAN_ATTR_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %42 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (%struct.mtkswitch_softc.1*, i32, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)** %43, align 8
  %45 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %46 = bitcast %struct.mtkswitch_softc* %45 to %struct.mtkswitch_softc.1*
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @MTKSWITCH_PVC(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 %44(%struct.mtkswitch_softc.1* %46, i32 %48, i32 %49)
  %51 = load i32, i32* @PMCR_CFG_DEFAULT, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %54 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %2
  %58 = load i32, i32* @PMCR_FORCE_LINK, align 4
  %59 = load i32, i32* @PMCR_FORCE_DPX, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @PMCR_FORCE_SPD_1000, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @PMCR_FORCE_MODE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %57, %2
  %68 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %69 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32 (%struct.mtkswitch_softc.1*, i32, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)** %70, align 8
  %72 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %73 = bitcast %struct.mtkswitch_softc* %72 to %struct.mtkswitch_softc.1*
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @MTKSWITCH_PMCR(i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = call i32 %71(%struct.mtkswitch_softc.1* %73, i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @MTKSWITCH_PCR(i32) #1

declare dso_local i32 @MTKSWITCH_PVC(i32) #1

declare dso_local i32 @MTKSWITCH_PMCR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
