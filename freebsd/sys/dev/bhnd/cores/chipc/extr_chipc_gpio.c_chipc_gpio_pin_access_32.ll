; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_access_32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_access_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_gpio_softc = type { i32 }
%struct.chipc_gpio_update = type { i32 }

@CC_GPIO_NPINS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CHIPC_GPIOOUT = common dso_local global i32 0, align 4
@CHIPC_GPIOOUTEN = common dso_local global i32 0, align 4
@CHIPC_GPIOCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i64*)* @chipc_gpio_pin_access_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_gpio_pin_access_32(i32 %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.chipc_gpio_softc*, align 8
  %13 = alloca %struct.chipc_gpio_update, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.chipc_gpio_softc* @device_get_softc(i32 %24)
  store %struct.chipc_gpio_softc* %25, %struct.chipc_gpio_softc** %12, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @CC_GPIO_NPINS, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %6, align 4
  br label %148

31:                                               ; preds = %5
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* @CC_GPIO_NPINS, align 8
  %39 = load i64, i64* %8, align 8
  %40 = sub nsw i64 %38, %39
  store i64 %40, i64* %17, align 8
  br label %51

41:                                               ; preds = %34, %31
  %42 = load i64, i64* %9, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @flsl(i32 %43)
  store i32 %44, i32* %19, align 4
  %45 = load i64, i64* %10, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @flsl(i32 %46)
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %20, align 4
  %50 = call i64 @MAX(i32 %48, i32 %49)
  store i64 %50, i64* %17, align 8
  br label %51

51:                                               ; preds = %41, %37
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %17, align 8
  %54 = call i32 @CC_GPIO_VALID_PINS(i64 %52, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %6, align 4
  br label %148

58:                                               ; preds = %51
  %59 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %12, align 8
  %60 = call i32 @CC_GPIO_LOCK(%struct.chipc_gpio_softc* %59)
  %61 = call i32 @memset(%struct.chipc_gpio_update* %13, i32 0, i32 4)
  %62 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %12, align 8
  %63 = load i32, i32* @CHIPC_GPIOOUT, align 4
  %64 = call i64 @CC_GPIO_RD4(%struct.chipc_gpio_softc* %62, i32 %63)
  store i64 %64, i64* %14, align 8
  %65 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %12, align 8
  %66 = load i32, i32* @CHIPC_GPIOOUTEN, align 4
  %67 = call i64 @CC_GPIO_RD4(%struct.chipc_gpio_softc* %65, i32 %66)
  store i64 %67, i64* %15, align 8
  %68 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %12, align 8
  %69 = load i32, i32* @CHIPC_GPIOCTRL, align 4
  %70 = call i64 @CC_GPIO_RD4(%struct.chipc_gpio_softc* %68, i32 %69)
  store i64 %70, i64* %16, align 8
  store i64 0, i64* %21, align 8
  br label %71

71:                                               ; preds = %139, %58
  %72 = load i64, i64* %21, align 8
  %73 = load i64, i64* %17, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %142

75:                                               ; preds = %71
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %21, align 8
  %78 = add nsw i64 %76, %77
  store i64 %78, i64* %22, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %22, align 8
  %81 = trunc i64 %80 to i32
  %82 = shl i32 1, %81
  %83 = sext i32 %82 to i64
  %84 = and i64 %79, %83
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %12, align 8
  %88 = call i32 @CC_GPIO_UNLOCK(%struct.chipc_gpio_softc* %87)
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %6, align 4
  br label %148

90:                                               ; preds = %75
  %91 = load i64, i64* %16, align 8
  %92 = load i64, i64* %22, align 8
  %93 = trunc i64 %92 to i32
  %94 = shl i32 1, %93
  %95 = sext i32 %94 to i64
  %96 = and i64 %91, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %12, align 8
  %100 = call i32 @CC_GPIO_UNLOCK(%struct.chipc_gpio_softc* %99)
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %6, align 4
  br label %148

102:                                              ; preds = %90
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* %22, align 8
  %105 = trunc i64 %104 to i32
  %106 = shl i32 1, %105
  %107 = sext i32 %106 to i64
  %108 = and i64 %103, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store i32 1, i32* %23, align 4
  br label %112

111:                                              ; preds = %102
  store i32 0, i32* %23, align 4
  br label %112

112:                                              ; preds = %111, %110
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* %22, align 8
  %115 = trunc i64 %114 to i32
  %116 = shl i32 1, %115
  %117 = sext i32 %116 to i64
  %118 = and i64 %113, %117
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  store i32 0, i32* %23, align 4
  br label %121

121:                                              ; preds = %120, %112
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* %22, align 8
  %124 = trunc i64 %123 to i32
  %125 = shl i32 1, %124
  %126 = sext i32 %125 to i64
  %127 = and i64 %122, %126
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load i32, i32* %23, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %23, align 4
  br label %134

134:                                              ; preds = %129, %121
  %135 = load i64, i64* %22, align 8
  %136 = load i64, i64* %14, align 8
  %137 = load i32, i32* %23, align 4
  %138 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %13, i64 %135, i64 %136, i32 %137)
  br label %139

139:                                              ; preds = %134
  %140 = load i64, i64* %21, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %21, align 8
  br label %71

142:                                              ; preds = %71
  %143 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %12, align 8
  %144 = call i32 @chipc_gpio_commit_update(%struct.chipc_gpio_softc* %143, %struct.chipc_gpio_update* %13)
  store i32 %144, i32* %18, align 4
  %145 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %12, align 8
  %146 = call i32 @CC_GPIO_UNLOCK(%struct.chipc_gpio_softc* %145)
  %147 = load i32, i32* %18, align 4
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %142, %98, %86, %56, %29
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local %struct.chipc_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @flsl(i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @CC_GPIO_VALID_PINS(i64, i64) #1

declare dso_local i32 @CC_GPIO_LOCK(%struct.chipc_gpio_softc*) #1

declare dso_local i32 @memset(%struct.chipc_gpio_update*, i32, i32) #1

declare dso_local i64 @CC_GPIO_RD4(%struct.chipc_gpio_softc*, i32) #1

declare dso_local i32 @CC_GPIO_UNLOCK(%struct.chipc_gpio_softc*) #1

declare dso_local i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update*, i64, i64, i32) #1

declare dso_local i32 @chipc_gpio_commit_update(%struct.chipc_gpio_softc*, %struct.chipc_gpio_update*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
