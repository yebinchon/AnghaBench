; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_outbound.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_outbound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_pcib_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_pcib_softc*, i32, i32, i32, i32, i32)* @fsl_pcib_outbound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_pcib_outbound(%struct.fsl_pcib_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fsl_pcib_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fsl_pcib_softc* %0, %struct.fsl_pcib_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %27 [
    i32 128, label %17
    i32 129, label %22
  ]

17:                                               ; preds = %6
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @ffsll(i32 %18)
  %20 = sub nsw i32 %19, 2
  %21 = or i32 -2147205120, %20
  store i32 %21, i32* %13, align 4
  br label %28

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @ffsll(i32 %23)
  %25 = sub nsw i32 %24, 2
  %26 = or i32 -2146926592, %25
  store i32 %26, i32* %13, align 4
  br label %28

27:                                               ; preds = %6
  store i32 278559, i32* %13, align 4
  br label %28

28:                                               ; preds = %27, %22, %17
  %29 = load i32, i32* %10, align 4
  %30 = ashr i32 %29, 12
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %12, align 4
  %32 = ashr i32 %31, 12
  store i32 %32, i32* %15, align 4
  %33 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %34 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %37 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @REG_POTAR(i32 %39)
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @bus_space_write_4(i32 %35, i32 %38, i32 %40, i32 %41)
  %43 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %44 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %47 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @REG_POTEAR(i32 %49)
  %51 = call i32 @bus_space_write_4(i32 %45, i32 %48, i32 %50, i32 0)
  %52 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %53 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %56 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @REG_POWBAR(i32 %58)
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @bus_space_write_4(i32 %54, i32 %57, i32 %59, i32 %60)
  %62 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %63 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %66 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @REG_POWAR(i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @bus_space_write_4(i32 %64, i32 %67, i32 %69, i32 %70)
  ret void
}

declare dso_local i32 @ffsll(i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @REG_POTAR(i32) #1

declare dso_local i32 @REG_POTEAR(i32) #1

declare dso_local i32 @REG_POWBAR(i32) #1

declare dso_local i32 @REG_POWAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
