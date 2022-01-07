; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_mv88e61xxphy.c_mv88e61xxphy_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_mv88e61xxphy.c_mv88e61xxphy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MV88E61XX_PORT_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Marvell Link Street 88E6123 3-Port Gigabit Switch\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Marvell Link Street 88E6161 6-Port Gigabit Switch\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Marvell Link Street 88E6161 6-Port Advanced Gigabit Switch\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv88e61xxphy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e61xxphy_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @device_get_parent(i32 %5)
  %7 = call i32 @MV88E61XX_PORT(i32 0)
  %8 = load i32, i32* @MV88E61XX_PORT_REVISION, align 4
  %9 = call i32 @MIIBUS_READREG(i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 4
  switch i32 %11, label %21 [
    i32 289, label %12
    i32 353, label %15
    i32 357, label %18
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_set_desc(i32 %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_set_desc(i32 %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_set_desc(i32 %19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %18, %15, %12
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @MIIBUS_READREG(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @MV88E61XX_PORT(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
