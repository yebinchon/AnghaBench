; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mt/extr_mt.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mt/extr_mt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commands = type { i32, i32, i32*, i64 }
%struct.mtget = type { i32, i32, i32, i32, i32 }
%struct.mtop = type { i32, i32, i32, i32, i32 }
%union.mterrstat = type { %struct.scsi_tape_errors }
%struct.scsi_tape_errors = type { i32, i32*, i32*, i32, i32*, i32* }
%struct.mtrblim = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"TAPE\00", align 1
@DEFTAPE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"f:t:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@com = common dso_local global %struct.commands* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"%s: unknown command\00", align 1
@NEED_2ARGS = common dso_local global i32 0, align 4
@DISABLE_THIS = common dso_local global i32 0, align 4
@USE_GETOPT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MTNOP = common dso_local global i32 0, align 4
@IS_DENSITY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"%s: unknown density\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Using \22%s\22 as an alias for %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IS_COMP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"%s: unknown compression\00", align 1
@ZERO_ALLOWED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"%s: illegal count\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Last I/O Residual: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c" Last I/O Command:\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"   Last I/O Sense:\0A\0A\09\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Last Control Residual: %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c" Last Control Command:\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"   Last Control Sense:\0A\0A\09\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"%s: %s block location %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"hardware\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"%s: the model is %u filemar%s at EOT\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"ks\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"%s: old model was %u filemar%s at EOT\0A\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"%s: new model  is %u filemar%s at EOT\0A\00", align 1
@.str.27 = private unnamed_addr constant [87 x i8] c"%s:\0A    min blocksize %u byte%s\0A    max blocksize %u byte%s\0A    granularity %u byte%s\0A\00", align 1
@MTIOCTOP = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@MTIOCGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.commands*, align 8
  %7 = alloca %struct.mtget, align 4
  %8 = alloca %struct.mtop, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %union.mterrstat, align 8
  %18 = alloca %struct.scsi_tape_errors*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.mtrblim, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %27 = bitcast %struct.mtop* %8 to %struct.mtrblim*
  %28 = call i32 @bzero(%struct.mtrblim* %27, i32 20)
  %29 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %13, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i8*, i8** @DEFTAPE, align 8
  store i8* %32, i8** %13, align 8
  br label %33

33:                                               ; preds = %31, %2
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = call i32 @getopt(i32 %35, i8** %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %9, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %45 [
    i32 102, label %41
    i32 116, label %41
    i32 63, label %43
  ]

41:                                               ; preds = %39, %39
  %42 = load i8*, i8** @optarg, align 8
  store i8* %42, i8** %13, align 8
  br label %46

43:                                               ; preds = %39
  %44 = call i32 (...) @usage()
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %43, %41
  br label %34

47:                                               ; preds = %34
  %48 = load i64, i64* @optind, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  %53 = load i64, i64* @optind, align 8
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 %53
  store i8** %55, i8*** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %58, %47
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %5, align 8
  %63 = load i8*, i8** %61, align 8
  store i8* %63, i8** %12, align 8
  %64 = call i32 @strlen(i8* %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.commands*, %struct.commands** @com, align 8
  store %struct.commands* %65, %struct.commands** %6, align 8
  br label %66

66:                                               ; preds = %84, %60
  %67 = load %struct.commands*, %struct.commands** %6, align 8
  %68 = getelementptr inbounds %struct.commands, %struct.commands* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.commands*, %struct.commands** %6, align 8
  %77 = getelementptr inbounds %struct.commands, %struct.commands* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @strncmp(i8* %75, i32* %78, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %87

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.commands*, %struct.commands** %6, align 8
  %86 = getelementptr inbounds %struct.commands, %struct.commands* %85, i32 1
  store %struct.commands* %86, %struct.commands** %6, align 8
  br label %66

87:                                               ; preds = %82
  %88 = load %struct.commands*, %struct.commands** %6, align 8
  %89 = getelementptr inbounds %struct.commands, %struct.commands* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @NEED_2ARGS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 2
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (...) @usage()
  br label %99

99:                                               ; preds = %97, %94, %87
  %100 = load %struct.commands*, %struct.commands** %6, align 8
  %101 = getelementptr inbounds %struct.commands, %struct.commands* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @DISABLE_THIS, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = call i32 (...) @warn_eof()
  br label %108

108:                                              ; preds = %106, %99
  %109 = load %struct.commands*, %struct.commands** %6, align 8
  %110 = getelementptr inbounds %struct.commands, %struct.commands* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @USE_GETOPT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %4, align 4
  store i64 0, i64* @optind, align 8
  br label %118

118:                                              ; preds = %115, %108
  %119 = load i8*, i8** %13, align 8
  %120 = load %struct.commands*, %struct.commands** %6, align 8
  %121 = getelementptr inbounds %struct.commands, %struct.commands* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @O_RDONLY, align 4
  br label %128

126:                                              ; preds = %118
  %127 = load i32, i32* @O_RDWR, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = call i32 @open(i8* %119, i32 %129)
  store i32 %130, i32* %11, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i8*, i8** %13, align 8
  %134 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %132, %128
  %136 = load %struct.commands*, %struct.commands** %6, align 8
  %137 = getelementptr inbounds %struct.commands, %struct.commands* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @MTNOP, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %537

141:                                              ; preds = %135
  %142 = load %struct.commands*, %struct.commands** %6, align 8
  %143 = getelementptr inbounds %struct.commands, %struct.commands* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.mtop, %struct.mtop* %8, i32 0, i32 0
  store i32 %144, i32* %145, align 4
  %146 = load i8**, i8*** %5, align 8
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %266

149:                                              ; preds = %141
  %150 = load i8**, i8*** %5, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = load i8, i8* %151, align 1
  %153 = call i32 @isdigit(i8 signext %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %189, label %155

155:                                              ; preds = %149
  %156 = load %struct.commands*, %struct.commands** %6, align 8
  %157 = getelementptr inbounds %struct.commands, %struct.commands* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @IS_DENSITY, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %189

162:                                              ; preds = %155
  %163 = load i8**, i8*** %5, align 8
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @mt_density_num(i8* %164)
  %166 = getelementptr inbounds %struct.mtop, %struct.mtop* %8, i32 0, i32 1
  store i32 %165, i32* %166, align 4
  %167 = getelementptr inbounds %struct.mtop, %struct.mtop* %8, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %162
  %171 = load i8**, i8*** %5, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %170, %162
  %175 = getelementptr inbounds %struct.mtop, %struct.mtop* %8, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @denstostring(i32 %176)
  store i8* %177, i8** %14, align 8
  %178 = load i8*, i8** %14, align 8
  %179 = load i8**, i8*** %5, align 8
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @strcmp(i8* %178, i8* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %174
  %184 = load i8**, i8*** %5, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = load i8*, i8** %14, align 8
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %185, i8* %186)
  br label %188

188:                                              ; preds = %183, %174
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %230

189:                                              ; preds = %155, %149
  %190 = load i8**, i8*** %5, align 8
  %191 = load i8*, i8** %190, align 8
  %192 = load i8, i8* %191, align 1
  %193 = call i32 @isdigit(i8 signext %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %215, label %195

195:                                              ; preds = %189
  %196 = load %struct.commands*, %struct.commands** %6, align 8
  %197 = getelementptr inbounds %struct.commands, %struct.commands* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @IS_COMP, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %195
  %203 = load i8**, i8*** %5, align 8
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @stringtocomp(i8* %204)
  %206 = getelementptr inbounds %struct.mtop, %struct.mtop* %8, i32 0, i32 1
  store i32 %205, i32* %206, align 4
  %207 = getelementptr inbounds %struct.mtop, %struct.mtop* %8, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, -252645136
  br i1 %209, label %210, label %214

210:                                              ; preds = %202
  %211 = load i8**, i8*** %5, align 8
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %212)
  br label %214

214:                                              ; preds = %210, %202
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %229

215:                                              ; preds = %195, %189
  %216 = load %struct.commands*, %struct.commands** %6, align 8
  %217 = getelementptr inbounds %struct.commands, %struct.commands* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @USE_GETOPT, align 4
  %220 = and i32 %218, %219
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %215
  %223 = load i8**, i8*** %5, align 8
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @strtol(i8* %224, i8** %15, i32 0)
  %226 = getelementptr inbounds %struct.mtop, %struct.mtop* %8, i32 0, i32 1
  store i32 %225, i32* %226, align 4
  %227 = load i8*, i8** %15, align 8
  store i8* %227, i8** %12, align 8
  br label %228

228:                                              ; preds = %222, %215
  br label %229

229:                                              ; preds = %228, %214
  br label %230

230:                                              ; preds = %229, %188
  %231 = load %struct.commands*, %struct.commands** %6, align 8
  %232 = getelementptr inbounds %struct.commands, %struct.commands* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @USE_GETOPT, align 4
  %235 = and i32 %233, %234
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %265

237:                                              ; preds = %230
  %238 = getelementptr inbounds %struct.mtop, %struct.mtop* %8, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.commands*, %struct.commands** %6, align 8
  %241 = getelementptr inbounds %struct.commands, %struct.commands* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @ZERO_ALLOWED, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i32 -1, i32 0
  %248 = icmp sle i32 %239, %247
  br i1 %248, label %249, label %256

249:                                              ; preds = %237
  %250 = load %struct.commands*, %struct.commands** %6, align 8
  %251 = getelementptr inbounds %struct.commands, %struct.commands* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @IS_COMP, align 4
  %254 = and i32 %252, %253
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %249, %237
  %257 = load i8*, i8** %12, align 8
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %256, %249
  %262 = load i8**, i8*** %5, align 8
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %263)
  br label %265

265:                                              ; preds = %261, %256, %230
  br label %268

266:                                              ; preds = %141
  %267 = getelementptr inbounds %struct.mtop, %struct.mtop* %8, i32 0, i32 1
  store i32 1, i32* %267, align 4
  br label %268

268:                                              ; preds = %266, %265
  %269 = load %struct.commands*, %struct.commands** %6, align 8
  %270 = getelementptr inbounds %struct.commands, %struct.commands* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  switch i32 %271, label %523 [
    i32 140, label %272
    i32 133, label %384
    i32 132, label %384
    i32 130, label %406
    i32 136, label %406
    i32 137, label %421
    i32 131, label %438
    i32 134, label %475
    i32 135, label %504
    i32 139, label %504
    i32 128, label %504
    i32 129, label %504
    i32 138, label %515
  ]

272:                                              ; preds = %268
  %273 = bitcast %union.mterrstat* %17 to %struct.scsi_tape_errors*
  store %struct.scsi_tape_errors* %273, %struct.scsi_tape_errors** %18, align 8
  %274 = load i32, i32* %11, align 4
  %275 = load %struct.commands*, %struct.commands** %6, align 8
  %276 = getelementptr inbounds %struct.commands, %struct.commands* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = bitcast %union.mterrstat* %17 to %struct.mtrblim*
  %279 = call i64 @ioctl(i32 %274, i32 %277, %struct.mtrblim* %278)
  %280 = icmp slt i64 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %272
  %282 = load i8*, i8** %13, align 8
  %283 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %282)
  br label %284

284:                                              ; preds = %281, %272
  %285 = load %struct.scsi_tape_errors*, %struct.scsi_tape_errors** %18, align 8
  %286 = getelementptr inbounds %struct.scsi_tape_errors, %struct.scsi_tape_errors* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %287)
  %289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %290

290:                                              ; preds = %303, %284
  %291 = load i32, i32* %16, align 4
  %292 = zext i32 %291 to i64
  %293 = icmp ult i64 %292, 8
  br i1 %293, label %294, label %306

294:                                              ; preds = %290
  %295 = load %struct.scsi_tape_errors*, %struct.scsi_tape_errors** %18, align 8
  %296 = getelementptr inbounds %struct.scsi_tape_errors, %struct.scsi_tape_errors* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %16, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %301)
  br label %303

303:                                              ; preds = %294
  %304 = load i32, i32* %16, align 4
  %305 = add i32 %304, 1
  store i32 %305, i32* %16, align 4
  br label %290

306:                                              ; preds = %290
  %307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %309

309:                                              ; preds = %329, %306
  %310 = load i32, i32* %16, align 4
  %311 = zext i32 %310 to i64
  %312 = icmp ult i64 %311, 8
  br i1 %312, label %313, label %332

313:                                              ; preds = %309
  %314 = load %struct.scsi_tape_errors*, %struct.scsi_tape_errors** %18, align 8
  %315 = getelementptr inbounds %struct.scsi_tape_errors, %struct.scsi_tape_errors* %314, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %16, align 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %320)
  %322 = load i32, i32* %16, align 4
  %323 = add i32 %322, 1
  %324 = and i32 %323, 15
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %313
  %327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %328

328:                                              ; preds = %326, %313
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %16, align 4
  %331 = add i32 %330, 1
  store i32 %331, i32* %16, align 4
  br label %309

332:                                              ; preds = %309
  %333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %334 = load %struct.scsi_tape_errors*, %struct.scsi_tape_errors** %18, align 8
  %335 = getelementptr inbounds %struct.scsi_tape_errors, %struct.scsi_tape_errors* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 8
  %337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 %336)
  %338 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %339

339:                                              ; preds = %352, %332
  %340 = load i32, i32* %16, align 4
  %341 = zext i32 %340 to i64
  %342 = icmp ult i64 %341, 8
  br i1 %342, label %343, label %355

343:                                              ; preds = %339
  %344 = load %struct.scsi_tape_errors*, %struct.scsi_tape_errors** %18, align 8
  %345 = getelementptr inbounds %struct.scsi_tape_errors, %struct.scsi_tape_errors* %344, i32 0, i32 4
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %16, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %350)
  br label %352

352:                                              ; preds = %343
  %353 = load i32, i32* %16, align 4
  %354 = add i32 %353, 1
  store i32 %354, i32* %16, align 4
  br label %339

355:                                              ; preds = %339
  %356 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %357 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %358

358:                                              ; preds = %378, %355
  %359 = load i32, i32* %16, align 4
  %360 = zext i32 %359 to i64
  %361 = icmp ult i64 %360, 8
  br i1 %361, label %362, label %381

362:                                              ; preds = %358
  %363 = load %struct.scsi_tape_errors*, %struct.scsi_tape_errors** %18, align 8
  %364 = getelementptr inbounds %struct.scsi_tape_errors, %struct.scsi_tape_errors* %363, i32 0, i32 5
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %16, align 4
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %369)
  %371 = load i32, i32* %16, align 4
  %372 = add i32 %371, 1
  %373 = and i32 %372, 15
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %362
  %376 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %377

377:                                              ; preds = %375, %362
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %16, align 4
  %380 = add i32 %379, 1
  store i32 %380, i32* %16, align 4
  br label %358

381:                                              ; preds = %358
  %382 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %383 = call i32 @exit(i32 0) #3
  unreachable

384:                                              ; preds = %268, %268
  %385 = load i32, i32* %11, align 4
  %386 = load %struct.commands*, %struct.commands** %6, align 8
  %387 = getelementptr inbounds %struct.commands, %struct.commands* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = bitcast i32* %19 to %struct.mtrblim*
  %390 = call i64 @ioctl(i32 %385, i32 %388, %struct.mtrblim* %389)
  %391 = icmp slt i64 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %384
  %393 = load i8*, i8** %13, align 8
  %394 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %393)
  br label %395

395:                                              ; preds = %392, %384
  %396 = load i8*, i8** %13, align 8
  %397 = load %struct.commands*, %struct.commands** %6, align 8
  %398 = getelementptr inbounds %struct.commands, %struct.commands* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = icmp eq i32 %399, 133
  %401 = zext i1 %400 to i64
  %402 = select i1 %400, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0)
  %403 = load i32, i32* %19, align 4
  %404 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i8* %396, i8* %402, i32 %403)
  %405 = call i32 @exit(i32 0) #3
  unreachable

406:                                              ; preds = %268, %268
  %407 = getelementptr inbounds %struct.mtop, %struct.mtop* %8, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  store i32 %408, i32* %20, align 4
  %409 = load i32, i32* %11, align 4
  %410 = load %struct.commands*, %struct.commands** %6, align 8
  %411 = getelementptr inbounds %struct.commands, %struct.commands* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = bitcast i32* %20 to %struct.mtrblim*
  %414 = call i64 @ioctl(i32 %409, i32 %412, %struct.mtrblim* %413)
  %415 = icmp slt i64 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %406
  %417 = load i8*, i8** %13, align 8
  %418 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %417)
  br label %419

419:                                              ; preds = %416, %406
  %420 = call i32 @exit(i32 0) #3
  unreachable

421:                                              ; preds = %268
  %422 = load i32, i32* %11, align 4
  %423 = bitcast i32* %21 to %struct.mtrblim*
  %424 = call i64 @ioctl(i32 %422, i32 137, %struct.mtrblim* %423)
  %425 = icmp slt i64 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %421
  %427 = load i8*, i8** %13, align 8
  %428 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %427)
  br label %429

429:                                              ; preds = %426, %421
  %430 = load i8*, i8** %13, align 8
  %431 = load i32, i32* %21, align 4
  %432 = load i32, i32* %21, align 4
  %433 = icmp sgt i32 %432, 1
  %434 = zext i1 %433 to i64
  %435 = select i1 %433, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)
  %436 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i8* %430, i32 %431, i8* %435)
  %437 = call i32 @exit(i32 0) #3
  unreachable

438:                                              ; preds = %268
  %439 = getelementptr inbounds %struct.mtop, %struct.mtop* %8, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  store i32 %440, i32* %23, align 4
  %441 = load i32, i32* %11, align 4
  %442 = bitcast i32* %22 to %struct.mtrblim*
  %443 = call i64 @ioctl(i32 %441, i32 137, %struct.mtrblim* %442)
  %444 = icmp slt i64 %443, 0
  br i1 %444, label %445, label %448

445:                                              ; preds = %438
  %446 = load i8*, i8** %13, align 8
  %447 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %446)
  br label %448

448:                                              ; preds = %445, %438
  %449 = load i32, i32* %11, align 4
  %450 = load %struct.commands*, %struct.commands** %6, align 8
  %451 = getelementptr inbounds %struct.commands, %struct.commands* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = bitcast i32* %23 to %struct.mtrblim*
  %454 = call i64 @ioctl(i32 %449, i32 %452, %struct.mtrblim* %453)
  %455 = icmp slt i64 %454, 0
  br i1 %455, label %456, label %459

456:                                              ; preds = %448
  %457 = load i8*, i8** %13, align 8
  %458 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %457)
  br label %459

459:                                              ; preds = %456, %448
  %460 = load i8*, i8** %13, align 8
  %461 = load i32, i32* %22, align 4
  %462 = load i32, i32* %22, align 4
  %463 = icmp sgt i32 %462, 1
  %464 = zext i1 %463 to i64
  %465 = select i1 %463, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)
  %466 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i8* %460, i32 %461, i8* %465)
  %467 = load i8*, i8** %13, align 8
  %468 = load i32, i32* %23, align 4
  %469 = load i32, i32* %23, align 4
  %470 = icmp sgt i32 %469, 1
  %471 = zext i1 %470 to i64
  %472 = select i1 %470, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)
  %473 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i8* %467, i32 %468, i8* %472)
  %474 = call i32 @exit(i32 0) #3
  unreachable

475:                                              ; preds = %268
  %476 = call i32 @bzero(%struct.mtrblim* %24, i32 20)
  %477 = load i32, i32* %11, align 4
  %478 = call i64 @ioctl(i32 %477, i32 134, %struct.mtrblim* %24)
  %479 = icmp slt i64 %478, 0
  br i1 %479, label %480, label %483

480:                                              ; preds = %475
  %481 = load i8*, i8** %13, align 8
  %482 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %481)
  br label %483

483:                                              ; preds = %480, %475
  %484 = load i8*, i8** %13, align 8
  %485 = getelementptr inbounds %struct.mtrblim, %struct.mtrblim* %24, i32 0, i32 2
  %486 = load i32, i32* %485, align 4
  %487 = getelementptr inbounds %struct.mtrblim, %struct.mtrblim* %24, i32 0, i32 2
  %488 = load i32, i32* %487, align 4
  %489 = call i8* @MT_PLURAL(i32 %488)
  %490 = getelementptr inbounds %struct.mtrblim, %struct.mtrblim* %24, i32 0, i32 3
  %491 = load i32, i32* %490, align 4
  %492 = getelementptr inbounds %struct.mtrblim, %struct.mtrblim* %24, i32 0, i32 3
  %493 = load i32, i32* %492, align 4
  %494 = call i8* @MT_PLURAL(i32 %493)
  %495 = getelementptr inbounds %struct.mtrblim, %struct.mtrblim* %24, i32 0, i32 4
  %496 = load i32, i32* %495, align 4
  %497 = shl i32 1, %496
  %498 = getelementptr inbounds %struct.mtrblim, %struct.mtrblim* %24, i32 0, i32 4
  %499 = load i32, i32* %498, align 4
  %500 = shl i32 1, %499
  %501 = call i8* @MT_PLURAL(i32 %500)
  %502 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.27, i64 0, i64 0), i8* %484, i32 %486, i8* %489, i32 %491, i8* %494, i32 %497, i8* %501)
  %503 = call i32 @exit(i32 0) #3
  unreachable

504:                                              ; preds = %268, %268, %268, %268
  store i32 0, i32* %25, align 4
  %505 = load %struct.commands*, %struct.commands** %6, align 8
  %506 = getelementptr inbounds %struct.commands, %struct.commands* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* %4, align 4
  %509 = load i8**, i8*** %5, align 8
  %510 = load i32, i32* %11, align 4
  %511 = load i8*, i8** %13, align 8
  %512 = call i32 @mt_xml_cmd(i32 %507, i32 %508, i8** %509, i32 %510, i8* %511)
  store i32 %512, i32* %25, align 4
  %513 = load i32, i32* %25, align 4
  %514 = call i32 @exit(i32 %513) #3
  unreachable

515:                                              ; preds = %268
  store i32 0, i32* %26, align 4
  %516 = load i32, i32* %4, align 4
  %517 = load i8**, i8*** %5, align 8
  %518 = load i32, i32* %11, align 4
  %519 = load i8*, i8** %13, align 8
  %520 = call i32 @mt_locate(i32 %516, i8** %517, i32 %518, i8* %519)
  store i32 %520, i32* %26, align 4
  %521 = load i32, i32* %26, align 4
  %522 = call i32 @exit(i32 %521) #3
  unreachable

523:                                              ; preds = %268
  br label %524

524:                                              ; preds = %523
  %525 = load i32, i32* %11, align 4
  %526 = load i32, i32* @MTIOCTOP, align 4
  %527 = bitcast %struct.mtop* %8 to %struct.mtrblim*
  %528 = call i64 @ioctl(i32 %525, i32 %526, %struct.mtrblim* %527)
  %529 = icmp slt i64 %528, 0
  br i1 %529, label %530, label %536

530:                                              ; preds = %524
  %531 = load i8*, i8** %13, align 8
  %532 = load %struct.commands*, %struct.commands** %6, align 8
  %533 = getelementptr inbounds %struct.commands, %struct.commands* %532, i32 0, i32 2
  %534 = load i32*, i32** %533, align 8
  %535 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* %531, i32* %534)
  br label %536

536:                                              ; preds = %530, %524
  br label %548

537:                                              ; preds = %135
  %538 = load i32, i32* %11, align 4
  %539 = load i32, i32* @MTIOCGET, align 4
  %540 = bitcast %struct.mtget* %7 to %struct.mtrblim*
  %541 = call i64 @ioctl(i32 %538, i32 %539, %struct.mtrblim* %540)
  %542 = icmp slt i64 %541, 0
  br i1 %542, label %543, label %545

543:                                              ; preds = %537
  %544 = call i32 (i32, i8*, ...) @err(i32 1, i8* null)
  br label %545

545:                                              ; preds = %543, %537
  %546 = bitcast %struct.mtget* %7 to %struct.mtrblim*
  %547 = call i32 @status(%struct.mtrblim* %546)
  br label %548

548:                                              ; preds = %545, %536
  %549 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @bzero(%struct.mtrblim*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i32*, i32) #1

declare dso_local i32 @warn_eof(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @mt_density_num(i8*) #1

declare dso_local i8* @denstostring(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @stringtocomp(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.mtrblim*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @MT_PLURAL(i32) #1

declare dso_local i32 @mt_xml_cmd(i32, i32, i8**, i32, i8*) #1

declare dso_local i32 @mt_locate(i32, i8**, i32, i8*) #1

declare dso_local i32 @status(%struct.mtrblim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
