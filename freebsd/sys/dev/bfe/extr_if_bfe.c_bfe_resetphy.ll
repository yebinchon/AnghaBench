; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_resetphy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_resetphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32 }

@BMCR_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"PHY Reset would not complete.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfe_softc*)* @bfe_resetphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfe_resetphy(%struct.bfe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfe_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.bfe_softc* %0, %struct.bfe_softc** %3, align 8
  %5 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %6 = load i32, i32* @BMCR_RESET, align 4
  %7 = call i32 @bfe_writephy(%struct.bfe_softc* %5, i32 0, i32 %6)
  %8 = call i32 @DELAY(i32 100)
  %9 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %10 = call i32 @bfe_readphy(%struct.bfe_softc* %9, i32 0, i32* %4)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @BMCR_RESET, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %17 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @bfe_writephy(%struct.bfe_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bfe_readphy(%struct.bfe_softc*, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
