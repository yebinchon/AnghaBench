; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_cfgread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_cfgread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_pcib_softc = type { i32, i32, i32, i64 }

@CONFIG_ACCESS_ENABLE = common dso_local global i32 0, align 4
@REG_CFG_ADDR = common dso_local global i32 0, align 4
@REG_CFG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_pcib_softc*, i32, i32, i32, i32, i32)* @fsl_pcib_cfgread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_pcib_cfgread(%struct.fsl_pcib_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fsl_pcib_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fsl_pcib_softc* %0, %struct.fsl_pcib_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @CONFIG_ACCESS_ENABLE, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 255
  %18 = shl i32 %17, 16
  %19 = load i32, i32* %13, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 31
  %23 = shl i32 %22, 11
  %24 = load i32, i32* %13, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, 7
  %28 = shl i32 %27, 8
  %29 = load i32, i32* %13, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, 252
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %13, align 4
  %35 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %36 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %6
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, 3840
  %42 = shl i32 %41, 16
  %43 = load i32, i32* %13, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %39, %6
  %46 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %47 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %46, i32 0, i32 0
  %48 = call i32 @mtx_lock_spin(i32* %47)
  %49 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %50 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %53 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @REG_CFG_ADDR, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @bus_space_write_4(i32 %51, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %12, align 4
  switch i32 %58, label %94 [
    i32 1, label %59
    i32 2, label %71
    i32 4, label %84
  ]

59:                                               ; preds = %45
  %60 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %61 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %64 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @REG_CFG_DATA, align 4
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, 3
  %69 = add nsw i32 %66, %68
  %70 = call i32 @bus_space_read_1(i32 %62, i32 %65, i32 %69)
  store i32 %70, i32* %14, align 4
  br label %95

71:                                               ; preds = %45
  %72 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %73 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %76 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @REG_CFG_DATA, align 4
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %79, 2
  %81 = add nsw i32 %78, %80
  %82 = call i32 @bus_space_read_2(i32 %74, i32 %77, i32 %81)
  %83 = call i32 @le16toh(i32 %82)
  store i32 %83, i32* %14, align 4
  br label %95

84:                                               ; preds = %45
  %85 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %86 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %89 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @REG_CFG_DATA, align 4
  %92 = call i32 @bus_space_read_4(i32 %87, i32 %90, i32 %91)
  %93 = call i32 @le32toh(i32 %92)
  store i32 %93, i32* %14, align 4
  br label %95

94:                                               ; preds = %45
  store i32 -1, i32* %14, align 4
  br label %95

95:                                               ; preds = %94, %84, %71, %59
  %96 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %7, align 8
  %97 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %96, i32 0, i32 0
  %98 = call i32 @mtx_unlock_spin(i32* %97)
  %99 = load i32, i32* %14, align 4
  ret i32 %99
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @bus_space_read_2(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
