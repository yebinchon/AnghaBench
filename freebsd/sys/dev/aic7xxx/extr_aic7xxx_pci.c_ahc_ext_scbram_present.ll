; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_ahc_ext_scbram_present.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_ahc_ext_scbram_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i32 }

@AHC_CHIPID_MASK = common dso_local global i32 0, align 4
@DEVCONFIG = common dso_local global i32 0, align 4
@MPORTMODE = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@DSCOMMAND0 = common dso_local global i32 0, align 4
@RAMPS = common dso_local global i32 0, align 4
@AHC_AIC7895 = common dso_local global i32 0, align 4
@AHC_AIC7895C = common dso_local global i32 0, align 4
@AHC_AIC7870 = common dso_local global i32 0, align 4
@RAMPSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @ahc_ext_scbram_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_ext_scbram_present(%struct.ahc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AHC_CHIPID_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DEVCONFIG, align 4
  %17 = call i32 @aic_pci_read_config(i32 %15, i32 %16, i32 4)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MPORTMODE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AHC_ULTRA2, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %31 = load i32, i32* @DSCOMMAND0, align 4
  %32 = call i32 @ahc_inb(%struct.ahc_softc* %30, i32 %31)
  %33 = load i32, i32* @RAMPS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %5, align 4
  br label %59

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @AHC_AIC7895, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @AHC_AIC7895C, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37
  store i32 0, i32* %5, align 4
  br label %58

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @AHC_AIC7870, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @RAMPSM, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %57

56:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %50
  br label %58

58:                                               ; preds = %57, %45
  br label %59

59:                                               ; preds = %58, %29
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* %2, align 4
  br label %67

66:                                               ; preds = %62, %59
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @aic_pci_read_config(i32, i32, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
