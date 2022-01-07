; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rgephy.c_rgephy_load_dspcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rgephy.c_rgephy_load_dspcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i64, i64 }

@MII_MODEL_REALTEK_RTL8251 = common dso_local global i64 0, align 8
@RGEPHY_8211B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @rgephy_load_dspcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgephy_load_dspcode(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %4 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %5 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MII_MODEL_REALTEK_RTL8251, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %11 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RGEPHY_8211B, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  br label %110

16:                                               ; preds = %9
  %17 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %18 = call i32 @PHY_WRITE(%struct.mii_softc* %17, i32 31, i32 1)
  %19 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %20 = call i32 @PHY_WRITE(%struct.mii_softc* %19, i32 21, i32 4096)
  %21 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %22 = call i32 @PHY_WRITE(%struct.mii_softc* %21, i32 24, i32 26055)
  %23 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %24 = call i32 @PHY_CLRBIT(%struct.mii_softc* %23, i32 4, i32 2048)
  %25 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %26 = call i32 @PHY_READ(%struct.mii_softc* %25, i32 4)
  %27 = and i32 %26, 4095
  store i32 %27, i32* %3, align 4
  %28 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @PHY_WRITE(%struct.mii_softc* %28, i32 4, i32 %29)
  %31 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %32 = call i32 @PHY_WRITE(%struct.mii_softc* %31, i32 3, i32 161)
  %33 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %34 = call i32 @PHY_WRITE(%struct.mii_softc* %33, i32 2, i32 8)
  %35 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %36 = call i32 @PHY_WRITE(%struct.mii_softc* %35, i32 1, i32 4128)
  %37 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %38 = call i32 @PHY_WRITE(%struct.mii_softc* %37, i32 0, i32 4096)
  %39 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %40 = call i32 @PHY_SETBIT(%struct.mii_softc* %39, i32 4, i32 2048)
  %41 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %42 = call i32 @PHY_CLRBIT(%struct.mii_softc* %41, i32 4, i32 2048)
  %43 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %44 = call i32 @PHY_READ(%struct.mii_softc* %43, i32 4)
  %45 = and i32 %44, 4095
  %46 = or i32 %45, 28672
  store i32 %46, i32* %3, align 4
  %47 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @PHY_WRITE(%struct.mii_softc* %47, i32 4, i32 %48)
  %50 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %51 = call i32 @PHY_WRITE(%struct.mii_softc* %50, i32 3, i32 65345)
  %52 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %53 = call i32 @PHY_WRITE(%struct.mii_softc* %52, i32 2, i32 56928)
  %54 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %55 = call i32 @PHY_WRITE(%struct.mii_softc* %54, i32 1, i32 320)
  %56 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %57 = call i32 @PHY_WRITE(%struct.mii_softc* %56, i32 0, i32 119)
  %58 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %59 = call i32 @PHY_READ(%struct.mii_softc* %58, i32 4)
  %60 = and i32 %59, 4095
  %61 = or i32 %60, 40960
  store i32 %61, i32* %3, align 4
  %62 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @PHY_WRITE(%struct.mii_softc* %62, i32 4, i32 %63)
  %65 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %66 = call i32 @PHY_WRITE(%struct.mii_softc* %65, i32 3, i32 57089)
  %67 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %68 = call i32 @PHY_WRITE(%struct.mii_softc* %67, i32 2, i32 57120)
  %69 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %70 = call i32 @PHY_WRITE(%struct.mii_softc* %69, i32 1, i32 65429)
  %71 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %72 = call i32 @PHY_WRITE(%struct.mii_softc* %71, i32 0, i32 64000)
  %73 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %74 = call i32 @PHY_READ(%struct.mii_softc* %73, i32 4)
  %75 = and i32 %74, 4095
  %76 = or i32 %75, 45056
  store i32 %76, i32* %3, align 4
  %77 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @PHY_WRITE(%struct.mii_softc* %77, i32 4, i32 %78)
  %80 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %81 = call i32 @PHY_WRITE(%struct.mii_softc* %80, i32 3, i32 65345)
  %82 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %83 = call i32 @PHY_WRITE(%struct.mii_softc* %82, i32 2, i32 56864)
  %84 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %85 = call i32 @PHY_WRITE(%struct.mii_softc* %84, i32 1, i32 320)
  %86 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %87 = call i32 @PHY_WRITE(%struct.mii_softc* %86, i32 0, i32 187)
  %88 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %89 = call i32 @PHY_READ(%struct.mii_softc* %88, i32 4)
  %90 = and i32 %89, 4095
  %91 = or i32 %90, 61440
  store i32 %91, i32* %3, align 4
  %92 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @PHY_WRITE(%struct.mii_softc* %92, i32 4, i32 %93)
  %95 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %96 = call i32 @PHY_WRITE(%struct.mii_softc* %95, i32 3, i32 57089)
  %97 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %98 = call i32 @PHY_WRITE(%struct.mii_softc* %97, i32 2, i32 57120)
  %99 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %100 = call i32 @PHY_WRITE(%struct.mii_softc* %99, i32 1, i32 65429)
  %101 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %102 = call i32 @PHY_WRITE(%struct.mii_softc* %101, i32 0, i32 48896)
  %103 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %104 = call i32 @PHY_SETBIT(%struct.mii_softc* %103, i32 4, i32 2048)
  %105 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %106 = call i32 @PHY_CLRBIT(%struct.mii_softc* %105, i32 4, i32 2048)
  %107 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %108 = call i32 @PHY_WRITE(%struct.mii_softc* %107, i32 31, i32 0)
  %109 = call i32 @DELAY(i32 40)
  br label %110

110:                                              ; preds = %16, %15
  ret void
}

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_CLRBIT(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_SETBIT(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
