; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioths.c_gpioths_dht_readbytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioths.c_gpioths_dht_readbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpioths_softc = type { i32, i32, i32 }

@GPIOTHS_DHT_CYCLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"gpioths_dht_initread error = %d\0A\00", align 1
@GPIO_PIN_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"err(START) = %d\0A\00", align 1
@GPIO_PIN_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"err(CAL, %d) = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"err(INTERVAL, %d) = %d\0A\00", align 1
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"err(FINAL_SETFLAGS, OUT) = %d\0A\00", align 1
@GPIOTHS_DHT_ONEBYTEMASK = common dso_local global i32 0, align 4
@GPIOTHS_DHT_TEMP_SHIFT = common dso_local global i32 0, align 4
@GPIOTHS_DHT_HUM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @gpioths_dht_readbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpioths_dht_readbytes(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpioths_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %19 = load i32, i32* @GPIOTHS_DHT_CYCLES, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load i32, i32* @GPIOTHS_DHT_CYCLES, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.gpioths_softc* @device_get_softc(i32 %26)
  store %struct.gpioths_softc* %27, %struct.gpioths_softc** %6, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @gpioths_dht_initread(i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %205

37:                                               ; preds = %2
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @GPIO_PIN_LOW, align 4
  %41 = call i32 @gpioths_dht_timeuntil(i32 %38, i32 %39, i32 %40, i32* null)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %205

48:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %84, %48
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @GPIOTHS_DHT_CYCLES, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %87

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @GPIO_PIN_HIGH, align 4
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %22, i64 %58
  %60 = call i32 @gpioths_dht_timeuntil(i32 %54, i32 %55, i32 %56, i32* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66)
  br label %205

68:                                               ; preds = %53
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @GPIO_PIN_LOW, align 4
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %25, i64 %73
  %75 = call i32 @gpioths_dht_timeuntil(i32 %69, i32 %70, i32 %71, i32* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %81)
  br label %205

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %49

87:                                               ; preds = %49
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %91 = call i32 @GPIOBUS_PIN_SETFLAGS(i32 %88, i32 %89, i32 0, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  br label %205

98:                                               ; preds = %87
  %99 = call i32 @DELAY(i32 1)
  store i32 0, i32* %11, align 4
  store i32 1, i32* %15, align 4
  br label %100

100:                                              ; preds = %111, %98
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* @GPIOTHS_DHT_CYCLES, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %22, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %100

114:                                              ; preds = %100
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @GPIOTHS_DHT_CYCLES, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sdiv i32 %115, %117
  store i32 %118, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %16, align 4
  store i32 32, i32* %17, align 4
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %139, %114
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %122, %123
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %120
  %127 = load i32, i32* %12, align 4
  %128 = shl i32 %127, 1
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %25, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %135, %126
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %15, align 4
  br label %120

142:                                              ; preds = %120
  store i32 0, i32* %13, align 4
  store i32 33, i32* %16, align 4
  store i32 32, i32* %17, align 4
  %143 = load i32, i32* %16, align 4
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %163, %142
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %146, %147
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %144
  %151 = load i32, i32* %13, align 4
  %152 = shl i32 %151, 1
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %25, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %150
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %162

162:                                              ; preds = %159, %150
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %15, align 4
  br label %144

166:                                              ; preds = %144
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %167

167:                                              ; preds = %180, %166
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = icmp ult i64 %169, 4
  br i1 %170, label %171, label %183

171:                                              ; preds = %167
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %15, align 4
  %174 = mul nsw i32 8, %173
  %175 = ashr i32 %172, %174
  %176 = load i32, i32* @GPIOTHS_DHT_ONEBYTEMASK, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %171
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %15, align 4
  br label %167

183:                                              ; preds = %167
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  store i32 -1, i32* %10, align 4
  br label %205

188:                                              ; preds = %183
  %189 = load %struct.gpioths_softc*, %struct.gpioths_softc** %6, align 8
  %190 = getelementptr inbounds %struct.gpioths_softc, %struct.gpioths_softc* %189, i32 0, i32 0
  store i32 0, i32* %190, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* @GPIOTHS_DHT_TEMP_SHIFT, align 4
  %193 = ashr i32 %191, %192
  %194 = load i32, i32* @GPIOTHS_DHT_ONEBYTEMASK, align 4
  %195 = and i32 %193, %194
  %196 = load %struct.gpioths_softc*, %struct.gpioths_softc** %6, align 8
  %197 = getelementptr inbounds %struct.gpioths_softc, %struct.gpioths_softc* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* @GPIOTHS_DHT_HUM_SHIFT, align 4
  %200 = ashr i32 %198, %199
  %201 = load i32, i32* @GPIOTHS_DHT_ONEBYTEMASK, align 4
  %202 = and i32 %200, %201
  %203 = load %struct.gpioths_softc*, %struct.gpioths_softc** %6, align 8
  %204 = getelementptr inbounds %struct.gpioths_softc, %struct.gpioths_softc* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %211

205:                                              ; preds = %187, %94, %78, %63, %44, %33
  %206 = load %struct.gpioths_softc*, %struct.gpioths_softc** %6, align 8
  %207 = getelementptr inbounds %struct.gpioths_softc, %struct.gpioths_softc* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  %210 = load i32, i32* %10, align 4
  store i32 %210, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %211

211:                                              ; preds = %205, %188
  %212 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.gpioths_softc* @device_get_softc(i32) #2

declare dso_local i32 @gpioths_dht_initread(i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #2

declare dso_local i32 @gpioths_dht_timeuntil(i32, i32, i32, i32*) #2

declare dso_local i32 @GPIOBUS_PIN_SETFLAGS(i32, i32, i32, i32) #2

declare dso_local i32 @DELAY(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
