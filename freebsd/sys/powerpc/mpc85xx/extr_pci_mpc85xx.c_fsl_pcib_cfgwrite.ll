; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_cfgwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_cfgwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_pcib_softc = type { i32, i32, i32, i64 }

@CONFIG_ACCESS_ENABLE = common dso_local global i32 0, align 4
@REG_CFG_ADDR = common dso_local global i32 0, align 4
@REG_CFG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_pcib_softc*, i32, i32, i32, i32, i32, i32)* @fsl_pcib_cfgwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_pcib_cfgwrite(%struct.fsl_pcib_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.fsl_pcib_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fsl_pcib_softc* %0, %struct.fsl_pcib_softc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* @CONFIG_ACCESS_ENABLE, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* %9, align 4
  %18 = and i32 %17, 255
  %19 = shl i32 %18, 16
  %20 = load i32, i32* %15, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, 31
  %24 = shl i32 %23, 11
  %25 = load i32, i32* %15, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %27, 7
  %29 = shl i32 %28, 8
  %30 = load i32, i32* %15, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %12, align 4
  %33 = and i32 %32, 252
  %34 = load i32, i32* %15, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %15, align 4
  %36 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %8, align 8
  %37 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %7
  %41 = load i32, i32* %12, align 4
  %42 = and i32 %41, 3840
  %43 = shl i32 %42, 16
  %44 = load i32, i32* %15, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %15, align 4
  br label %46

46:                                               ; preds = %40, %7
  %47 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %8, align 8
  %48 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %47, i32 0, i32 0
  %49 = call i32 @mtx_lock_spin(i32* %48)
  %50 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %8, align 8
  %51 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %8, align 8
  %54 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @REG_CFG_ADDR, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @bus_space_write_4(i32 %52, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %14, align 4
  switch i32 %59, label %98 [
    i32 1, label %60
    i32 2, label %73
    i32 4, label %87
  ]

60:                                               ; preds = %46
  %61 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %8, align 8
  %62 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %8, align 8
  %65 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @REG_CFG_DATA, align 4
  %68 = load i32, i32* %12, align 4
  %69 = and i32 %68, 3
  %70 = add nsw i32 %67, %69
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @bus_space_write_1(i32 %63, i32 %66, i32 %70, i32 %71)
  br label %98

73:                                               ; preds = %46
  %74 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %8, align 8
  %75 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %8, align 8
  %78 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @REG_CFG_DATA, align 4
  %81 = load i32, i32* %12, align 4
  %82 = and i32 %81, 2
  %83 = add nsw i32 %80, %82
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @htole16(i32 %84)
  %86 = call i32 @bus_space_write_2(i32 %76, i32 %79, i32 %83, i32 %85)
  br label %98

87:                                               ; preds = %46
  %88 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %8, align 8
  %89 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %8, align 8
  %92 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @REG_CFG_DATA, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @htole32(i32 %95)
  %97 = call i32 @bus_space_write_4(i32 %90, i32 %93, i32 %94, i32 %96)
  br label %98

98:                                               ; preds = %46, %87, %73, %60
  %99 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %8, align 8
  %100 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %99, i32 0, i32 0
  %101 = call i32 @mtx_unlock_spin(i32* %100)
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_write_2(i32, i32, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
