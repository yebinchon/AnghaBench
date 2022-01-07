; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_gpio_softc = type { i32 }
%struct.chipc_gpio_update = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@pullup = common dso_local global i32 0, align 4
@pulldown = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@outen = common dso_local global i32 0, align 4
@timeroutmask = common dso_local global i32 0, align 4
@ctrl = common dso_local global i32 0, align 4
@GPIO_PIN_PULLUP = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i32 0, align 4
@GPIO_PIN_PRESET_HIGH = common dso_local global i32 0, align 4
@GPIO_PIN_PRESET_LOW = common dso_local global i32 0, align 4
@GPIO_PIN_PULSATE = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown pin mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chipc_gpio_softc*, %struct.chipc_gpio_update*, i32, i32)* @chipc_gpio_pin_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_gpio_pin_update(%struct.chipc_gpio_softc* %0, %struct.chipc_gpio_update* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.chipc_gpio_softc*, align 8
  %7 = alloca %struct.chipc_gpio_update*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.chipc_gpio_softc* %0, %struct.chipc_gpio_softc** %6, align 8
  store %struct.chipc_gpio_update* %1, %struct.chipc_gpio_update** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @CC_GPIO_VALID_PIN(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %5, align 4
  br label %167

17:                                               ; preds = %4
  %18 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @chipc_gpio_check_flags(%struct.chipc_gpio_softc* %18, i32 %19, i32 %20, i32* %10)
  store i32 %21, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %167

25:                                               ; preds = %17
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %160 [
    i32 130, label %27
    i32 129, label %73
    i32 128, label %125
  ]

27:                                               ; preds = %25
  %28 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @pullup, align 4
  %31 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %28, i32 %29, i32 %30, i32 0)
  %32 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @pulldown, align 4
  %35 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @out, align 4
  %39 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %36, i32 %37, i32 %38, i32 0)
  %40 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @outen, align 4
  %43 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %40, i32 %41, i32 %42, i32 0)
  %44 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @timeroutmask, align 4
  %47 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %44, i32 %45, i32 %46, i32 0)
  %48 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @ctrl, align 4
  %51 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %48, i32 %49, i32 %50, i32 0)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %27
  %57 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @pullup, align 4
  %60 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %57, i32 %58, i32 %59, i32 1)
  br label %72

61:                                               ; preds = %27
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @pulldown, align 4
  %70 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %67, i32 %68, i32 %69, i32 1)
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %56
  store i32 0, i32* %5, align 4
  br label %167

73:                                               ; preds = %25
  %74 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @pullup, align 4
  %77 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %74, i32 %75, i32 %76, i32 0)
  %78 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @pulldown, align 4
  %81 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %78, i32 %79, i32 %80, i32 0)
  %82 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @outen, align 4
  %85 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %82, i32 %83, i32 %84, i32 1)
  %86 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @timeroutmask, align 4
  %89 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %86, i32 %87, i32 %88, i32 0)
  %90 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @ctrl, align 4
  %93 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %90, i32 %91, i32 %92, i32 0)
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @GPIO_PIN_PRESET_HIGH, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %73
  %99 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @out, align 4
  %102 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %99, i32 %100, i32 %101, i32 1)
  br label %114

103:                                              ; preds = %73
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @GPIO_PIN_PRESET_LOW, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @out, align 4
  %112 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %109, i32 %110, i32 %111, i32 0)
  br label %113

113:                                              ; preds = %108, %103
  br label %114

114:                                              ; preds = %113, %98
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @GPIO_PIN_PULSATE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @timeroutmask, align 4
  %123 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %120, i32 %121, i32 %122, i32 1)
  br label %124

124:                                              ; preds = %119, %114
  store i32 0, i32* %5, align 4
  br label %167

125:                                              ; preds = %25
  %126 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @pullup, align 4
  %129 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %126, i32 %127, i32 %128, i32 0)
  %130 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @pulldown, align 4
  %133 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %130, i32 %131, i32 %132, i32 0)
  %134 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @out, align 4
  %137 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %134, i32 %135, i32 %136, i32 0)
  %138 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @outen, align 4
  %141 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %138, i32 %139, i32 %140, i32 0)
  %142 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @timeroutmask, align 4
  %145 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %142, i32 %143, i32 %144, i32 0)
  %146 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @ctrl, align 4
  %149 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %146, i32 %147, i32 %148, i32 1)
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %125
  %155 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %7, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @outen, align 4
  %158 = call i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update* %155, i32 %156, i32 %157, i32 1)
  br label %159

159:                                              ; preds = %154, %125
  store i32 0, i32* %5, align 4
  br label %167

160:                                              ; preds = %25
  %161 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %6, align 8
  %162 = getelementptr inbounds %struct.chipc_gpio_softc, %struct.chipc_gpio_softc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @device_printf(i32 %163, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @EINVAL, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %160, %159, %124, %72, %23, %15
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @CC_GPIO_VALID_PIN(i32) #1

declare dso_local i32 @chipc_gpio_check_flags(%struct.chipc_gpio_softc*, i32, i32, i32*) #1

declare dso_local i32 @CC_GPIO_UPDATE(%struct.chipc_gpio_update*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
