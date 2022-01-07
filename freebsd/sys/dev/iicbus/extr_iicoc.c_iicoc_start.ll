; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicoc.c_iicoc_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicoc.c_iicoc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicoc_softc = type { i32, i32 }

@IIC_EBUSERR = common dso_local global i32 0, align 4
@OC_STATUS_BUSY = common dso_local global i32 0, align 4
@OC_COMMAND_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"I2C write slave address [0x%x] failed.\0A\00", align 1
@IIC_ENOACK = common dso_local global i32 0, align 4
@OC_I2C_STATUS_REG = common dso_local global i32 0, align 4
@OC_STATUS_AL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"I2C Bus Arbitration Lost, Aborting.\0A\00", align 1
@IIC_NOERR = common dso_local global i32 0, align 4
@OC_I2C_CMD_REG = common dso_local global i32 0, align 4
@OC_COMMAND_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @iicoc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicoc_start(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iicoc_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.iicoc_softc* @device_get_softc(i32 %11)
  store %struct.iicoc_softc* %12, %struct.iicoc_softc** %9, align 8
  %13 = load %struct.iicoc_softc*, %struct.iicoc_softc** %9, align 8
  %14 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %13, i32 0, i32 1
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 1
  %18 = load %struct.iicoc_softc*, %struct.iicoc_softc** %9, align 8
  %19 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @OC_STATUS_BUSY, align 4
  %22 = call i64 @iicoc_wait_on_status(i32 %20, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %53

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @OC_COMMAND_START, align 4
  %29 = call i64 @iicoc_wr_ack_cmd(i32 %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @IIC_ENOACK, align 4
  store i32 %35, i32* %8, align 4
  br label %53

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @OC_I2C_STATUS_REG, align 4
  %39 = call i32 @iicoc_dev_read(i32 %37, i32 %38)
  %40 = load i32, i32* @OC_STATUS_AL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i32, i8*, ...) @device_printf(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %46, i32* %8, align 4
  br label %53

47:                                               ; preds = %36
  %48 = load i32, i32* @IIC_NOERR, align 4
  store i32 %48, i32* %8, align 4
  %49 = load %struct.iicoc_softc*, %struct.iicoc_softc** %9, align 8
  %50 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %49, i32 0, i32 1
  %51 = call i32 @mtx_unlock(i32* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %65

53:                                               ; preds = %43, %31, %24
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @OC_I2C_CMD_REG, align 4
  %56 = load i32, i32* @OC_COMMAND_STOP, align 4
  %57 = call i32 @iicoc_dev_write(i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @OC_STATUS_BUSY, align 4
  %60 = call i64 @iicoc_wait_on_status(i32 %58, i32 %59)
  %61 = load %struct.iicoc_softc*, %struct.iicoc_softc** %9, align 8
  %62 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %61, i32 0, i32 1
  %63 = call i32 @mtx_unlock(i32* %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %53, %47
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.iicoc_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @iicoc_wait_on_status(i32, i32) #1

declare dso_local i64 @iicoc_wr_ack_cmd(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @iicoc_dev_read(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @iicoc_dev_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
