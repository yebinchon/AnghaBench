; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_setup_rxdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_setup_rxdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_softc = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@DWC_GMAC_ALT_DESC = common dso_local global i64 0, align 8
@DDESC_CNTL_CHAINED = common dso_local global i32 0, align 4
@RX_MAX_PACKET = common dso_local global i32 0, align 4
@DDESC_RDES1_CHAINED = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@DDESC_RDES0_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc_softc*, i32, i64)* @dwc_setup_rxdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_setup_rxdesc(%struct.dwc_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.dwc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dwc_softc* %0, %struct.dwc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = trunc i64 %8 to i32
  %10 = load %struct.dwc_softc*, %struct.dwc_softc** %4, align 8
  %11 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %9, i32* %16, align 8
  %17 = load %struct.dwc_softc*, %struct.dwc_softc** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @next_rxidx(%struct.dwc_softc* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.dwc_softc*, %struct.dwc_softc** %4, align 8
  %21 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = add i64 %22, %25
  %27 = load %struct.dwc_softc*, %struct.dwc_softc** %4, align 8
  %28 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i64 %26, i64* %33, align 8
  %34 = load %struct.dwc_softc*, %struct.dwc_softc** %4, align 8
  %35 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DWC_GMAC_ALT_DESC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %3
  %40 = load i32, i32* @DDESC_CNTL_CHAINED, align 4
  %41 = load i32, i32* @RX_MAX_PACKET, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.dwc_softc*, %struct.dwc_softc** %4, align 8
  %44 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %42, i32* %49, align 4
  br label %61

50:                                               ; preds = %3
  %51 = load i32, i32* @DDESC_RDES1_CHAINED, align 4
  %52 = load i32, i32* @MCLBYTES, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.dwc_softc*, %struct.dwc_softc** %4, align 8
  %55 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %53, i32* %60, align 4
  br label %61

61:                                               ; preds = %50, %39
  %62 = call i32 (...) @wmb()
  %63 = load i32, i32* @DDESC_RDES0_OWN, align 4
  %64 = load %struct.dwc_softc*, %struct.dwc_softc** %4, align 8
  %65 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i32 %63, i32* %70, align 8
  %71 = call i32 (...) @wmb()
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @next_rxidx(%struct.dwc_softc*, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
