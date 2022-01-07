; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_repeated_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_repeated_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@I2C_CONTROL_REG = common dso_local global i32 0, align 4
@I2CCR_RSTA = common dso_local global i32 0, align 4
@I2C_DATA_REG = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @i2c_repeated_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_repeated_start(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.i2c_softc* @device_get_softc(i32 %10)
  store %struct.i2c_softc* %11, %struct.i2c_softc** %8, align 8
  %12 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %13 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %12, i32 0, i32 0
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %16 = load i32, i32* @I2C_CONTROL_REG, align 4
  %17 = load i32, i32* @I2CCR_RSTA, align 4
  %18 = call i32 @i2c_flag_set(%struct.i2c_softc* %15, i32 %16, i32 %17)
  %19 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %20 = load i32, i32* @I2C_DATA_REG, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @i2c_write_reg(%struct.i2c_softc* %19, i32 %20, i32 %21)
  %23 = call i32 @DELAY(i32 1250)
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %26 = call i32 @i2c_do_wait(i32 %24, %struct.i2c_softc* %25, i32 1, i32 1)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.i2c_softc*, %struct.i2c_softc** %8, align 8
  %28 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %27, i32 0, i32 0
  %29 = call i32 @mtx_unlock(i32* %28)
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @IIC_NOERR, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @i2c_flag_set(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @i2c_write_reg(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @i2c_do_wait(i32, %struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
