; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_audio_formats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_audio_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"     Stream cap: 0x%08x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" AC3\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" FLOAT32\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" PCM\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"        PCM cap: 0x%08x\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" 8\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" 16\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" 20\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" 24\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" 32\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c" bits,\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" 11\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" 22\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" 44\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" 48\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" 88\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" 96\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" 176\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c" 192\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c" KHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64)* @hdaa_dump_audio_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_dump_audio_formats(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @device_printf(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @HDA_PARAM_SUPP_STREAM_FORMATS_AC3(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @HDA_PARAM_SUPP_STREAM_FORMATS_FLOAT32(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @HDA_PARAM_SUPP_STREAM_FORMATS_PCM(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %3
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %135

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %40)
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_8BIT(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %38
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_16BIT(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_20BIT(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_24BIT(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_32BIT(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %65
  %72 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %73 = load i64, i64* %7, align 8
  %74 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_8KHZ(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %71
  %79 = load i64, i64* %7, align 8
  %80 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_11KHZ(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %78
  %85 = load i64, i64* %7, align 8
  %86 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_16KHZ(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %84
  %91 = load i64, i64* %7, align 8
  %92 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_22KHZ(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %90
  %97 = load i64, i64* %7, align 8
  %98 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_32KHZ(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %96
  %103 = load i64, i64* %7, align 8
  %104 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_44KHZ(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %102
  %109 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %110 = load i64, i64* %7, align 8
  %111 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_88KHZ(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %108
  %116 = load i64, i64* %7, align 8
  %117 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_96KHZ(i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %115
  %122 = load i64, i64* %7, align 8
  %123 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_176KHZ(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %121
  %128 = load i64, i64* %7, align 8
  %129 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_192KHZ(i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %127
  %134 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %34
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_STREAM_FORMATS_AC3(i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @HDA_PARAM_SUPP_STREAM_FORMATS_FLOAT32(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_STREAM_FORMATS_PCM(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_8BIT(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_16BIT(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_20BIT(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_24BIT(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_32BIT(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_8KHZ(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_11KHZ(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_16KHZ(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_22KHZ(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_32KHZ(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_44KHZ(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_88KHZ(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_96KHZ(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_176KHZ(i64) #1

declare dso_local i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_192KHZ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
