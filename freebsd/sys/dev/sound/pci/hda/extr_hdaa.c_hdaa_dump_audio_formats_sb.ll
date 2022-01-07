; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_audio_formats_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_audio_formats_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i64, i64)* @hdaa_dump_audio_formats_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_dump_audio_formats_sb(%struct.sbuf* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %3
  %12 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @HDA_PARAM_SUPP_STREAM_FORMATS_AC3(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %20 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %11
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @HDA_PARAM_SUPP_STREAM_FORMATS_FLOAT32(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %27 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @HDA_PARAM_SUPP_STREAM_FORMATS_PCM(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %34 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %37 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %3
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %157

42:                                               ; preds = %38
  %43 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_8BIT(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %51 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_16BIT(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %58 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_20BIT(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %65 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_24BIT(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %72 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i64, i64* %7, align 8
  %75 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_32BIT(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %79 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %73
  %81 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %82 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %83 = load i64, i64* %7, align 8
  %84 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_8KHZ(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %88 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %80
  %90 = load i64, i64* %7, align 8
  %91 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_11KHZ(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %95 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i64, i64* %7, align 8
  %98 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_16KHZ(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %102 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %96
  %104 = load i64, i64* %7, align 8
  %105 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_22KHZ(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %109 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i64, i64* %7, align 8
  %112 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_32KHZ(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %116 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %110
  %118 = load i64, i64* %7, align 8
  %119 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_44KHZ(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %123 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %117
  %125 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %126 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %127 = load i64, i64* %7, align 8
  %128 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_88KHZ(i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %132 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %124
  %134 = load i64, i64* %7, align 8
  %135 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_96KHZ(i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %139 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %133
  %141 = load i64, i64* %7, align 8
  %142 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_176KHZ(i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %146 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %140
  %148 = load i64, i64* %7, align 8
  %149 = call i64 @HDA_PARAM_SUPP_PCM_SIZE_RATE_192KHZ(i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %153 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %147
  %155 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %156 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %38
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i64 @HDA_PARAM_SUPP_STREAM_FORMATS_AC3(i64) #1

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
