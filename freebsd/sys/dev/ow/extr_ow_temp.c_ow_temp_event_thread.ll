; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow_temp.c_ow_temp_event_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow_temp.c_ow_temp_event_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ow_temp_softc = type { i32, i64, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"owtstart\00", align 1
@hz = common dso_local global i32 0, align 4
@OW_TEMP_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Running in parasitic mode unsupported\0A\00", align 1
@OW_TEMP_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"owtcvt\00", align 1
@OWT_DS1820 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ow_temp_event_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ow_temp_event_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ow_temp_softc*, align 8
  %4 = alloca [9 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.ow_temp_softc*
  store %struct.ow_temp_softc* %10, %struct.ow_temp_softc** %3, align 8
  %11 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @device_get_unit(i32 %13)
  %15 = load i32, i32* @hz, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sdiv i32 %16, 100
  %18 = call i32 @pause(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %19, i32 0, i32 4
  %21 = call i32 @mtx_lock(i32* %20)
  %22 = load i32, i32* @OW_TEMP_RUNNING, align 4
  %23 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %27, i32 0, i32 4
  %29 = call i32 @mtx_unlock(i32* %28)
  %30 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %33, i32 0, i32 8
  %35 = call i32 @ow_temp_read_power_supply(i32 %32, i64* %34)
  %36 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %36, i32 0, i32 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %1
  %46 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %46, i32 0, i32 4
  %48 = call i32 @mtx_lock(i32* %47)
  br label %49

49:                                               ; preds = %166, %45
  %50 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %51 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @OW_TEMP_DONE, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %177

56:                                               ; preds = %49
  %57 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %57, i32 0, i32 4
  %59 = call i32 @mtx_unlock(i32* %58)
  %60 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ow_temp_convert_t(i32 %62)
  %64 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %64, i32 0, i32 4
  %66 = call i32 @mtx_lock(i32* %65)
  %67 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %68 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %68, i32 0, i32 4
  %70 = load i32, i32* @hz, align 4
  %71 = call i32 @msleep(%struct.ow_temp_softc* %67, i32* %69, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @OW_TEMP_DONE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %56
  br label %177

79:                                               ; preds = %56
  %80 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %80, i32 0, i32 4
  %82 = call i32 @mtx_unlock(i32* %81)
  store i32 5, i32* %6, align 4
  br label %83

83:                                               ; preds = %163, %79
  %84 = load i32, i32* %6, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %166

86:                                               ; preds = %83
  %87 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %88 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %91 = call i32 @ow_temp_read_scratchpad(i32 %89, i32* %90, i32 36)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %157

94:                                               ; preds = %86
  %95 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %96 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %99 = call i32 @own_crc(i32 %97, i32* %98, i32 35)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 8
  %102 = load i32, i32* %101, align 16
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %152

104:                                              ; preds = %94
  %105 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %106 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @OWT_DS1820, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %138

110:                                              ; preds = %104
  %111 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 7
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %116 = load i32, i32* %115, align 16
  %117 = and i32 %116, 254
  %118 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 8
  %121 = or i32 %117, %120
  %122 = shl i32 %121, 3
  store i32 %122, i32* %8, align 4
  %123 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 6
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 16, %124
  %126 = sub nsw i32 %125, 4
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %8, align 4
  br label %137

129:                                              ; preds = %110
  %130 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %131 = load i32, i32* %130, align 16
  %132 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 8
  %135 = or i32 %131, %134
  %136 = shl i32 %135, 3
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %129, %114
  br label %145

138:                                              ; preds = %104
  %139 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %140 = load i32, i32* %139, align 16
  %141 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 8
  %144 = or i32 %140, %143
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %138, %137
  %146 = load i32, i32* %8, align 4
  %147 = mul nsw i32 %146, 1000
  %148 = sdiv i32 %147, 16
  %149 = add nsw i32 %148, 273150
  %150 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %151 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  br label %166

152:                                              ; preds = %94
  %153 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %154 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  br label %162

157:                                              ; preds = %86
  %158 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %159 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %157, %152
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %6, align 4
  br label %83

166:                                              ; preds = %145, %83
  %167 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %168 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %167, i32 0, i32 4
  %169 = call i32 @mtx_lock(i32* %168)
  %170 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %171 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %172 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %171, i32 0, i32 4
  %173 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %174 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @msleep(%struct.ow_temp_softc* %170, i32* %172, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %175)
  br label %49

177:                                              ; preds = %78, %49
  %178 = load i32, i32* @OW_TEMP_RUNNING, align 4
  %179 = xor i32 %178, -1
  %180 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %181 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, %179
  store i32 %183, i32* %181, align 8
  %184 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %185 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %184, i32 0, i32 4
  %186 = call i32 @mtx_unlock(i32* %185)
  %187 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ow_temp_read_power_supply(i32, i64*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ow_temp_convert_t(i32) #1

declare dso_local i32 @msleep(%struct.ow_temp_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @ow_temp_read_scratchpad(i32, i32*, i32) #1

declare dso_local i32 @own_crc(i32, i32*, i32) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
