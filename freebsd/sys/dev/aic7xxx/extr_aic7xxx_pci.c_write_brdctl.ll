; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_write_brdctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_write_brdctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i8, i32 }

@AHC_CHIPID_MASK = common dso_local global i32 0, align 4
@AHC_AIC7895 = common dso_local global i32 0, align 4
@BRDSTB = common dso_local global i32 0, align 4
@BRDCS = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@BRDCTL = common dso_local global i32 0, align 4
@BRDSTB_ULTRA2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, i32)* @write_brdctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_brdctl(%struct.ahc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AHC_CHIPID_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @AHC_AIC7895, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i32, i32* @BRDSTB, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 4
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 66
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* @BRDCS, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %13
  br label %38

25:                                               ; preds = %2
  %26 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AHC_ULTRA2, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @BRDSTB, align 4
  %35 = load i32, i32* @BRDCS, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %32
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %40 = load i32, i32* @BRDCTL, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ahc_outb(%struct.ahc_softc* %39, i32 %40, i32 %41)
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %44 = call i32 @ahc_flush_device_writes(%struct.ahc_softc* %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %49 = load i32, i32* @BRDCTL, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ahc_outb(%struct.ahc_softc* %48, i32 %49, i32 %50)
  %52 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %53 = call i32 @ahc_flush_device_writes(%struct.ahc_softc* %52)
  %54 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AHC_ULTRA2, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %38
  %61 = load i32, i32* @BRDSTB_ULTRA2, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %69

64:                                               ; preds = %38
  %65 = load i32, i32* @BRDSTB, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %60
  %70 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %71 = load i32, i32* @BRDCTL, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @ahc_outb(%struct.ahc_softc* %70, i32 %71, i32 %72)
  %74 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %75 = call i32 @ahc_flush_device_writes(%struct.ahc_softc* %74)
  %76 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %77 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @AHC_ULTRA2, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %88

83:                                               ; preds = %69
  %84 = load i32, i32* @BRDCS, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %5, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %83, %82
  %89 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %90 = load i32, i32* @BRDCTL, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @ahc_outb(%struct.ahc_softc* %89, i32 %90, i32 %91)
  ret void
}

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_flush_device_writes(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
