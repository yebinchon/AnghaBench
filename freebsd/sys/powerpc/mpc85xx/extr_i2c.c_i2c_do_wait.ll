; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_do_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_do_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@I2C_STATUS_REG = common dso_local global i32 0, align 4
@I2CSR_MIF = common dso_local global i32 0, align 4
@I2CSR_RXAK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"no ack %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"after sending slave address\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IIC_ENOACK = common dso_local global i32 0, align 4
@I2CSR_MAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"arbitration lost\00", align 1
@IIC_EBUSERR = common dso_local global i32 0, align 4
@I2CSR_MCF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"transfer unfinished\00", align 1
@IIC_NOERR = common dso_local global i32 0, align 4
@I2C_CONTROL_REG = common dso_local global i32 0, align 4
@I2CCR_MEN = common dso_local global i32 0, align 4
@I2CCR_TXAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.i2c_softc*, i32, i32)* @i2c_do_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_do_wait(i32 %0, %struct.i2c_softc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.i2c_softc* %1, %struct.i2c_softc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.i2c_softc*, %struct.i2c_softc** %7, align 8
  %13 = load i32, i32* @I2C_STATUS_REG, align 4
  %14 = call i32 @i2c_read_reg(%struct.i2c_softc* %12, i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @I2CSR_MIF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @I2CSR_RXAK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @IIC_ENOACK, align 4
  store i32 %36, i32* %10, align 4
  br label %59

37:                                               ; preds = %25, %22, %19
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @I2CSR_MAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %44, i32* %10, align 4
  br label %59

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @I2CSR_MCF, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %55, i32* %10, align 4
  br label %59

56:                                               ; preds = %48, %45
  br label %57

57:                                               ; preds = %56, %4
  %58 = load i32, i32* @IIC_NOERR, align 4
  store i32 %58, i32* %5, align 4
  br label %70

59:                                               ; preds = %53, %42, %30
  %60 = load %struct.i2c_softc*, %struct.i2c_softc** %7, align 8
  %61 = load i32, i32* @I2C_STATUS_REG, align 4
  %62 = call i32 @i2c_write_reg(%struct.i2c_softc* %60, i32 %61, i32 0)
  %63 = load %struct.i2c_softc*, %struct.i2c_softc** %7, align 8
  %64 = load i32, i32* @I2C_CONTROL_REG, align 4
  %65 = load i32, i32* @I2CCR_MEN, align 4
  %66 = load i32, i32* @I2CCR_TXAK, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @i2c_write_reg(%struct.i2c_softc* %63, i32 %64, i32 %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %59, %57
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @i2c_read_reg(%struct.i2c_softc*, i32) #1

declare dso_local i32 @debugf(i8*, ...) #1

declare dso_local i32 @i2c_write_reg(%struct.i2c_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
