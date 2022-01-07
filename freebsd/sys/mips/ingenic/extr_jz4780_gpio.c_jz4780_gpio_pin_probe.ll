; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_pin_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_pin_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_gpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@JZ_GPIO_INT = common dso_local global i32 0, align 4
@JZ_GPIO_PAT1 = common dso_local global i32 0, align 4
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@INTR_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@JZ_GPIO_PAT0 = common dso_local global i32 0, align 4
@INTR_POLARITY_HIGH = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@JZ_FUNC_INTR = common dso_local global i32 0, align 4
@JZ_GPIO_MASK = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@JZ_GPIO_DPULL = common dso_local global i32 0, align 4
@GPIO_PIN_PULLUP = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i32 0, align 4
@JZ_FUNC_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4780_gpio_softc*, i32)* @jz4780_gpio_pin_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_gpio_pin_probe(%struct.jz4780_gpio_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.jz4780_gpio_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jz4780_gpio_softc* %0, %struct.jz4780_gpio_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = shl i32 1, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %10 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %17 = load i32, i32* @JZ_GPIO_INT, align 4
  %18 = call i32 @CSR_READ_4(%struct.jz4780_gpio_softc* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %91

23:                                               ; preds = %2
  %24 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %25 = load i32, i32* @JZ_GPIO_PAT1, align 4
  %26 = call i32 @CSR_READ_4(%struct.jz4780_gpio_softc* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %33 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %34 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  store i32 %32, i32* %39, align 4
  br label %49

40:                                               ; preds = %23
  %41 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  %42 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %43 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  store i32 %41, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %31
  %50 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %51 = load i32, i32* @JZ_GPIO_PAT0, align 4
  %52 = call i32 @CSR_READ_4(%struct.jz4780_gpio_softc* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  %59 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %60 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i32 %58, i32* %65, align 4
  br label %75

66:                                               ; preds = %49
  %67 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %68 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %69 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  store i32 %67, i32* %74, align 4
  br label %75

75:                                               ; preds = %66, %57
  %76 = load i32, i32* @JZ_FUNC_INTR, align 4
  %77 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %78 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 %76, i32* %83, align 4
  %84 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %85 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 4
  br label %222

91:                                               ; preds = %2
  %92 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %93 = load i32, i32* @JZ_GPIO_MASK, align 4
  %94 = call i32 @CSR_READ_4(%struct.jz4780_gpio_softc* %92, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %168

99:                                               ; preds = %91
  %100 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %101 = load i32, i32* @JZ_GPIO_PAT1, align 4
  %102 = call i32 @CSR_READ_4(%struct.jz4780_gpio_softc* %100, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %5, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %99
  %108 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %109 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %110 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %108
  store i32 %117, i32* %115, align 4
  br label %129

118:                                              ; preds = %99
  %119 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %120 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %121 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %119
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %118, %107
  %130 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %131 = load i32, i32* @JZ_GPIO_DPULL, align 4
  %132 = call i32 @CSR_READ_4(%struct.jz4780_gpio_softc* %130, i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %5, align 4
  %135 = and i32 %133, %134
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %159

137:                                              ; preds = %129
  %138 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %139 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %147 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  %150 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %151 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %149
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %137, %129
  %160 = load i32, i32* @JZ_FUNC_GPIO, align 4
  %161 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %162 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %161, i32 0, i32 0
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = load i32, i32* %4, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  store i32 %160, i32* %167, align 4
  br label %222

168:                                              ; preds = %91
  %169 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %170 = load i32, i32* @JZ_GPIO_DPULL, align 4
  %171 = call i32 @CSR_READ_4(%struct.jz4780_gpio_softc* %169, i32 %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %5, align 4
  %174 = and i32 %172, %173
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %196

176:                                              ; preds = %168
  %177 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %178 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %177, i32 0, i32 0
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %186 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %187 = or i32 %185, %186
  %188 = and i32 %184, %187
  %189 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %190 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %189, i32 0, i32 0
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = load i32, i32* %4, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  store i32 %188, i32* %195, align 4
  br label %196

196:                                              ; preds = %176, %168
  %197 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %198 = load i32, i32* @JZ_GPIO_PAT1, align 4
  %199 = call i32 @CSR_READ_4(%struct.jz4780_gpio_softc* %197, i32 %198)
  %200 = load i32, i32* %5, align 4
  %201 = and i32 %199, %200
  %202 = load i32, i32* %4, align 4
  %203 = lshr i32 %201, %202
  %204 = shl i32 %203, 1
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %6, align 4
  %206 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %207 = load i32, i32* @JZ_GPIO_PAT1, align 4
  %208 = call i32 @CSR_READ_4(%struct.jz4780_gpio_softc* %206, i32 %207)
  %209 = load i32, i32* %5, align 4
  %210 = and i32 %208, %209
  %211 = load i32, i32* %4, align 4
  %212 = lshr i32 %210, %211
  %213 = or i32 %205, %212
  store i32 %213, i32* %6, align 4
  %214 = load i32, i32* %6, align 4
  %215 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %216 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %215, i32 0, i32 0
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %216, align 8
  %218 = load i32, i32* %4, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 1
  store i32 %214, i32* %221, align 4
  br label %222

222:                                              ; preds = %196, %159, %75
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.jz4780_gpio_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
