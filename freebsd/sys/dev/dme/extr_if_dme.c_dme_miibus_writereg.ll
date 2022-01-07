; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme_softc = type { i32 }

@DME_EPAR = common dso_local global i32 0, align 4
@DME_EPDRL = common dso_local global i32 0, align 4
@DME_EPDRH = common dso_local global i32 0, align 4
@DME_EPCR = common dso_local global i32 0, align 4
@EPCR_EPOS = common dso_local global i32 0, align 4
@EPCR_ERPRW = common dso_local global i32 0, align 4
@DME_TIMEOUT = common dso_local global i32 0, align 4
@EPCR_ERRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @dme_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dme_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dme_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %63

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.dme_softc* @device_get_softc(i32 %16)
  store %struct.dme_softc* %17, %struct.dme_softc** %10, align 8
  %18 = load %struct.dme_softc*, %struct.dme_softc** %10, align 8
  %19 = load i32, i32* @DME_EPAR, align 4
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 %20, 6
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @dme_write_reg(%struct.dme_softc* %18, i32 %19, i32 %23)
  %25 = load %struct.dme_softc*, %struct.dme_softc** %10, align 8
  %26 = load i32, i32* @DME_EPDRL, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 255
  %29 = call i32 @dme_write_reg(%struct.dme_softc* %25, i32 %26, i32 %28)
  %30 = load %struct.dme_softc*, %struct.dme_softc** %10, align 8
  %31 = load i32, i32* @DME_EPDRH, align 4
  %32 = load i32, i32* %9, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = call i32 @dme_write_reg(%struct.dme_softc* %30, i32 %31, i32 %34)
  %36 = load %struct.dme_softc*, %struct.dme_softc** %10, align 8
  %37 = load i32, i32* @DME_EPCR, align 4
  %38 = load i32, i32* @EPCR_EPOS, align 4
  %39 = load i32, i32* @EPCR_ERPRW, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @dme_write_reg(%struct.dme_softc* %36, i32 %37, i32 %40)
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %56, %15
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @DME_TIMEOUT, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load %struct.dme_softc*, %struct.dme_softc** %10, align 8
  %48 = load i32, i32* @DME_EPCR, align 4
  %49 = call i32 @dme_read_reg(%struct.dme_softc* %47, i32 %48)
  %50 = load i32, i32* @EPCR_ERRE, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %59

54:                                               ; preds = %46
  %55 = call i32 @DELAY(i32 1)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %42

59:                                               ; preds = %53, %42
  %60 = load %struct.dme_softc*, %struct.dme_softc** %10, align 8
  %61 = load i32, i32* @DME_EPCR, align 4
  %62 = call i32 @dme_write_reg(%struct.dme_softc* %60, i32 %61, i32 0)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %14
  %64 = load i32, i32* %5, align 4
  ret i32 %64
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
