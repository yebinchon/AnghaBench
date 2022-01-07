; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_mixer_set_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_mixer_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_softc = type { i32 }
%struct.mix_table = type { i64, i64, i64, i32, i32, i32 }

@CS_REG_NONE = common dso_local global i64 0, align 8
@CS_LEFT_INPUT_CONTROL = common dso_local global i32 0, align 4
@CS_RIGHT_INPUT_CONTROL = common dso_local global i32 0, align 4
@ADC_INPUT_GAIN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs4231_softc*, %struct.mix_table*, i32)* @cs4231_mixer_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4231_mixer_set_value(%struct.cs4231_softc* %0, %struct.mix_table* %1, i32 %2) #0 {
  %4 = alloca %struct.cs4231_softc*, align 8
  %5 = alloca %struct.mix_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cs4231_softc* %0, %struct.cs4231_softc** %4, align 8
  store %struct.mix_table* %1, %struct.mix_table** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.mix_table*, %struct.mix_table** %5, align 8
  %13 = getelementptr inbounds %struct.mix_table, %struct.mix_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.mix_table*, %struct.mix_table** %5, align 8
  %18 = getelementptr inbounds %struct.mix_table, %struct.mix_table* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CS_REG_NONE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %3
  br label %108

23:                                               ; preds = %16
  %24 = load %struct.mix_table*, %struct.mix_table** %5, align 8
  %25 = getelementptr inbounds %struct.mix_table, %struct.mix_table* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load %struct.mix_table*, %struct.mix_table** %5, align 8
  %29 = getelementptr inbounds %struct.mix_table, %struct.mix_table* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 100, %33
  store i32 %34, i32* %11, align 4
  br label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load %struct.mix_table*, %struct.mix_table** %5, align 8
  %39 = getelementptr inbounds %struct.mix_table, %struct.mix_table* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %45, 50
  %47 = sdiv i32 %46, 100
  store i32 %47, i32* %11, align 4
  %48 = load %struct.mix_table*, %struct.mix_table** %5, align 8
  %49 = getelementptr inbounds %struct.mix_table, %struct.mix_table* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %37
  %57 = load %struct.mix_table*, %struct.mix_table** %5, align 8
  %58 = getelementptr inbounds %struct.mix_table, %struct.mix_table* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %56, %37
  %63 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @cs4231_read(%struct.cs4231_softc* %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.mix_table*, %struct.mix_table** %5, align 8
  %67 = getelementptr inbounds %struct.mix_table, %struct.mix_table* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %68, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @CS_LEFT_INPUT_CONTROL, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %62
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @CS_RIGHT_INPUT_CONTROL, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %82, %62
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %10, align 4
  %90 = shl i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* @ADC_INPUT_GAIN_ENABLE, align 4
  %95 = load i32, i32* %11, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %11, align 4
  br label %102

97:                                               ; preds = %86
  %98 = load i32, i32* @ADC_INPUT_GAIN_ENABLE, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %97, %93
  br label %103

103:                                              ; preds = %102, %82
  %104 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @cs4231_write(%struct.cs4231_softc* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %22
  ret void
}

declare dso_local i32 @cs4231_read(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @cs4231_write(%struct.cs4231_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
