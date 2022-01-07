; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_mac_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_mac_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpge_softc = type { i32, i64, i32, i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@SGMIIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_xlpge_softc*)* @nlm_xlpge_mac_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_xlpge_mac_set_rx_mode(%struct.nlm_xlpge_softc* %0) #0 {
  %2 = alloca %struct.nlm_xlpge_softc*, align 8
  store %struct.nlm_xlpge_softc* %0, %struct.nlm_xlpge_softc** %2, align 8
  %3 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %4 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @IFF_PROMISC, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %1
  %10 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %11 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SGMIIC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %17 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %20 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %23 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %26 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @nlm_nae_setup_rx_mode_sgmii(i32 %18, i32 %21, i32 %24, i64 %27, i32 1, i32 1, i32 0, i32 1)
  br label %43

29:                                               ; preds = %9
  %30 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %31 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %34 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %37 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %40 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @nlm_nae_setup_rx_mode_xaui(i32 %32, i32 %35, i32 %38, i64 %41, i32 1, i32 1, i32 0, i32 1)
  br label %43

43:                                               ; preds = %29, %15
  br label %79

44:                                               ; preds = %1
  %45 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %46 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SGMIIC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %52 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %55 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %58 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %61 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @nlm_nae_setup_rx_mode_sgmii(i32 %53, i32 %56, i32 %59, i64 %62, i32 1, i32 1, i32 0, i32 0)
  br label %78

64:                                               ; preds = %44
  %65 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %66 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %69 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %72 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %75 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @nlm_nae_setup_rx_mode_xaui(i32 %67, i32 %70, i32 %73, i64 %76, i32 1, i32 1, i32 0, i32 0)
  br label %78

78:                                               ; preds = %64, %50
  br label %79

79:                                               ; preds = %78, %43
  ret void
}

declare dso_local i32 @nlm_nae_setup_rx_mode_sgmii(i32, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @nlm_nae_setup_rx_mode_xaui(i32, i32, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
