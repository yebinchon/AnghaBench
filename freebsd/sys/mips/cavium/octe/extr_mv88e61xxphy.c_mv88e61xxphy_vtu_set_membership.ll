; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_mv88e61xxphy.c_mv88e61xxphy_vtu_set_membership.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_mv88e61xxphy.c_mv88e61xxphy_vtu_set_membership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e61xxphy_softc = type { i32 }

@MV88E61XX_GLOBAL_VTU_DATA_P0P3 = common dso_local global i32 0, align 4
@MV88E61XX_GLOBAL_VTU_DATA_P4P5 = common dso_local global i32 0, align 4
@MV88E61XX_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv88e61xxphy_softc*, i32, i32)* @mv88e61xxphy_vtu_set_membership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e61xxphy_vtu_set_membership(%struct.mv88e61xxphy_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mv88e61xxphy_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mv88e61xxphy_softc* %0, %struct.mv88e61xxphy_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %16 [
    i32 129, label %12
    i32 128, label %13
    i32 130, label %14
    i32 131, label %15
  ]

12:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %17

13:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %17

14:                                               ; preds = %3
  store i32 2, i32* %9, align 4
  br label %17

15:                                               ; preds = %3
  store i32 3, i32* %9, align 4
  br label %17

16:                                               ; preds = %3
  br label %44

17:                                               ; preds = %15, %14, %13, %12
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %18, 4
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @MV88E61XX_GLOBAL_VTU_DATA_P0P3, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = mul i32 %22, 4
  store i32 %23, i32* %7, align 4
  br label %29

24:                                               ; preds = %17
  %25 = load i32, i32* @MV88E61XX_GLOBAL_VTU_DATA_P4P5, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub i32 %26, 4
  %28 = mul i32 %27, 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %4, align 8
  %31 = load i32, i32* @MV88E61XX_GLOBAL, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @MV88E61XX_READ(%struct.mv88e61xxphy_softc* %30, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %4, align 8
  %40 = load i32, i32* @MV88E61XX_GLOBAL, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @MV88E61XX_WRITE(%struct.mv88e61xxphy_softc* %39, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %29, %16
  ret void
}

declare dso_local i32 @MV88E61XX_READ(%struct.mv88e61xxphy_softc*, i32, i32) #1

declare dso_local i32 @MV88E61XX_WRITE(%struct.mv88e61xxphy_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
