; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@I2C_BAUD_RATE_FAST = common dso_local global i32 0, align 4
@I2C_BAUD_RATE_DEF = common dso_local global i32 0, align 4
@I2C_CONTROL_REG = common dso_local global i32 0, align 4
@I2C_STATUS_REG = common dso_local global i32 0, align 4
@I2C_FDR_REG = common dso_local global i32 0, align 4
@I2C_DFSRR_REG = common dso_local global i32 0, align 4
@I2C_DFSSR_DIV = common dso_local global i32 0, align 4
@I2C_ENABLE = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @i2c_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_reset(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.i2c_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.i2c_softc* @device_get_softc(i32 %11)
  store %struct.i2c_softc* %12, %struct.i2c_softc** %9, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %17 [
    i32 131, label %14
    i32 129, label %16
    i32 128, label %16
    i32 130, label %16
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @I2C_BAUD_RATE_FAST, align 4
  store i32 %15, i32* %10, align 4
  br label %19

16:                                               ; preds = %4, %4, %4
  br label %17

17:                                               ; preds = %4, %16
  %18 = load i32, i32* @I2C_BAUD_RATE_DEF, align 4
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %21 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %20, i32 0, i32 0
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %24 = load i32, i32* @I2C_CONTROL_REG, align 4
  %25 = call i32 @i2c_write_reg(%struct.i2c_softc* %23, i32 %24, i32 0)
  %26 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %27 = load i32, i32* @I2C_STATUS_REG, align 4
  %28 = call i32 @i2c_write_reg(%struct.i2c_softc* %26, i32 %27, i32 0)
  %29 = call i32 @DELAY(i32 1000)
  %30 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %31 = load i32, i32* @I2C_FDR_REG, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @i2c_write_reg(%struct.i2c_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %35 = load i32, i32* @I2C_DFSRR_REG, align 4
  %36 = load i32, i32* @I2C_DFSSR_DIV, align 4
  %37 = call i32 @i2c_write_reg(%struct.i2c_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %39 = load i32, i32* @I2C_CONTROL_REG, align 4
  %40 = load i32, i32* @I2C_ENABLE, align 4
  %41 = call i32 @i2c_write_reg(%struct.i2c_softc* %38, i32 %39, i32 %40)
  %42 = call i32 @DELAY(i32 1000)
  %43 = load %struct.i2c_softc*, %struct.i2c_softc** %9, align 8
  %44 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %43, i32 0, i32 0
  %45 = call i32 @mtx_unlock(i32* %44)
  %46 = load i32, i32* @IIC_NOERR, align 4
  ret i32 %46
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @i2c_write_reg(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
