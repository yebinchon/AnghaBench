; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@I2C_CONTROL_REG = common dso_local global i32 0, align 4
@I2CCR_MEN = common dso_local global i32 0, align 4
@I2CCR_MSTA = common dso_local global i32 0, align 4
@I2CCR_TXAK = common dso_local global i32 0, align 4
@I2C_DATA_REG = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32*, i32, i32)* @i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_read(i32 %0, i8* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.i2c_softc*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.i2c_softc* @device_get_softc(i32 %16)
  store %struct.i2c_softc* %17, %struct.i2c_softc** %14, align 8
  %18 = load i32*, i32** %11, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %20 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %19, i32 0, i32 0
  %21 = call i32 @mtx_lock(i32* %20)
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %6
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %29 = load i32, i32* @I2C_CONTROL_REG, align 4
  %30 = load i32, i32* @I2CCR_MEN, align 4
  %31 = load i32, i32* @I2CCR_MSTA, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @I2CCR_TXAK, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @i2c_write_reg(%struct.i2c_softc* %28, i32 %29, i32 %34)
  br label %43

36:                                               ; preds = %24
  %37 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %38 = load i32, i32* @I2C_CONTROL_REG, align 4
  %39 = load i32, i32* @I2CCR_MEN, align 4
  %40 = load i32, i32* @I2CCR_MSTA, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @i2c_write_reg(%struct.i2c_softc* %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %36, %27
  %44 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %45 = load i32, i32* @I2C_DATA_REG, align 4
  %46 = call i32 @i2c_read_reg(%struct.i2c_softc* %44, i32 %45)
  %47 = call i32 @DELAY(i32 1000)
  br label %48

48:                                               ; preds = %43, %6
  br label %49

49:                                               ; preds = %100, %48
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %111

54:                                               ; preds = %49
  %55 = call i32 @DELAY(i32 1000)
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %58 = call i32 @i2c_do_wait(i32 %56, %struct.i2c_softc* %57, i32 0, i32 0)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %63 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %62, i32 0, i32 0
  %64 = call i32 @mtx_unlock(i32* %63)
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %7, align 4
  br label %116

66:                                               ; preds = %54
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, 2
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %77 = load i32, i32* @I2C_CONTROL_REG, align 4
  %78 = load i32, i32* @I2CCR_MEN, align 4
  %79 = load i32, i32* @I2CCR_MSTA, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @I2CCR_TXAK, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @i2c_write_reg(%struct.i2c_softc* %76, i32 %77, i32 %82)
  br label %84

84:                                               ; preds = %75, %72, %66
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %95 = load i32, i32* @I2C_CONTROL_REG, align 4
  %96 = load i32, i32* @I2CCR_MEN, align 4
  %97 = load i32, i32* @I2CCR_TXAK, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @i2c_write_reg(%struct.i2c_softc* %94, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %93, %90, %84
  %101 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %102 = load i32, i32* @I2C_DATA_REG, align 4
  %103 = call i32 @i2c_read_reg(%struct.i2c_softc* %101, i32 %102)
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %9, align 8
  store i8 %104, i8* %105, align 1
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = call i32 @DELAY(i32 1250)
  br label %49

111:                                              ; preds = %49
  %112 = load %struct.i2c_softc*, %struct.i2c_softc** %14, align 8
  %113 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %112, i32 0, i32 0
  %114 = call i32 @mtx_unlock(i32* %113)
  %115 = load i32, i32* @IIC_NOERR, align 4
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %111, %61
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @i2c_write_reg(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @i2c_read_reg(%struct.i2c_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @i2c_do_wait(i32, %struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
