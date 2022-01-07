; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_i2s_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_i2s_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.i2s_softc = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@MCLK_FS = common dso_local global i32 0, align 4
@NCLKS = common dso_local global i32 0, align 4
@clksrc = common dso_local global %struct.TYPE_4__* null, align 8
@MCLK_DIV_MASK = common dso_local global i32 0, align 4
@SCLK_DIV_MASK = common dso_local global i32 0, align 4
@SCLK_MASTER = common dso_local global i32 0, align 4
@SERIAL_64x = common dso_local global i32 0, align 4
@SERIAL_32x = common dso_local global i32 0, align 4
@INPUT_STEREO = common dso_local global i32 0, align 4
@OUTPUT_STEREO = common dso_local global i32 0, align 4
@INPUT_16BIT = common dso_local global i32 0, align 4
@OUTPUT_16BIT = common dso_local global i32 0, align 4
@INPUT_24BIT = common dso_local global i32 0, align 4
@OUTPUT_24BIT = common dso_local global i32 0, align 4
@I2S_WORDSIZE = common dso_local global i32 0, align 4
@I2S_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"i2s_setup: changing format not supported yet.\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@I2S0CLKEN = common dso_local global i32 0, align 4
@I2S_INT = common dso_local global i32 0, align 4
@I2S_INT_CLKSTOPPEND = common dso_local global i32 0, align 4
@OBIO_FCR1 = common dso_local global i32 0, align 4
@timo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2s_softc*, i32, i32, i32)* @i2s_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_setup(%struct.i2s_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2s_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i2s_softc* %0, %struct.i2s_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = mul nsw i32 %17, 2
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %5, align 4
  br label %166

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 32
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 64
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %5, align 4
  br label %166

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MCLK_FS, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @MCLK_FS, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %38

38:                                               ; preds = %68, %31
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @NCLKS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clksrc, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = srem i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %42
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clksrc, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %13, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clksrc, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %11, align 4
  br label %71

67:                                               ; preds = %42
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %16, align 4
  br label %38

71:                                               ; preds = %52, %38
  %72 = load i32, i32* %13, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %5, align 4
  br label %166

76:                                               ; preds = %71
  %77 = load i32, i32* %11, align 4
  switch i32 %77, label %81 [
    i32 1, label %78
    i32 3, label %79
    i32 5, label %80
  ]

78:                                               ; preds = %76
  store i32 14, i32* %14, align 4
  br label %85

79:                                               ; preds = %76
  store i32 13, i32* %14, align 4
  br label %85

80:                                               ; preds = %76
  store i32 12, i32* %14, align 4
  br label %85

81:                                               ; preds = %76
  %82 = load i32, i32* %11, align 4
  %83 = sdiv i32 %82, 2
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %81, %80, %79, %78
  %86 = load i32, i32* %14, align 4
  %87 = shl i32 %86, 24
  %88 = load i32, i32* @MCLK_DIV_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* %13, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %12, align 4
  switch i32 %92, label %95 [
    i32 1, label %93
    i32 3, label %94
  ]

93:                                               ; preds = %85
  store i32 8, i32* %14, align 4
  br label %99

94:                                               ; preds = %85
  store i32 9, i32* %14, align 4
  br label %99

95:                                               ; preds = %85
  %96 = load i32, i32* %12, align 4
  %97 = sdiv i32 %96, 2
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %95, %94, %93
  %100 = load i32, i32* %14, align 4
  %101 = shl i32 %100, 20
  %102 = load i32, i32* @SCLK_DIV_MASK, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* %13, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* @SCLK_MASTER, align 4
  %107 = load i32, i32* %13, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %9, align 4
  switch i32 %109, label %118 [
    i32 64, label %110
    i32 32, label %114
  ]

110:                                              ; preds = %99
  %111 = load i32, i32* @SERIAL_64x, align 4
  %112 = load i32, i32* %13, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %13, align 4
  br label %118

114:                                              ; preds = %99
  %115 = load i32, i32* @SERIAL_32x, align 4
  %116 = load i32, i32* %13, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %99, %114, %110
  %119 = load i32, i32* @INPUT_STEREO, align 4
  %120 = load i32, i32* @OUTPUT_STEREO, align 4
  %121 = or i32 %119, %120
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %8, align 4
  switch i32 %122, label %135 [
    i32 16, label %123
    i32 24, label %129
  ]

123:                                              ; preds = %118
  %124 = load i32, i32* @INPUT_16BIT, align 4
  %125 = load i32, i32* @OUTPUT_16BIT, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %15, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %15, align 4
  br label %137

129:                                              ; preds = %118
  %130 = load i32, i32* @INPUT_24BIT, align 4
  %131 = load i32, i32* @OUTPUT_24BIT, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* %15, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %15, align 4
  br label %137

135:                                              ; preds = %118
  %136 = load i32, i32* @EINVAL, align 4
  store i32 %136, i32* %5, align 4
  br label %166

137:                                              ; preds = %129, %123
  %138 = load %struct.i2s_softc*, %struct.i2s_softc** %6, align 8
  %139 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @I2S_WORDSIZE, align 4
  %142 = call i32 @bus_read_4(i32 %140, i32 %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %137
  %147 = load %struct.i2s_softc*, %struct.i2s_softc** %6, align 8
  %148 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @I2S_WORDSIZE, align 4
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @bus_write_4(i32 %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %146, %137
  %154 = load %struct.i2s_softc*, %struct.i2s_softc** %6, align 8
  %155 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @I2S_FORMAT, align 4
  %158 = call i32 @bus_read_4(i32 %156, i32 %157)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %153
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %164 = load i32, i32* @ENOTSUP, align 4
  store i32 %164, i32* %5, align 4
  br label %166

165:                                              ; preds = %153
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %165, %162, %135, %74, %29, %21
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
