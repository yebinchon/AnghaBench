; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nctgpio/extr_nctgpio.c_nct_gpio_pin_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nctgpio/extr_nctgpio.c_nct_gpio_pin_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct_softc = type { %struct.gpio_pin* }
%struct.gpio_pin = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i64 0, align 8
@GPIO_PIN_OUTPUT = common dso_local global i64 0, align 8
@GPIO_PIN_OPENDRAIN = common dso_local global i64 0, align 8
@GPIO_PIN_PUSHPULL = common dso_local global i64 0, align 8
@GPIO_PIN_INVIN = common dso_local global i64 0, align 8
@GPIO_PIN_INVOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @nct_gpio_pin_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct_gpio_pin_setflags(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nct_softc*, align 8
  %9 = alloca %struct.gpio_pin*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @NCT_IS_VALID_PIN(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %179

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.nct_softc* @device_get_softc(i32 %16)
  store %struct.nct_softc* %17, %struct.nct_softc** %8, align 8
  %18 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %19 = getelementptr inbounds %struct.nct_softc, %struct.nct_softc* %18, i32 0, i32 0
  %20 = load %struct.gpio_pin*, %struct.gpio_pin** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %20, i64 %21
  store %struct.gpio_pin* %22, %struct.gpio_pin** %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.gpio_pin*, %struct.gpio_pin** %9, align 8
  %25 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %23, %26
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %179

32:                                               ; preds = %15
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %35 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %36 = or i64 %34, %35
  %37 = and i64 %33, %36
  %38 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %39 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %40 = or i64 %38, %39
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %4, align 4
  br label %179

44:                                               ; preds = %32
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @GPIO_PIN_OPENDRAIN, align 8
  %47 = load i64, i64* @GPIO_PIN_PUSHPULL, align 8
  %48 = or i64 %46, %47
  %49 = and i64 %45, %48
  %50 = load i64, i64* @GPIO_PIN_OPENDRAIN, align 8
  %51 = load i64, i64* @GPIO_PIN_PUSHPULL, align 8
  %52 = or i64 %50, %51
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %4, align 4
  br label %179

56:                                               ; preds = %44
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @GPIO_PIN_INVIN, align 8
  %59 = load i64, i64* @GPIO_PIN_INVOUT, align 8
  %60 = or i64 %58, %59
  %61 = and i64 %57, %60
  %62 = load i64, i64* @GPIO_PIN_INVIN, align 8
  %63 = load i64, i64* @GPIO_PIN_INVOUT, align 8
  %64 = or i64 %62, %63
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %4, align 4
  br label %179

68:                                               ; preds = %56
  %69 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %70 = call i32 @GPIO_ASSERT_UNLOCKED(%struct.nct_softc* %69)
  %71 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %72 = call i32 @GPIO_LOCK(%struct.nct_softc* %71)
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %75 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %76 = or i64 %74, %75
  %77 = and i64 %73, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %68
  %80 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @nct_set_pin_input(%struct.nct_softc* %80, i64 %81, i32 %86)
  %88 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %89 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %90 = or i64 %88, %89
  %91 = xor i64 %90, -1
  %92 = load %struct.gpio_pin*, %struct.gpio_pin** %9, align 8
  %93 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = and i64 %94, %91
  store i64 %95, i64* %93, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %98 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %99 = or i64 %97, %98
  %100 = and i64 %96, %99
  %101 = load %struct.gpio_pin*, %struct.gpio_pin** %9, align 8
  %102 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = or i64 %103, %100
  store i64 %104, i64* %102, align 8
  br label %105

105:                                              ; preds = %79, %68
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @GPIO_PIN_INVIN, align 8
  %108 = load i64, i64* @GPIO_PIN_INVOUT, align 8
  %109 = or i64 %107, %108
  %110 = and i64 %106, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %138

112:                                              ; preds = %105
  %113 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @GPIO_PIN_INVIN, align 8
  %117 = and i64 %115, %116
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @nct_set_pin_inverted(%struct.nct_softc* %113, i64 %114, i32 %119)
  %121 = load i64, i64* @GPIO_PIN_INVIN, align 8
  %122 = load i64, i64* @GPIO_PIN_INVOUT, align 8
  %123 = or i64 %121, %122
  %124 = xor i64 %123, -1
  %125 = load %struct.gpio_pin*, %struct.gpio_pin** %9, align 8
  %126 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = and i64 %127, %124
  store i64 %128, i64* %126, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* @GPIO_PIN_INVIN, align 8
  %131 = load i64, i64* @GPIO_PIN_INVOUT, align 8
  %132 = or i64 %130, %131
  %133 = and i64 %129, %132
  %134 = load %struct.gpio_pin*, %struct.gpio_pin** %9, align 8
  %135 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = or i64 %136, %133
  store i64 %137, i64* %135, align 8
  br label %138

138:                                              ; preds = %112, %105
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* @GPIO_PIN_OPENDRAIN, align 8
  %141 = load i64, i64* @GPIO_PIN_PUSHPULL, align 8
  %142 = or i64 %140, %141
  %143 = and i64 %139, %142
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %176

145:                                              ; preds = %138
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* @GPIO_PIN_OPENDRAIN, align 8
  %148 = and i64 %146, %147
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %152 = load i64, i64* %6, align 8
  %153 = call i32 @nct_set_pin_opendrain(%struct.nct_softc* %151, i64 %152)
  br label %158

154:                                              ; preds = %145
  %155 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %156 = load i64, i64* %6, align 8
  %157 = call i32 @nct_set_pin_pushpull(%struct.nct_softc* %155, i64 %156)
  br label %158

158:                                              ; preds = %154, %150
  %159 = load i64, i64* @GPIO_PIN_OPENDRAIN, align 8
  %160 = load i64, i64* @GPIO_PIN_PUSHPULL, align 8
  %161 = or i64 %159, %160
  %162 = xor i64 %161, -1
  %163 = load %struct.gpio_pin*, %struct.gpio_pin** %9, align 8
  %164 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = and i64 %165, %162
  store i64 %166, i64* %164, align 8
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* @GPIO_PIN_OPENDRAIN, align 8
  %169 = load i64, i64* @GPIO_PIN_PUSHPULL, align 8
  %170 = or i64 %168, %169
  %171 = and i64 %167, %170
  %172 = load %struct.gpio_pin*, %struct.gpio_pin** %9, align 8
  %173 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = or i64 %174, %171
  store i64 %175, i64* %173, align 8
  br label %176

176:                                              ; preds = %158, %138
  %177 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %178 = call i32 @GPIO_UNLOCK(%struct.nct_softc* %177)
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %176, %66, %54, %42, %30, %13
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @NCT_IS_VALID_PIN(i64) #1

declare dso_local %struct.nct_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_ASSERT_UNLOCKED(%struct.nct_softc*) #1

declare dso_local i32 @GPIO_LOCK(%struct.nct_softc*) #1

declare dso_local i32 @nct_set_pin_input(%struct.nct_softc*, i64, i32) #1

declare dso_local i32 @nct_set_pin_inverted(%struct.nct_softc*, i64, i32) #1

declare dso_local i32 @nct_set_pin_opendrain(%struct.nct_softc*, i64) #1

declare dso_local i32 @nct_set_pin_pushpull(%struct.nct_softc*, i64) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.nct_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
