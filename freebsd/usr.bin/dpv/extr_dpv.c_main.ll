; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dpv/extr_dpv.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dpv/extr_dpv.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpv_file_node = type { i8*, i32, i8*, %struct.dpv_file_node* }
%struct.dpv_config = type { i8*, i64, i8*, i8*, i32, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32*, i8*, i32* }
%struct.sigaction = type { i32 }

@pgm = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Out of memory?!\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"a:b:dDhi:I:klL:mn:No:p:P:t:TU:wx:X\00", align 1
@DPV_APROMPT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@optarg = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@debug = common dso_local global i8* null, align 8
@DPV_DISPLAY_DIALOG = common dso_local global i64 0, align 8
@line_mode = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"`-L' argument must be numeric\00", align 1
@multiple = common dso_local global i8* null, align 8
@DPV_OUTPUT_FILE = common dso_local global i8* null, align 8
@output_type = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"`-n' argument must be numeric\00", align 1
@no_overrun = common dso_local global i8* null, align 8
@DPV_NO_OVERRUN = common dso_local global i32 0, align 4
@DPV_PPROMPT_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"`-P' argument must be numeric\00", align 1
@DPV_TEST_MODE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"`-U' argument must be numeric\00", align 1
@DPV_WIDE_MODE = common dso_local global i32 0, align 4
@DPV_OUTPUT_SHELL = common dso_local global i8* null, align 8
@DPV_DISPLAY_XDIALOG = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@file_list = common dso_local global %struct.dpv_file_node* null, align 8
@nfiles = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"%lli:%c\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Missing path argument for label number %i\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"no labels provided\00", align 1
@DPV_DISPLAY_LIBDIALOG = common dso_local global i64 0, align 8
@sig_int = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@LINE_STATUS_SOLO = common dso_local global i8* null, align 8
@operate_on_lines = common dso_local global i32 0, align 4
@BYTE_STATUS_SOLO = common dso_local global i8* null, align 8
@operate_on_bytes = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"dpv(3) returned error!?\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dpv_config*, align 8
  %12 = alloca %struct.dpv_file_node*, align 8
  %13 = alloca %struct.sigaction, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i64 128, i64* %9, align 8
  store i64 32, i64* %10, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** @pgm, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i8* @malloc(i64 %17)
  %19 = bitcast i8* %18 to %struct.dpv_config*
  store %struct.dpv_config* %19, %struct.dpv_config** %11, align 8
  %20 = icmp eq %struct.dpv_config* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 (i32, i8*, ...) @errx(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %26 = bitcast %struct.dpv_config* %25 to i8*
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @memset(i8* %26, i8 signext 0, i64 %27)
  br label %29

29:                                               ; preds = %325, %24
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @getopt(i32 %30, i8** %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %7, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %326

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %323 [
    i32 97, label %36
    i32 98, label %62
    i32 100, label %96
    i32 68, label %101
    i32 104, label %105
    i32 105, label %107
    i32 73, label %111
    i32 107, label %115
    i32 108, label %119
    i32 76, label %121
    i32 109, label %148
    i32 111, label %150
    i32 110, label %158
    i32 78, label %185
    i32 112, label %192
    i32 80, label %219
    i32 116, label %246
    i32 84, label %280
    i32 85, label %286
    i32 119, label %304
    i32 120, label %310
    i32 88, label %318
    i32 63, label %322
  ]

36:                                               ; preds = %34
  %37 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %38 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %37, i32 0, i32 16
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load i64, i64* @DPV_APROMPT_MAX, align 8
  %43 = call i8* @malloc(i64 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %46 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %45, i32 0, i32 16
  store i32* %44, i32** %46, align 8
  %47 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %48 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %47, i32 0, i32 16
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @EXIT_FAILURE, align 4
  %53 = call i32 (i32, i8*, ...) @errx(i32 %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %41
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %57 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %56, i32 0, i32 16
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @DPV_APROMPT_MAX, align 8
  %60 = load i8*, i8** @optarg, align 8
  %61 = call i32 @snprintf(i32* %58, i64 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  br label %325

62:                                               ; preds = %34
  %63 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %64 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %69 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @free(i8* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i8*, i8** @optarg, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = call i8* @malloc(i64 %76)
  %78 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %79 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %81 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load i32, i32* @EXIT_FAILURE, align 4
  %86 = call i32 (i32, i8*, ...) @errx(i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %72
  %88 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %89 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  store i8 0, i8* %90, align 1
  %91 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %92 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** @optarg, align 8
  %95 = call i32 @strcat(i8* %93, i8* %94)
  br label %325

96:                                               ; preds = %34
  %97 = load i8*, i8** @TRUE, align 8
  store i8* %97, i8** @debug, align 8
  %98 = load i8*, i8** @debug, align 8
  %99 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %100 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %99, i32 0, i32 15
  store i8* %98, i8** %100, align 8
  br label %325

101:                                              ; preds = %34
  %102 = load i64, i64* @DPV_DISPLAY_DIALOG, align 8
  %103 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %104 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  br label %325

105:                                              ; preds = %34
  %106 = call i32 (...) @usage()
  br label %325

107:                                              ; preds = %34
  %108 = load i8*, i8** @optarg, align 8
  %109 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %110 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  br label %325

111:                                              ; preds = %34
  %112 = load i8*, i8** @optarg, align 8
  %113 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %114 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  br label %325

115:                                              ; preds = %34
  %116 = load i8*, i8** @TRUE, align 8
  %117 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %118 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %117, i32 0, i32 10
  store i8* %116, i8** %118, align 8
  br label %325

119:                                              ; preds = %34
  %120 = load i8*, i8** @TRUE, align 8
  store i8* %120, i8** @line_mode, align 8
  br label %325

121:                                              ; preds = %34
  %122 = load i8*, i8** @optarg, align 8
  %123 = call i64 @strtol(i8* %122, i8** null, i32 10)
  %124 = trunc i64 %123 to i32
  %125 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %126 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %128 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %121
  %132 = load i32, i32* @errno, align 4
  %133 = load i32, i32* @EINVAL, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* @EXIT_FAILURE, align 4
  %137 = call i32 (i32, i8*, ...) @errx(i32 %136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %147

138:                                              ; preds = %131, %121
  %139 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %140 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %141, -1
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %145 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %144, i32 0, i32 4
  store i32 -1, i32* %145, align 8
  br label %146

146:                                              ; preds = %143, %138
  br label %147

147:                                              ; preds = %146, %135
  br label %325

148:                                              ; preds = %34
  %149 = load i8*, i8** @TRUE, align 8
  store i8* %149, i8** @multiple, align 8
  br label %325

150:                                              ; preds = %34
  %151 = load i8*, i8** @DPV_OUTPUT_FILE, align 8
  store i8* %151, i8** @output_type, align 8
  %152 = load i8*, i8** @DPV_OUTPUT_FILE, align 8
  %153 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %154 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %153, i32 0, i32 12
  store i8* %152, i8** %154, align 8
  %155 = load i8*, i8** @optarg, align 8
  %156 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %157 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %156, i32 0, i32 5
  store i8* %155, i8** %157, align 8
  br label %325

158:                                              ; preds = %34
  %159 = load i8*, i8** @optarg, align 8
  %160 = call i64 @strtol(i8* %159, i8** null, i32 10)
  %161 = trunc i64 %160 to i32
  %162 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %163 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %162, i32 0, i32 6
  store i32 %161, i32* %163, align 8
  %164 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %165 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %158
  %169 = load i32, i32* @errno, align 4
  %170 = load i32, i32* @EINVAL, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* @EXIT_FAILURE, align 4
  %174 = call i32 (i32, i8*, ...) @errx(i32 %173, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %184

175:                                              ; preds = %168, %158
  %176 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %177 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %182 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %181, i32 0, i32 6
  store i32 -1, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %175
  br label %184

184:                                              ; preds = %183, %172
  br label %325

185:                                              ; preds = %34
  %186 = load i8*, i8** @TRUE, align 8
  store i8* %186, i8** @no_overrun, align 8
  %187 = load i32, i32* @DPV_NO_OVERRUN, align 4
  %188 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %189 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %188, i32 0, i32 13
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %325

192:                                              ; preds = %34
  %193 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %194 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %193, i32 0, i32 14
  %195 = load i32*, i32** %194, align 8
  %196 = icmp eq i32* %195, null
  br i1 %196, label %197, label %212

197:                                              ; preds = %192
  %198 = load i64, i64* @DPV_PPROMPT_MAX, align 8
  %199 = add i64 %198, 2
  %200 = call i8* @malloc(i64 %199)
  %201 = bitcast i8* %200 to i32*
  %202 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %203 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %202, i32 0, i32 14
  store i32* %201, i32** %203, align 8
  %204 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %205 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %204, i32 0, i32 14
  %206 = load i32*, i32** %205, align 8
  %207 = icmp eq i32* %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %197
  %209 = load i32, i32* @EXIT_FAILURE, align 4
  %210 = call i32 (i32, i8*, ...) @errx(i32 %209, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %211

211:                                              ; preds = %208, %197
  br label %212

212:                                              ; preds = %211, %192
  %213 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %214 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %213, i32 0, i32 14
  %215 = load i32*, i32** %214, align 8
  %216 = load i64, i64* @DPV_PPROMPT_MAX, align 8
  %217 = load i8*, i8** @optarg, align 8
  %218 = call i32 @snprintf(i32* %215, i64 %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %217)
  br label %325

219:                                              ; preds = %34
  %220 = load i8*, i8** @optarg, align 8
  %221 = call i64 @strtol(i8* %220, i8** null, i32 10)
  %222 = trunc i64 %221 to i32
  %223 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %224 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %223, i32 0, i32 7
  store i32 %222, i32* %224, align 4
  %225 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %226 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %219
  %230 = load i32, i32* @errno, align 4
  %231 = load i32, i32* @EINVAL, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = load i32, i32* @EXIT_FAILURE, align 4
  %235 = call i32 (i32, i8*, ...) @errx(i32 %234, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %245

236:                                              ; preds = %229, %219
  %237 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %238 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 4
  %240 = icmp slt i32 %239, -1
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %243 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %242, i32 0, i32 7
  store i32 -1, i32* %243, align 4
  br label %244

244:                                              ; preds = %241, %236
  br label %245

245:                                              ; preds = %244, %233
  br label %325

246:                                              ; preds = %34
  %247 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %248 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %247, i32 0, i32 8
  %249 = load i8*, i8** %248, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %253 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %252, i32 0, i32 8
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @free(i8* %254)
  br label %256

256:                                              ; preds = %251, %246
  %257 = load i8*, i8** @optarg, align 8
  %258 = call i32 @strlen(i8* %257)
  %259 = add nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = call i8* @malloc(i64 %260)
  %262 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %263 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %262, i32 0, i32 8
  store i8* %261, i8** %263, align 8
  %264 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %265 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %264, i32 0, i32 8
  %266 = load i8*, i8** %265, align 8
  %267 = icmp eq i8* %266, null
  br i1 %267, label %268, label %271

268:                                              ; preds = %256
  %269 = load i32, i32* @EXIT_FAILURE, align 4
  %270 = call i32 (i32, i8*, ...) @errx(i32 %269, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %271

271:                                              ; preds = %268, %256
  %272 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %273 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %272, i32 0, i32 8
  %274 = load i8*, i8** %273, align 8
  store i8 0, i8* %274, align 1
  %275 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %276 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %275, i32 0, i32 8
  %277 = load i8*, i8** %276, align 8
  %278 = load i8*, i8** @optarg, align 8
  %279 = call i32 @strcat(i8* %277, i8* %278)
  br label %325

280:                                              ; preds = %34
  %281 = load i32, i32* @DPV_TEST_MODE, align 4
  %282 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %283 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %282, i32 0, i32 13
  %284 = load i32, i32* %283, align 8
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 8
  br label %325

286:                                              ; preds = %34
  %287 = load i8*, i8** @optarg, align 8
  %288 = call i64 @strtol(i8* %287, i8** null, i32 10)
  %289 = trunc i64 %288 to i32
  %290 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %291 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %290, i32 0, i32 9
  store i32 %289, i32* %291, align 8
  %292 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %293 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %292, i32 0, i32 9
  %294 = load i32, i32* %293, align 8
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %286
  %297 = load i32, i32* @errno, align 4
  %298 = load i32, i32* @EINVAL, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = load i32, i32* @EXIT_FAILURE, align 4
  %302 = call i32 (i32, i8*, ...) @errx(i32 %301, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %303

303:                                              ; preds = %300, %296, %286
  br label %325

304:                                              ; preds = %34
  %305 = load i32, i32* @DPV_WIDE_MODE, align 4
  %306 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %307 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %306, i32 0, i32 13
  %308 = load i32, i32* %307, align 8
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 8
  br label %325

310:                                              ; preds = %34
  %311 = load i8*, i8** @DPV_OUTPUT_SHELL, align 8
  store i8* %311, i8** @output_type, align 8
  %312 = load i8*, i8** @DPV_OUTPUT_SHELL, align 8
  %313 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %314 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %313, i32 0, i32 12
  store i8* %312, i8** %314, align 8
  %315 = load i8*, i8** @optarg, align 8
  %316 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %317 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %316, i32 0, i32 5
  store i8* %315, i8** %317, align 8
  br label %325

318:                                              ; preds = %34
  %319 = load i64, i64* @DPV_DISPLAY_XDIALOG, align 8
  %320 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %321 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %320, i32 0, i32 1
  store i64 %319, i64* %321, align 8
  br label %325

322:                                              ; preds = %34
  br label %323

323:                                              ; preds = %34, %322
  %324 = call i32 (...) @usage()
  br label %325

325:                                              ; preds = %323, %318, %310, %304, %303, %280, %271, %245, %212, %185, %184, %150, %148, %147, %119, %115, %111, %107, %105, %101, %96, %87, %55
  br label %29

326:                                              ; preds = %29
  %327 = load i64, i64* @optind, align 8
  %328 = load i32, i32* %4, align 4
  %329 = sext i32 %328 to i64
  %330 = sub nsw i64 %329, %327
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %4, align 4
  %332 = load i64, i64* @optind, align 8
  %333 = load i8**, i8*** %5, align 8
  %334 = getelementptr inbounds i8*, i8** %333, i64 %332
  store i8** %334, i8*** %5, align 8
  %335 = load %struct.dpv_file_node*, %struct.dpv_file_node** @file_list, align 8
  store %struct.dpv_file_node* %335, %struct.dpv_file_node** %12, align 8
  br label %336

336:                                              ; preds = %427, %326
  %337 = load i32, i32* %8, align 4
  %338 = load i32, i32* %4, align 4
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %340, label %430

340:                                              ; preds = %336
  %341 = load i64, i64* @nfiles, align 8
  %342 = add nsw i64 %341, 1
  store i64 %342, i64* @nfiles, align 8
  %343 = load %struct.dpv_file_node*, %struct.dpv_file_node** %12, align 8
  %344 = icmp eq %struct.dpv_file_node* %343, null
  br i1 %344, label %345, label %359

345:                                              ; preds = %340
  %346 = load i64, i64* %10, align 8
  %347 = call i8* @malloc(i64 %346)
  %348 = bitcast i8* %347 to %struct.dpv_file_node*
  store %struct.dpv_file_node* %348, %struct.dpv_file_node** %12, align 8
  %349 = icmp eq %struct.dpv_file_node* %348, null
  br i1 %349, label %350, label %353

350:                                              ; preds = %345
  %351 = load i32, i32* @EXIT_FAILURE, align 4
  %352 = call i32 (i32, i8*, ...) @errx(i32 %351, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %353

353:                                              ; preds = %350, %345
  %354 = load %struct.dpv_file_node*, %struct.dpv_file_node** %12, align 8
  %355 = bitcast %struct.dpv_file_node* %354 to i8*
  %356 = load i64, i64* %10, align 8
  %357 = call i32 @memset(i8* %355, i8 signext 0, i64 %356)
  %358 = load %struct.dpv_file_node*, %struct.dpv_file_node** %12, align 8
  store %struct.dpv_file_node* %358, %struct.dpv_file_node** @file_list, align 8
  br label %379

359:                                              ; preds = %340
  %360 = load i64, i64* %10, align 8
  %361 = call i8* @malloc(i64 %360)
  %362 = bitcast i8* %361 to %struct.dpv_file_node*
  %363 = load %struct.dpv_file_node*, %struct.dpv_file_node** %12, align 8
  %364 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %363, i32 0, i32 3
  store %struct.dpv_file_node* %362, %struct.dpv_file_node** %364, align 8
  %365 = icmp eq %struct.dpv_file_node* %362, null
  br i1 %365, label %366, label %369

366:                                              ; preds = %359
  %367 = load i32, i32* @EXIT_FAILURE, align 4
  %368 = call i32 (i32, i8*, ...) @errx(i32 %367, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %369

369:                                              ; preds = %366, %359
  %370 = load %struct.dpv_file_node*, %struct.dpv_file_node** %12, align 8
  %371 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %370, i32 0, i32 3
  %372 = load %struct.dpv_file_node*, %struct.dpv_file_node** %371, align 8
  %373 = bitcast %struct.dpv_file_node* %372 to i8*
  %374 = load i64, i64* %10, align 8
  %375 = call i32 @memset(i8* %373, i8 signext 0, i64 %374)
  %376 = load %struct.dpv_file_node*, %struct.dpv_file_node** %12, align 8
  %377 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %376, i32 0, i32 3
  %378 = load %struct.dpv_file_node*, %struct.dpv_file_node** %377, align 8
  store %struct.dpv_file_node* %378, %struct.dpv_file_node** %12, align 8
  br label %379

379:                                              ; preds = %369, %353
  %380 = load i8**, i8*** %5, align 8
  %381 = load i32, i32* %8, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8*, i8** %380, i64 %382
  %384 = load i8*, i8** %383, align 8
  %385 = load %struct.dpv_file_node*, %struct.dpv_file_node** %12, align 8
  %386 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %385, i32 0, i32 0
  store i8* %384, i8** %386, align 8
  %387 = load %struct.dpv_file_node*, %struct.dpv_file_node** %12, align 8
  %388 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %387, i32 0, i32 0
  %389 = load i8*, i8** %388, align 8
  %390 = load %struct.dpv_file_node*, %struct.dpv_file_node** %12, align 8
  %391 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %390, i32 0, i32 1
  %392 = call i32 @sscanf(i8* %389, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %391, i8* %6)
  %393 = icmp eq i32 %392, 2
  br i1 %393, label %394, label %402

394:                                              ; preds = %379
  %395 = load %struct.dpv_file_node*, %struct.dpv_file_node** %12, align 8
  %396 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %395, i32 0, i32 0
  %397 = load i8*, i8** %396, align 8
  %398 = call i8* @strchr(i8* %397, i8 signext 58)
  %399 = getelementptr inbounds i8, i8* %398, i64 1
  %400 = load %struct.dpv_file_node*, %struct.dpv_file_node** %12, align 8
  %401 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %400, i32 0, i32 0
  store i8* %399, i8** %401, align 8
  br label %405

402:                                              ; preds = %379
  %403 = load %struct.dpv_file_node*, %struct.dpv_file_node** %12, align 8
  %404 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %403, i32 0, i32 1
  store i32 -1, i32* %404, align 8
  br label %405

405:                                              ; preds = %402, %394
  %406 = load i8*, i8** @multiple, align 8
  %407 = icmp ne i8* %406, null
  br i1 %407, label %408, label %425

408:                                              ; preds = %405
  %409 = load i32, i32* %8, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %8, align 4
  %411 = load i32, i32* %4, align 4
  %412 = icmp sge i32 %410, %411
  br i1 %412, label %413, label %417

413:                                              ; preds = %408
  %414 = load i32, i32* @EXIT_FAILURE, align 4
  %415 = load i64, i64* @nfiles, align 8
  %416 = call i32 (i32, i8*, ...) @errx(i32 %414, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i64 %415)
  br label %417

417:                                              ; preds = %413, %408
  %418 = load i8**, i8*** %5, align 8
  %419 = load i32, i32* %8, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i8*, i8** %418, i64 %420
  %422 = load i8*, i8** %421, align 8
  %423 = load %struct.dpv_file_node*, %struct.dpv_file_node** %12, align 8
  %424 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %423, i32 0, i32 2
  store i8* %422, i8** %424, align 8
  br label %426

425:                                              ; preds = %405
  br label %430

426:                                              ; preds = %417
  br label %427

427:                                              ; preds = %426
  %428 = load i32, i32* %8, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %8, align 4
  br label %336

430:                                              ; preds = %425, %336
  %431 = load i64, i64* @nfiles, align 8
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %433, label %436

433:                                              ; preds = %430
  %434 = call i32 @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %435 = call i32 (...) @usage()
  br label %436

436:                                              ; preds = %433, %430
  %437 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %438 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %437, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = load i64, i64* @DPV_DISPLAY_LIBDIALOG, align 8
  %441 = icmp eq i64 %439, %440
  br i1 %441, label %442, label %447

442:                                              ; preds = %436
  %443 = load i32, i32* @sig_int, align 4
  %444 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %13, i32 0, i32 0
  store i32 %443, i32* %444, align 4
  %445 = load i32, i32* @SIGINT, align 4
  %446 = call i32 @sigaction(i32 %445, %struct.sigaction* %13, i32 0)
  br label %447

447:                                              ; preds = %442, %436
  %448 = load i8*, i8** @line_mode, align 8
  %449 = icmp ne i8* %448, null
  br i1 %449, label %450, label %460

450:                                              ; preds = %447
  %451 = load i8*, i8** @LINE_STATUS_SOLO, align 8
  %452 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %453 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %452, i32 0, i32 2
  store i8* %451, i8** %453, align 8
  %454 = load i8*, i8** @LINE_STATUS_SOLO, align 8
  %455 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %456 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %455, i32 0, i32 3
  store i8* %454, i8** %456, align 8
  %457 = load i32, i32* @operate_on_lines, align 4
  %458 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %459 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %458, i32 0, i32 11
  store i32 %457, i32* %459, align 8
  br label %470

460:                                              ; preds = %447
  %461 = load i8*, i8** @BYTE_STATUS_SOLO, align 8
  %462 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %463 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %462, i32 0, i32 2
  store i8* %461, i8** %463, align 8
  %464 = load i8*, i8** @BYTE_STATUS_SOLO, align 8
  %465 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %466 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %465, i32 0, i32 3
  store i8* %464, i8** %466, align 8
  %467 = load i32, i32* @operate_on_bytes, align 4
  %468 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %469 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %468, i32 0, i32 11
  store i32 %467, i32* %469, align 8
  br label %470

470:                                              ; preds = %460, %450
  %471 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %472 = load %struct.dpv_file_node*, %struct.dpv_file_node** @file_list, align 8
  %473 = call i64 @dpv(%struct.dpv_config* %471, %struct.dpv_file_node* %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %480

475:                                              ; preds = %470
  %476 = load i8*, i8** @debug, align 8
  %477 = icmp ne i8* %476, null
  br i1 %477, label %478, label %480

478:                                              ; preds = %475
  %479 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %480

480:                                              ; preds = %478, %475, %470
  %481 = load %struct.dpv_config*, %struct.dpv_config** %11, align 8
  %482 = getelementptr inbounds %struct.dpv_config, %struct.dpv_config* %481, i32 0, i32 10
  %483 = load i8*, i8** %482, align 8
  %484 = icmp ne i8* %483, null
  br i1 %484, label %487, label %485

485:                                              ; preds = %480
  %486 = call i32 (...) @end_dialog()
  br label %487

487:                                              ; preds = %485, %480
  %488 = call i32 (...) @dpv_free()
  %489 = load i32, i32* @EXIT_SUCCESS, align 4
  %490 = call i32 @exit(i32 %489) #3
  unreachable
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @snprintf(i32*, i64, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32) #1

declare dso_local i64 @dpv(%struct.dpv_config*, %struct.dpv_file_node*) #1

declare dso_local i32 @end_dialog(...) #1

declare dso_local i32 @dpv_free(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
