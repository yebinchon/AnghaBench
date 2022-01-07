; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@I2C_STATUS_REG = common dso_local global i32 0, align 4
@I2CSR_MBB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"bus busy\00", align 1
@IIC_EBUSERR = common dso_local global i32 0, align 4
@I2C_CONTROL_REG = common dso_local global i32 0, align 4
@I2CCR_MEN = common dso_local global i32 0, align 4
@I2CCR_MSTA = common dso_local global i32 0, align 4
@I2CCR_MTX = common dso_local global i32 0, align 4
@I2C_DATA_REG = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @i2c_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_start(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.i2c_softc* @device_get_softc(i32 %11)
  store %struct.i2c_softc* %12, %struct.i2c_softc** %8, align 8
  %13 = call i32 @DELAY(i32 1000)
  %14 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %15 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %14, i32 0, i32 0
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %18 = load i32, i32* @I2C_STATUS_REG, align 4
  %19 = call i32 @i2c_read_reg(%struct.i2c_softc* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @I2CSR_MBB, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = call i32 @debugf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %27 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %26, i32 0, i32 0
  %28 = call i32 @mtx_unlock(i32* %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @i2c_stop(i32 %29)
  %31 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %31, i32* %4, align 4
  br label %58

32:                                               ; preds = %3
  %33 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %34 = load i32, i32* @I2C_CONTROL_REG, align 4
  %35 = load i32, i32* @I2CCR_MEN, align 4
  %36 = load i32, i32* @I2CCR_MSTA, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @I2CCR_MTX, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @i2c_write_reg(%struct.i2c_softc* %33, i32 %34, i32 %39)
  %41 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %42 = load i32, i32* @I2C_DATA_REG, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @i2c_write_reg(%struct.i2c_softc* %41, i32 %42, i32 %43)
  %45 = call i32 @DELAY(i32 1250)
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %48 = call i32 @i2c_do_wait(i32 %46, %struct.i2c_softc* %47, i32 1, i32 1)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %50 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %49, i32 0, i32 0
  %51 = call i32 @mtx_unlock(i32* %50)
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %32
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %58

56:                                               ; preds = %32
  %57 = load i32, i32* @IIC_NOERR, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %54, %24
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @i2c_read_reg(%struct.i2c_softc*, i32) #1

declare dso_local i32 @debugf(i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @i2c_stop(i32) #1

declare dso_local i32 @i2c_write_reg(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @i2c_do_wait(i32, %struct.i2c_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
