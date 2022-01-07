; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_setup_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_setup_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xae_softc = type { i32*, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@XAE_FFC = common dso_local global i32 0, align 4
@FFC_PM = common dso_local global i32 0, align 4
@xae_write_maddr = common dso_local global i32 0, align 4
@XAE_UAW0 = common dso_local global i32 0, align 4
@XAE_UAW1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xae_softc*)* @xae_setup_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xae_setup_rxfilter(%struct.xae_softc* %0) #0 {
  %2 = alloca %struct.xae_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.xae_softc* %0, %struct.xae_softc** %2, align 8
  %5 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %6 = call i32 @XAE_ASSERT_LOCKED(%struct.xae_softc* %5)
  %7 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %8 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %7, i32 0, i32 1
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_ALLMULTI, align 4
  %14 = load i32, i32* @IFF_PROMISC, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %20 = load i32, i32* @XAE_FFC, align 4
  %21 = call i32 @READ4(%struct.xae_softc* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @FFC_PM, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %26 = load i32, i32* @XAE_FFC, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @WRITE4(%struct.xae_softc* %25, i32 %26, i32 %27)
  br label %45

29:                                               ; preds = %1
  %30 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %31 = load i32, i32* @XAE_FFC, align 4
  %32 = call i32 @READ4(%struct.xae_softc* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @FFC_PM, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %38 = load i32, i32* @XAE_FFC, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @WRITE4(%struct.xae_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %42 = load i32, i32* @xae_write_maddr, align 4
  %43 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %44 = call i32 @if_foreach_llmaddr(%struct.ifnet* %41, i32 %42, %struct.xae_softc* %43)
  br label %45

45:                                               ; preds = %29, %18
  %46 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %47 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  %51 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %52 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %60 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 16
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %68 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 24
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %76 = load i32, i32* @XAE_UAW0, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @WRITE4(%struct.xae_softc* %75, i32 %76, i32 %77)
  %79 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %80 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %4, align 4
  %84 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %85 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 8
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %93 = load i32, i32* @XAE_UAW1, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @WRITE4(%struct.xae_softc* %92, i32 %93, i32 %94)
  ret void
}

declare dso_local i32 @XAE_ASSERT_LOCKED(%struct.xae_softc*) #1

declare dso_local i32 @READ4(%struct.xae_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.xae_softc*, i32, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.xae_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
