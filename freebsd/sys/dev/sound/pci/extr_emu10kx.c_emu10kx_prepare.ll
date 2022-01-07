; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu10kx_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu10kx_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i64, i64, i32**, i32**, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"FreeBSD EMU10Kx Audio Driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\0AHardware resource usage:\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"DSP General Purpose Registers: %d used, %d total\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"DSP Instruction Registers: %d used, %d total\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Card supports\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" AC97 codec\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c" NO AC97 codec\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c" and 7.1 output\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c" and 5.1 output\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c", SBLive! DSP code\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c", Audigy DSP code\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c", Audigy DSP code with Audigy2 hacks\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c", Audigy DSP code with Audigy2Value hacks\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Digital mode unsupported\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"\0AInstalled devices:\0A\00", align 1
@RT_COUNT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"%s on %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"EMU10Kx MIDI Interface\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"\09On-card connector on %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"\09On-Drive connector on %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"\09IR receiver MIDI events %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Card is in %s mode\0A\00", align 1
@MODE_ANALOG = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [7 x i8] c"analog\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"digital\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emu_sc_info*, %struct.sbuf*)* @emu10kx_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu10kx_prepare(%struct.emu_sc_info* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.emu_sc_info*, align 8
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %6 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %7 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %9 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %11 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %12 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %11, i32 0, i32 14
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %17 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %16, i32 0, i32 14
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32 %20)
  %22 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %23 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %24 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %23, i32 0, i32 13
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %27 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %31 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %32 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %33 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %32, i32 0, i32 11
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %38 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %42

39:                                               ; preds = %2
  %40 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %41 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %44 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %43, i32 0, i32 10
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %49 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %48, i32 0, i32 9
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %54 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %58

55:                                               ; preds = %47
  %56 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %57 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %42
  %60 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %61 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %60, i32 0, i32 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %66 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %69 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %74 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %77 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %82 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %85 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %90 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %93 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %94 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %95 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %100 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %91
  %102 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %103 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %148, %101
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @RT_COUNT, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %151

108:                                              ; preds = %104
  %109 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %110 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %109, i32 0, i32 3
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %147

117:                                              ; preds = %108
  %118 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %119 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %118, i32 0, i32 3
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = call i64 @device_is_attached(i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %117
  %128 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %129 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %130 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %129, i32 0, i32 3
  %131 = load i32**, i32*** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @device_get_desc(i32* %135)
  %137 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %138 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %137, i32 0, i32 3
  %139 = load i32**, i32*** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = call i8* @device_get_nameunit(i32* %143)
  %145 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 %136, i8* %144)
  br label %146

146:                                              ; preds = %127, %117
  br label %147

147:                                              ; preds = %146, %108
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %104

151:                                              ; preds = %104
  %152 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %153 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %152, i32 0, i32 2
  %154 = load i32**, i32*** %153, align 8
  %155 = getelementptr inbounds i32*, i32** %154, i64 0
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %178

158:                                              ; preds = %151
  %159 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %160 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %159, i32 0, i32 2
  %161 = load i32**, i32*** %160, align 8
  %162 = getelementptr inbounds i32*, i32** %161, i64 0
  %163 = load i32*, i32** %162, align 8
  %164 = call i64 @device_is_attached(i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %158
  %167 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %168 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %169 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %170 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %171 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %170, i32 0, i32 2
  %172 = load i32**, i32*** %171, align 8
  %173 = getelementptr inbounds i32*, i32** %172, i64 0
  %174 = load i32*, i32** %173, align 8
  %175 = call i8* @device_get_nameunit(i32* %174)
  %176 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %166, %158
  br label %178

178:                                              ; preds = %177, %151
  %179 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %180 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %179, i32 0, i32 2
  %181 = load i32**, i32*** %180, align 8
  %182 = getelementptr inbounds i32*, i32** %181, i64 1
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %203

185:                                              ; preds = %178
  %186 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %187 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %186, i32 0, i32 2
  %188 = load i32**, i32*** %187, align 8
  %189 = getelementptr inbounds i32*, i32** %188, i64 1
  %190 = load i32*, i32** %189, align 8
  %191 = call i64 @device_is_attached(i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %185
  %194 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %195 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %196 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %195, i32 0, i32 2
  %197 = load i32**, i32*** %196, align 8
  %198 = getelementptr inbounds i32*, i32** %197, i64 1
  %199 = load i32*, i32** %198, align 8
  %200 = call i8* @device_get_nameunit(i32* %199)
  %201 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %194, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %193, %185
  br label %203

203:                                              ; preds = %202, %178
  %204 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %205 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %204, i32 0, i32 2
  %206 = load i32**, i32*** %205, align 8
  %207 = getelementptr inbounds i32*, i32** %206, i64 0
  %208 = load i32*, i32** %207, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %228

210:                                              ; preds = %203
  %211 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %212 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %211, i32 0, i32 2
  %213 = load i32**, i32*** %212, align 8
  %214 = getelementptr inbounds i32*, i32** %213, i64 0
  %215 = load i32*, i32** %214, align 8
  %216 = call i64 @device_is_attached(i32* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %210
  %219 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %220 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %221 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0)
  %226 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %219, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8* %225)
  br label %227

227:                                              ; preds = %218, %210
  br label %228

228:                                              ; preds = %227, %203
  %229 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %230 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %231 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @MODE_ANALOG, align 8
  %234 = icmp eq i64 %232, %233
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0)
  %237 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %229, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i8* %236)
  %238 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %239 = call i32 @sbuf_finish(%struct.sbuf* %238)
  %240 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %241 = call i32 @sbuf_len(%struct.sbuf* %240)
  ret i32 %241
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i64 @device_is_attached(i32*) #1

declare dso_local i32 @device_get_desc(i32*) #1

declare dso_local i8* @device_get_nameunit(i32*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @sbuf_len(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
