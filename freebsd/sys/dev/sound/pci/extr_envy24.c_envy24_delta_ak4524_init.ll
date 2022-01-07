; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_delta_ak4524_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_delta_ak4524_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envy24_delta_ak4524_codec = type { i32, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@AK452X_FORMAT_I2S = common dso_local global i32 0, align 4
@AK452X_FORMAT_256FSN = common dso_local global i32 0, align 4
@AK452X_FORMAT_1X = common dso_local global i32 0, align 4
@AK452X_DVC_DEMOFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"6fire rear input init\0A\00", align 1
@envy24_gpio_i2c_ctl = common dso_local global i32 0, align 4
@PCA9554_I2CDEV = common dso_local global i32 0, align 4
@PCA9554_DIR = common dso_local global i32 0, align 4
@PCA9554_OUT = common dso_local global i32 0, align 4
@ENVY24_GPIO_AK4524_CCLK = common dso_local global i32 0, align 4
@ENVY24_GPIO_AK4524_CS0 = common dso_local global i32 0, align 4
@ENVY24_GPIO_AK4524_CS1 = common dso_local global i32 0, align 4
@ENVY24_GPIO_CS8414_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @envy24_delta_ak4524_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envy24_delta_ak4524_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.envy24_delta_ak4524_codec*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.envy24_delta_ak4524_codec*
  store %struct.envy24_delta_ak4524_codec* %5, %struct.envy24_delta_ak4524_codec** %3, align 8
  %6 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %7 = icmp eq %struct.envy24_delta_ak4524_codec* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %128

9:                                                ; preds = %1
  %10 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %11 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %18 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %20 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %27 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %29 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %36 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %38 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %41 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @spicds_settype(i32 %39, i32 %46)
  %48 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %49 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %52 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @spicds_setcif(i32 %50, i32 %57)
  %59 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %60 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @AK452X_FORMAT_I2S, align 4
  %63 = load i32, i32* @AK452X_FORMAT_256FSN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @AK452X_FORMAT_1X, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @spicds_setformat(i32 %61, i32 %66)
  %68 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %69 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @AK452X_DVC_DEMOFF, align 4
  %72 = call i32 @spicds_setdvc(i32 %70, i32 %71)
  %73 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %74 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %9
  %78 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %79 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @spicds_init(i32 %80)
  br label %82

82:                                               ; preds = %77, %9
  %83 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %84 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 5435
  br i1 %90, label %91, label %128

91:                                               ; preds = %82
  %92 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %93 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %92, i32 0, i32 2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 4408
  br i1 %99, label %100, label %128

100:                                              ; preds = %91
  %101 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %102 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 100
  br i1 %104, label %105, label %128

105:                                              ; preds = %100
  %106 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %107 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %106, i32 0, i32 0
  store i32 2, i32* %107, align 8
  %108 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %109 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @spicds_init(i32 %110)
  %112 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %113 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %112, i32 0, i32 2
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @device_printf(i32 %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %118 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %119 = load i32, i32* @envy24_gpio_i2c_ctl, align 4
  %120 = load i32, i32* @PCA9554_I2CDEV, align 4
  %121 = load i32, i32* @PCA9554_DIR, align 4
  %122 = call i32 @i2c_wr(%struct.envy24_delta_ak4524_codec* %118, i32 %119, i32 %120, i32 %121, i32 128)
  %123 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %124 = load i32, i32* @envy24_gpio_i2c_ctl, align 4
  %125 = load i32, i32* @PCA9554_I2CDEV, align 4
  %126 = load i32, i32* @PCA9554_OUT, align 4
  %127 = call i32 @i2c_wr(%struct.envy24_delta_ak4524_codec* %123, i32 %124, i32 %125, i32 %126, i32 2)
  br label %128

128:                                              ; preds = %8, %105, %100, %91, %82
  ret void
}

declare dso_local i32 @spicds_settype(i32, i32) #1

declare dso_local i32 @spicds_setcif(i32, i32) #1

declare dso_local i32 @spicds_setformat(i32, i32) #1

declare dso_local i32 @spicds_setdvc(i32, i32) #1

declare dso_local i32 @spicds_init(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @i2c_wr(%struct.envy24_delta_ak4524_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
