; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_mdio_get_divider.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_mdio_get_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arge_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ar71xx_soc = common dso_local global i32 0, align 4
@ar933x_mdio_div_table = common dso_local global i64* null, align 8
@ar7240_mdio_div_table = common dso_local global i64* null, align 8
@ar71xx_mdio_div_table = common dso_local global i64* null, align 8
@ARGE_DBG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"No divider found; MDIO=%lu Hz; target=%lu Hz\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arge_softc*, i64)* @arge_mdio_get_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arge_mdio_get_divider(%struct.arge_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arge_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.arge_softc* %0, %struct.arge_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = call i64 (...) @ar71xx_mdio_freq()
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %64

20:                                               ; preds = %14
  %21 = load i32, i32* @ar71xx_soc, align 4
  switch i32 %21, label %30 [
    i32 136, label %22
    i32 135, label %22
    i32 134, label %22
    i32 133, label %22
    i32 132, label %22
    i32 131, label %22
    i32 130, label %22
    i32 129, label %22
    i32 128, label %22
    i32 139, label %26
    i32 138, label %26
    i32 137, label %26
  ]

22:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20
  %23 = load i64*, i64** @ar933x_mdio_div_table, align 8
  store i64* %23, i64** %8, align 8
  %24 = load i64*, i64** @ar933x_mdio_div_table, align 8
  %25 = call i32 @nitems(i64* %24)
  store i32 %25, i32* %9, align 4
  br label %34

26:                                               ; preds = %20, %20, %20
  %27 = load i64*, i64** @ar7240_mdio_div_table, align 8
  store i64* %27, i64** %8, align 8
  %28 = load i64*, i64** @ar7240_mdio_div_table, align 8
  %29 = call i32 @nitems(i64* %28)
  store i32 %29, i32* %9, align 4
  br label %34

30:                                               ; preds = %20
  %31 = load i64*, i64** @ar71xx_mdio_div_table, align 8
  store i64* %31, i64** %8, align 8
  %32 = load i64*, i64** @ar71xx_mdio_div_table, align 8
  %33 = call i32 @nitems(i64* %32)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %30, %26, %22
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = udiv i64 %40, %45
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ule i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %64

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %35

56:                                               ; preds = %35
  %57 = load %struct.arge_softc*, %struct.arge_softc** %4, align 8
  %58 = load i32, i32* @ARGE_DBG_RESET, align 4
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @ARGEDEBUG(%struct.arge_softc* %57, i32 %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %60)
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %50, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @ar71xx_mdio_freq(...) #1

declare dso_local i32 @nitems(i64*) #1

declare dso_local i32 @ARGEDEBUG(%struct.arge_softc*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
