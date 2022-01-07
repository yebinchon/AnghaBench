; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt3090_efuse_read_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt3090_efuse_read_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32 }

@RT3070_EFUSE_CTRL = common dso_local global i32 0, align 4
@RT3070_EFSROM_MODE_MASK = common dso_local global i32 0, align 4
@RT3070_EFSROM_AIN_MASK = common dso_local global i32 0, align 4
@RT3070_EFSROM_AIN_SHIFT = common dso_local global i32 0, align 4
@RT3070_EFSROM_KICK = common dso_local global i32 0, align 4
@RT3070_EFUSE_AOUT_MASK = common dso_local global i32 0, align 4
@RT3070_EFUSE_DATA3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2860_softc*, i32)* @rt3090_efuse_read_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt3090_efuse_read_2(%struct.rt2860_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2860_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 %9, 2
  store i32 %10, i32* %5, align 4
  %11 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %12 = load i32, i32* @RT3070_EFUSE_CTRL, align 4
  %13 = call i32 @RAL_READ(%struct.rt2860_softc* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @RT3070_EFSROM_MODE_MASK, align 4
  %15 = load i32, i32* @RT3070_EFSROM_AIN_MASK, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, -16
  %22 = load i32, i32* @RT3070_EFSROM_AIN_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @RT3070_EFSROM_KICK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %29 = load i32, i32* @RT3070_EFUSE_CTRL, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @RAL_WRITE(%struct.rt2860_softc* %28, i32 %29, i32 %30)
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %46, %2
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 500
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %37 = load i32, i32* @RT3070_EFUSE_CTRL, align 4
  %38 = call i32 @RAL_READ(%struct.rt2860_softc* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @RT3070_EFSROM_KICK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %49

44:                                               ; preds = %35
  %45 = call i32 @DELAY(i32 2)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %32

49:                                               ; preds = %43, %32
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 500
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 65535, i32* %3, align 4
  br label %79

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @RT3070_EFUSE_AOUT_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @RT3070_EFUSE_AOUT_MASK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 65535, i32* %3, align 4
  br label %79

60:                                               ; preds = %53
  %61 = load i32, i32* @RT3070_EFUSE_DATA3, align 4
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 12
  %64 = sub nsw i32 %61, %63
  store i32 %64, i32* %7, align 4
  %65 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @RAL_READ(%struct.rt2860_softc* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 2
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load i32, i32* %6, align 4
  %73 = ashr i32 %72, 16
  br label %77

74:                                               ; preds = %60
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 65535
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i32 [ %73, %71 ], [ %76, %74 ]
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %59, %52
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
