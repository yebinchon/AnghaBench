; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_grackle.c_grackle_enable_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_grackle.c_grackle_enable_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grackle_softc = type { i32 }

@GRACKLE_CFG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grackle_softc*, i32, i32, i32, i32)* @grackle_enable_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grackle_enable_config(%struct.grackle_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.grackle_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.grackle_softc* %0, %struct.grackle_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = shl i32 %12, 16
  %14 = load i32, i32* %8, align 4
  %15 = shl i32 %14, 11
  %16 = or i32 %13, %15
  %17 = load i32, i32* %9, align 4
  %18 = shl i32 %17, 8
  %19 = or i32 %16, %18
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %20, 252
  %22 = or i32 %19, %21
  %23 = load i32, i32* @GRACKLE_CFG_ENABLE, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load %struct.grackle_softc*, %struct.grackle_softc** %6, align 8
  %26 = getelementptr inbounds %struct.grackle_softc, %struct.grackle_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @out32rb(i32 %27, i32 %28)
  %30 = load %struct.grackle_softc*, %struct.grackle_softc** %6, align 8
  %31 = getelementptr inbounds %struct.grackle_softc, %struct.grackle_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @in32rb(i32 %32)
  ret i32 1
}

declare dso_local i32 @out32rb(i32, i32) #1

declare dso_local i32 @in32rb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
