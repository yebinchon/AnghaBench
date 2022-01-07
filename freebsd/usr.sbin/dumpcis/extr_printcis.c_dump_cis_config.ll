; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_dump_cis_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_dump_cis_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuple = type { i32*, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"\09Config index = 0x%x%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"(default)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CIS_CONFIG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"\09Interface byte = 0x%x \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"(reserved)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"(memory)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"(I/O)\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"(custom)\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" BVD1/2 active\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"%c card WP active\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"%c +RDY/-BSY active\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"%c wait signal supported\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"\09Vcc pwr:\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"\09Vpp pwr:\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"\09Vpp1 pwr:\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"\09Vpp2 pwr:\0A\00", align 1
@CIS_FEAT_TIMING = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"\09Wait scale \00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"\09RDY/BSY scale \00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"\09External scale \00", align 1
@CIS_FEAT_I_O = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"\09I/O base:\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@CIS_FEAT_IRQ = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [14 x i8] c"\09Memory base:\00", align 1
@CIS_FEAT_MISC = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [22 x i8] c"\09Max twin cards = %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"\09Misc attr:%s%s%s\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c" (Audio-BVD2)\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c" (Read-only)\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c" (Power down supported)\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c" (Ext byte = 0x%x)\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"\09Misc attr:\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"%s%s%s%s%s%s%s\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c" (Master)\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c" (Invalidate)\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c" (VGA palette)\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c" (Parity)\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c" (Wait)\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c" (Serr)\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c" (Fast back)\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c" (Binary audio)\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c" (pwm audio)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tuple*)* @dump_cis_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_cis_config(%struct.tuple* %0) #0 {
  %2 = alloca %struct.tuple*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.tuple* %0, %struct.tuple** %2, align 8
  %9 = load %struct.tuple*, %struct.tuple** %2, align 8
  %10 = getelementptr inbounds %struct.tuple, %struct.tuple* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.tuple*, %struct.tuple** %2, align 8
  %14 = getelementptr inbounds %struct.tuple, %struct.tuple* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 63
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 64
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %26)
  %28 = load %struct.tuple*, %struct.tuple** %2, align 8
  %29 = getelementptr inbounds %struct.tuple, %struct.tuple* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CIS_CONFIG, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %91

33:                                               ; preds = %1
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %91

38:                                               ; preds = %33
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %3, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 15
  switch i32 %46, label %47 [
    i32 0, label %49
    i32 1, label %51
    i32 4, label %53
    i32 5, label %53
    i32 6, label %53
    i32 7, label %53
    i32 8, label %53
  ]

47:                                               ; preds = %38
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %55

49:                                               ; preds = %38
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %55

51:                                               ; preds = %38
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %55

53:                                               ; preds = %38, %38, %38, %38, %38
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %51, %49, %47
  store i8 32, i8* %8, align 1
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 16
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i8 44, i8* %8, align 1
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i8, i8* %8, align 1
  %69 = sext i8 %68 to i32
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %69)
  store i8 44, i8* %8, align 1
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 64
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i8, i8* %8, align 1
  %78 = sext i8 %77 to i32
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %78)
  store i8 44, i8* %8, align 1
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 128
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i8, i8* %8, align 1
  %87 = sext i8 %86 to i32
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %80
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %33, %1
  %92 = load i32*, i32** %3, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %3, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %3, align 8
  %96 = load i32, i32* %94, align 4
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @CIS_FEAT_POWER(i32 %97)
  switch i32 %98, label %139 [
    i32 0, label %99
    i32 1, label %100
    i32 2, label %107
    i32 3, label %120
  ]

99:                                               ; preds = %91
  br label %139

100:                                              ; preds = %91
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @print_pwr_desc(i32* %102)
  %104 = load i32*, i32** %3, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %3, align 8
  br label %139

107:                                              ; preds = %91
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @print_pwr_desc(i32* %109)
  %111 = load i32*, i32** %3, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %3, align 8
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @print_pwr_desc(i32* %115)
  %117 = load i32*, i32** %3, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %3, align 8
  br label %139

120:                                              ; preds = %91
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @print_pwr_desc(i32* %122)
  %124 = load i32*, i32** %3, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %3, align 8
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @print_pwr_desc(i32* %128)
  %130 = load i32*, i32** %3, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %3, align 8
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 @print_pwr_desc(i32* %134)
  %136 = load i32*, i32** %3, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %3, align 8
  br label %139

139:                                              ; preds = %91, %120, %107, %100, %99
  %140 = load %struct.tuple*, %struct.tuple** %2, align 8
  %141 = getelementptr inbounds %struct.tuple, %struct.tuple* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @CIS_CONFIG, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %193

145:                                              ; preds = %139
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @CIS_FEAT_TIMING, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %193

150:                                              ; preds = %145
  %151 = load i32*, i32** %3, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %3, align 8
  %153 = load i32, i32* %151, align 4
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @CIS_WAIT_SCALE(i32 %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 3
  br i1 %157, label %158, label %166

158:                                              ; preds = %150
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %160 = load i32*, i32** %3, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %3, align 8
  %162 = load i32, i32* %160, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @print_ext_speed(i32 %162, i32 %163)
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %166

166:                                              ; preds = %158, %150
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @CIS_READY_SCALE(i32 %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 7
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  %173 = load i32*, i32** %3, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %3, align 8
  %175 = load i32, i32* %173, align 4
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @print_ext_speed(i32 %175, i32 %176)
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %179

179:                                              ; preds = %171, %166
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @CIS_RESERVED_SCALE(i32 %180)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 7
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %186 = load i32*, i32** %3, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %3, align 8
  %188 = load i32, i32* %186, align 4
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @print_ext_speed(i32 %188, i32 %189)
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %192

192:                                              ; preds = %184, %179
  br label %193

193:                                              ; preds = %192, %145, %139
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* @CIS_FEAT_I_O, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %232

198:                                              ; preds = %193
  %199 = load %struct.tuple*, %struct.tuple** %2, align 8
  %200 = getelementptr inbounds %struct.tuple, %struct.tuple* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @CIS_CONFIG, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load i32*, i32** %3, align 8
  %206 = load i32*, i32** %4, align 8
  %207 = call i32* @print_io_map(i32* %205, i32* %206)
  store i32* %207, i32** %3, align 8
  br label %231

208:                                              ; preds = %198
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %210

210:                                              ; preds = %224, %208
  %211 = load i32, i32* %6, align 4
  %212 = icmp slt i32 %211, 8
  br i1 %212, label %213, label %227

213:                                              ; preds = %210
  %214 = load i32*, i32** %3, align 8
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %6, align 4
  %217 = shl i32 1, %216
  %218 = and i32 %215, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %213
  %221 = load i32, i32* %6, align 4
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %221)
  br label %223

223:                                              ; preds = %220, %213
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  br label %210

227:                                              ; preds = %210
  %228 = call i32 @putchar(i8 signext 10)
  %229 = load i32*, i32** %3, align 8
  %230 = getelementptr inbounds i32, i32* %229, i32 1
  store i32* %230, i32** %3, align 8
  br label %231

231:                                              ; preds = %227, %204
  br label %232

232:                                              ; preds = %231, %193
  %233 = load i32, i32* %5, align 4
  %234 = load i32, i32* @CIS_FEAT_IRQ, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = load i32*, i32** %3, align 8
  %239 = load i32*, i32** %4, align 8
  %240 = call i32* @print_irq_map(i32* %238, i32* %239)
  store i32* %240, i32** %3, align 8
  br label %241

241:                                              ; preds = %237, %232
  %242 = load i32, i32* %5, align 4
  %243 = call i64 @CIS_FEAT_MEMORY(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %280

245:                                              ; preds = %241
  %246 = load %struct.tuple*, %struct.tuple** %2, align 8
  %247 = getelementptr inbounds %struct.tuple, %struct.tuple* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @CIS_CONFIG, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %245
  %252 = load i32, i32* %5, align 4
  %253 = load i32*, i32** %3, align 8
  %254 = load i32*, i32** %4, align 8
  %255 = call i32* @print_mem_map(i32 %252, i32* %253, i32* %254)
  store i32* %255, i32** %3, align 8
  br label %279

256:                                              ; preds = %245
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %258

258:                                              ; preds = %272, %256
  %259 = load i32, i32* %6, align 4
  %260 = icmp slt i32 %259, 8
  br i1 %260, label %261, label %275

261:                                              ; preds = %258
  %262 = load i32*, i32** %3, align 8
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %6, align 4
  %265 = shl i32 1, %264
  %266 = and i32 %263, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %261
  %269 = load i32, i32* %6, align 4
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %268, %261
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %6, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %6, align 4
  br label %258

275:                                              ; preds = %258
  %276 = call i32 @putchar(i8 signext 10)
  %277 = load i32*, i32** %3, align 8
  %278 = getelementptr inbounds i32, i32* %277, i32 1
  store i32* %278, i32** %3, align 8
  br label %279

279:                                              ; preds = %275, %251
  br label %280

280:                                              ; preds = %279, %241
  %281 = load i32, i32* %5, align 4
  %282 = load i32, i32* @CIS_FEAT_MISC, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %397

285:                                              ; preds = %280
  %286 = load %struct.tuple*, %struct.tuple** %2, align 8
  %287 = getelementptr inbounds %struct.tuple, %struct.tuple* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @CIS_CONFIG, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %328

291:                                              ; preds = %285
  %292 = load i32*, i32** %3, align 8
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, 7
  %295 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i32 %294)
  %296 = load i32*, i32** %3, align 8
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, 8
  %299 = icmp ne i32 %298, 0
  %300 = zext i1 %299 to i64
  %301 = select i1 %299, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %302 = load i32*, i32** %3, align 8
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %303, 16
  %305 = icmp ne i32 %304, 0
  %306 = zext i1 %305 to i64
  %307 = select i1 %305, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %308 = load i32*, i32** %3, align 8
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, 32
  %311 = icmp ne i32 %310, 0
  %312 = zext i1 %311 to i64
  %313 = select i1 %311, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %314 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8* %301, i8* %307, i8* %313)
  %315 = load i32*, i32** %3, align 8
  %316 = getelementptr inbounds i32, i32* %315, i32 1
  store i32* %316, i32** %3, align 8
  %317 = load i32, i32* %315, align 4
  %318 = and i32 %317, 128
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %326

320:                                              ; preds = %291
  %321 = load i32*, i32** %3, align 8
  %322 = load i32, i32* %321, align 4
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0), i32 %322)
  %324 = load i32*, i32** %3, align 8
  %325 = getelementptr inbounds i32, i32* %324, i32 1
  store i32* %325, i32** %3, align 8
  br label %326

326:                                              ; preds = %320, %291
  %327 = call i32 @putchar(i8 signext 10)
  br label %396

328:                                              ; preds = %285
  %329 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0))
  %330 = load i32*, i32** %3, align 8
  %331 = load i32, i32* %330, align 4
  %332 = and i32 %331, 1
  %333 = icmp ne i32 %332, 0
  %334 = zext i1 %333 to i64
  %335 = select i1 %333, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %336 = load i32*, i32** %3, align 8
  %337 = load i32, i32* %336, align 4
  %338 = and i32 %337, 2
  %339 = icmp ne i32 %338, 0
  %340 = zext i1 %339 to i64
  %341 = select i1 %339, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %342 = load i32*, i32** %3, align 8
  %343 = load i32, i32* %342, align 4
  %344 = and i32 %343, 4
  %345 = icmp ne i32 %344, 0
  %346 = zext i1 %345 to i64
  %347 = select i1 %345, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %348 = load i32*, i32** %3, align 8
  %349 = load i32, i32* %348, align 4
  %350 = and i32 %349, 8
  %351 = icmp ne i32 %350, 0
  %352 = zext i1 %351 to i64
  %353 = select i1 %351, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %354 = load i32*, i32** %3, align 8
  %355 = load i32, i32* %354, align 4
  %356 = and i32 %355, 16
  %357 = icmp ne i32 %356, 0
  %358 = zext i1 %357 to i64
  %359 = select i1 %357, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %360 = load i32*, i32** %3, align 8
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, 32
  %363 = icmp ne i32 %362, 0
  %364 = zext i1 %363 to i64
  %365 = select i1 %363, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %366 = load i32*, i32** %3, align 8
  %367 = load i32, i32* %366, align 4
  %368 = and i32 %367, 64
  %369 = icmp ne i32 %368, 0
  %370 = zext i1 %369 to i64
  %371 = select i1 %369, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %372 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* %335, i8* %341, i8* %347, i8* %353, i8* %359, i8* %365, i8* %371)
  %373 = load i32*, i32** %3, align 8
  %374 = getelementptr inbounds i32, i32* %373, i32 1
  store i32* %374, i32** %3, align 8
  %375 = load i32, i32* %373, align 4
  %376 = and i32 %375, 128
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %394

378:                                              ; preds = %328
  %379 = load i32*, i32** %3, align 8
  %380 = load i32, i32* %379, align 4
  %381 = and i32 %380, 1
  %382 = icmp ne i32 %381, 0
  %383 = zext i1 %382 to i64
  %384 = select i1 %382, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %385 = load i32*, i32** %3, align 8
  %386 = load i32, i32* %385, align 4
  %387 = and i32 %386, 2
  %388 = icmp ne i32 %387, 0
  %389 = zext i1 %388 to i64
  %390 = select i1 %388, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %391 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8* %384, i8* %390)
  %392 = load i32*, i32** %3, align 8
  %393 = getelementptr inbounds i32, i32* %392, i32 1
  store i32* %393, i32** %3, align 8
  br label %394

394:                                              ; preds = %378, %328
  %395 = call i32 @putchar(i8 signext 10)
  br label %396

396:                                              ; preds = %394, %326
  br label %397

397:                                              ; preds = %396, %280
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @CIS_FEAT_POWER(i32) #1

declare dso_local i32 @print_pwr_desc(i32*) #1

declare dso_local i32 @CIS_WAIT_SCALE(i32) #1

declare dso_local i32 @print_ext_speed(i32, i32) #1

declare dso_local i32 @CIS_READY_SCALE(i32) #1

declare dso_local i32 @CIS_RESERVED_SCALE(i32) #1

declare dso_local i32* @print_io_map(i32*, i32*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32* @print_irq_map(i32*, i32*) #1

declare dso_local i64 @CIS_FEAT_MEMORY(i32) #1

declare dso_local i32* @print_mem_map(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
