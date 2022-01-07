; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme_softc = type { i32 }

@DME_EPAR = common dso_local global i32 0, align 4
@DME_EPCR = common dso_local global i32 0, align 4
@EPCR_EPOS = common dso_local global i32 0, align 4
@EPCR_ERPRR = common dso_local global i32 0, align 4
@DME_TIMEOUT = common dso_local global i32 0, align 4
@EPCR_ERRE = common dso_local global i32 0, align 4
@DME_EPDRH = common dso_local global i32 0, align 4
@DME_EPDRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @dme_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dme_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dme_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.dme_softc* @device_get_softc(i32 %15)
  store %struct.dme_softc* %16, %struct.dme_softc** %8, align 8
  %17 = load %struct.dme_softc*, %struct.dme_softc** %8, align 8
  %18 = load i32, i32* @DME_EPAR, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %19, 6
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @dme_write_reg(%struct.dme_softc* %17, i32 %18, i32 %22)
  %24 = load %struct.dme_softc*, %struct.dme_softc** %8, align 8
  %25 = load i32, i32* @DME_EPCR, align 4
  %26 = load i32, i32* @EPCR_EPOS, align 4
  %27 = load i32, i32* @EPCR_ERPRR, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @dme_write_reg(%struct.dme_softc* %24, i32 %25, i32 %28)
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %44, %14
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @DME_TIMEOUT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.dme_softc*, %struct.dme_softc** %8, align 8
  %36 = load i32, i32* @DME_EPCR, align 4
  %37 = call i32 @dme_read_reg(%struct.dme_softc* %35, i32 %36)
  %38 = load i32, i32* @EPCR_ERRE, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %47

42:                                               ; preds = %34
  %43 = call i32 @DELAY(i32 1)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %30

47:                                               ; preds = %41, %30
  %48 = load %struct.dme_softc*, %struct.dme_softc** %8, align 8
  %49 = load i32, i32* @DME_EPCR, align 4
  %50 = call i32 @dme_write_reg(%struct.dme_softc* %48, i32 %49, i32 0)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @DME_TIMEOUT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %65

55:                                               ; preds = %47
  %56 = load %struct.dme_softc*, %struct.dme_softc** %8, align 8
  %57 = load i32, i32* @DME_EPDRH, align 4
  %58 = call i32 @dme_read_reg(%struct.dme_softc* %56, i32 %57)
  %59 = shl i32 %58, 8
  %60 = load %struct.dme_softc*, %struct.dme_softc** %8, align 8
  %61 = load i32, i32* @DME_EPDRL, align 4
  %62 = call i32 @dme_read_reg(%struct.dme_softc* %60, i32 %61)
  %63 = or i32 %59, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %55, %54, %13
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.dme_softc* @device_get_softc(i32) #1

declare dso_local i32 @dme_write_reg(%struct.dme_softc*, i32, i32) #1

declare dso_local i32 @dme_read_reg(%struct.dme_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
