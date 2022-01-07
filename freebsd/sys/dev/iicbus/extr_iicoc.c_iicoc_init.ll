; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicoc.c_iicoc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicoc.c_iicoc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicoc_softc = type { i32, i32 }

@OC_I2C_CTRL_REG = common dso_local global i32 0, align 4
@OC_CONTROL_EN = common dso_local global i32 0, align 4
@OC_CONTROL_IEN = common dso_local global i32 0, align 4
@OC_I2C_PRESCALE_LO_REG = common dso_local global i32 0, align 4
@OC_I2C_PRESCALE_HI_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iicoc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicoc_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iicoc_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.iicoc_softc* @device_get_softc(i32 %5)
  store %struct.iicoc_softc* %6, %struct.iicoc_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @OC_I2C_CTRL_REG, align 4
  %9 = call i32 @iicoc_dev_read(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @OC_I2C_CTRL_REG, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @OC_CONTROL_EN, align 4
  %14 = load i32, i32* @OC_CONTROL_IEN, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  %18 = call i32 @iicoc_dev_write(i32 %10, i32 %11, i32 %17)
  %19 = load %struct.iicoc_softc*, %struct.iicoc_softc** %3, align 8
  %20 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iicoc_softc*, %struct.iicoc_softc** %3, align 8
  %23 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 5, %24
  %26 = sdiv i32 %21, %25
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @OC_I2C_PRESCALE_LO_REG, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 255
  %32 = call i32 @iicoc_dev_write(i32 %28, i32 %29, i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @OC_I2C_PRESCALE_HI_REG, align 4
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 8
  %37 = call i32 @iicoc_dev_write(i32 %33, i32 %34, i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @OC_I2C_CTRL_REG, align 4
  %40 = call i32 @iicoc_dev_read(i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @OC_I2C_CTRL_REG, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @OC_CONTROL_EN, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @iicoc_dev_write(i32 %41, i32 %42, i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @OC_I2C_CTRL_REG, align 4
  %49 = call i32 @iicoc_dev_read(i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @OC_CONTROL_EN, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  ret i32 %54
}

declare dso_local %struct.iicoc_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicoc_dev_read(i32, i32) #1

declare dso_local i32 @iicoc_dev_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
