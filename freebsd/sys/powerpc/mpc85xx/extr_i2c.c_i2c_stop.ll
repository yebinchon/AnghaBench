; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@I2C_CONTROL_REG = common dso_local global i32 0, align 4
@I2CCR_MEN = common dso_local global i32 0, align 4
@I2CCR_TXAK = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i2c_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.i2c_softc* @device_get_softc(i32 %4)
  store %struct.i2c_softc* %5, %struct.i2c_softc** %3, align 8
  %6 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %6, i32 0, i32 0
  %8 = call i32 @mtx_lock(i32* %7)
  %9 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %10 = load i32, i32* @I2C_CONTROL_REG, align 4
  %11 = load i32, i32* @I2CCR_MEN, align 4
  %12 = load i32, i32* @I2CCR_TXAK, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @i2c_write_reg(%struct.i2c_softc* %9, i32 %10, i32 %13)
  %15 = call i32 @DELAY(i32 1000)
  %16 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %16, i32 0, i32 0
  %18 = call i32 @mtx_unlock(i32* %17)
  %19 = load i32, i32* @IIC_NOERR, align 4
  ret i32 %19
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
