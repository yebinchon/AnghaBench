; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_efuse_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_efuse_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32 }

@RT3070_EFUSE_CTRL = common dso_local global i32 0, align 4
@RT3070_EFSROM_MODE_MASK = common dso_local global i32 0, align 4
@RT3070_EFSROM_AIN_MASK = common dso_local global i32 0, align 4
@RT3070_EFSROM_AIN_SHIFT = common dso_local global i32 0, align 4
@RT3070_EFSROM_KICK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@RT3070_EFUSE_AOUT_MASK = common dso_local global i32 0, align 4
@RT3070_EFUSE_DATA3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.run_softc*, i32, i32*, i32)* @run_efuse_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_efuse_read(%struct.run_softc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.run_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %15 = load i32, i32* @RT3070_EFUSE_CTRL, align 4
  %16 = call i32 @run_read(%struct.run_softc* %14, i32 %15, i32* %10)
  store i32 %16, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %5, align 4
  br label %109

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 2
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @RT3070_EFSROM_MODE_MASK, align 4
  %28 = load i32, i32* @RT3070_EFSROM_AIN_MASK, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, -16
  %35 = load i32, i32* @RT3070_EFSROM_AIN_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* @RT3070_EFSROM_KICK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %42 = load i32, i32* @RT3070_EFUSE_CTRL, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @run_write(%struct.run_softc* %41, i32 %42, i32 %43)
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %64, %26
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 100
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %50 = load i32, i32* @RT3070_EFUSE_CTRL, align 4
  %51 = call i32 @run_read(%struct.run_softc* %49, i32 %50, i32* %10)
  store i32 %51, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %109

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @RT3070_EFSROM_KICK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %67

61:                                               ; preds = %55
  %62 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %63 = call i32 @run_delay(%struct.run_softc* %62, i32 2)
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %45

67:                                               ; preds = %60, %45
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, 100
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %71, i32* %5, align 4
  br label %109

72:                                               ; preds = %67
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @RT3070_EFUSE_AOUT_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @RT3070_EFUSE_AOUT_MASK, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32*, i32** %8, align 8
  store i32 65535, i32* %79, align 4
  store i32 0, i32* %5, align 4
  br label %109

80:                                               ; preds = %72
  %81 = load i32, i32* @RT3070_EFUSE_DATA3, align 4
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 12
  %84 = sub nsw i32 %81, %83
  store i32 %84, i32* %11, align 4
  %85 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @run_read(%struct.run_softc* %85, i32 %86, i32* %10)
  store i32 %87, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %5, align 4
  br label %109

91:                                               ; preds = %80
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %92, 3
  %94 = mul nsw i32 8, %93
  %95 = load i32, i32* %10, align 4
  %96 = ashr i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32, i32* %10, align 4
  %102 = ashr i32 %101, 16
  br label %106

103:                                              ; preds = %91
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %104, 65535
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi i32 [ %102, %100 ], [ %105, %103 ]
  %108 = load i32*, i32** %8, align 8
  store i32 %107, i32* %108, align 4
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %106, %89, %78, %70, %53, %18
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
