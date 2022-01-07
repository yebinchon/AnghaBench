; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctladm/extr_ctladm.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctladm/extr_ctladm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"C:D:I:\00", align 1
@CTLADM_ARG_NONE = common dso_local global i32 0, align 4
@option_table = common dso_local global i32 0, align 4
@CC_OR_AMBIGUOUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"ambiguous option %s\00", align 1
@CC_OR_NOT_FOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"option %s not found\00", align 1
@CTLADM_ARG_NEED_TL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"option %s requires a lun argument\00", align 1
@CTLADM_ARG_TARG_LUN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@optind = common dso_local global i32 0, align 4
@CTLADM_ARG_RETRIES = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@CTLADM_ARG_DEVICE = common dso_local global i32 0, align 4
@CTLADM_ARG_INITIATOR = common dso_local global i32 0, align 4
@optreset = common dso_local global i32 0, align 4
@CTL_DEFAULT_DEV = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"ctl\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"%s: error opening %s: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"%s: you must specify a device with the --device argument for this command\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 2, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* @CTLADM_ARG_NONE, align 4
  store i32 %21, i32* %8, align 4
  store i32 152, i32* %7, align 4
  store i8* null, i8** %10, align 8
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %14, align 4
  store i32 7, i32* %19, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 @usage(i32 1)
  store i32 1, i32* %16, align 4
  br label %403

26:                                               ; preds = %2
  %27 = load i32, i32* @option_table, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @getoption(i32 %27, i8* %30, i32* %7, i32* %8, i8** %12)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @CC_OR_AMBIGUOUS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = call i32 @usage(i32 0)
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %26
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @CC_OR_NOT_FOUND, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = call i32 @usage(i32 0)
  %52 = call i32 @exit(i32 1) #3
  unreachable

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @CTLADM_ARG_NEED_TL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 2
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @isdigit(i8 signext %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %62, %59
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = call i32 @usage(i32 0)
  %76 = call i32 @exit(i32 1) #3
  unreachable

77:                                               ; preds = %62
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strtol(i8* %80, i32* null, i32 0)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* @CTLADM_ARG_TARG_LUN, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %77, %54
  %88 = load i8*, i8** %12, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %92 = load i8*, i8** %11, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %92, i8* %93)
  br label %99

95:                                               ; preds = %87
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %95, %90
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* @optind, align 4
  br label %101

101:                                              ; preds = %128, %99
  %102 = load i32, i32* %4, align 4
  %103 = load i8**, i8*** %5, align 8
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %105 = call i32 @getopt(i32 %102, i8** %103, i8* %104)
  store i32 %105, i32* %6, align 4
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %129

107:                                              ; preds = %101
  %108 = load i32, i32* %6, align 4
  switch i32 %108, label %127 [
    i32 67, label %109
    i32 68, label %115
    i32 73, label %121
  ]

109:                                              ; preds = %107
  %110 = load i32, i32* @CTLADM_ARG_RETRIES, align 4
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load i8*, i8** @optarg, align 8
  %114 = call i32 @strtol(i8* %113, i32* null, i32 0)
  store i32 %114, i32* %18, align 4
  br label %128

115:                                              ; preds = %107
  %116 = load i8*, i8** @optarg, align 8
  %117 = call i8* @strdup(i8* %116)
  store i8* %117, i8** %10, align 8
  %118 = load i32, i32* @CTLADM_ARG_DEVICE, align 4
  %119 = load i32, i32* %8, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %8, align 4
  br label %128

121:                                              ; preds = %107
  %122 = load i32, i32* @CTLADM_ARG_INITIATOR, align 4
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load i8*, i8** @optarg, align 8
  %126 = call i32 @strtol(i8* %125, i32* null, i32 0)
  store i32 %126, i32* %19, align 4
  br label %128

127:                                              ; preds = %107
  br label %128

128:                                              ; preds = %127, %121, %115, %109
  br label %101

129:                                              ; preds = %101
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @CTLADM_ARG_INITIATOR, align 4
  %132 = and i32 %130, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 7, i32* %19, align 4
  br label %135

135:                                              ; preds = %134, %129
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* @optind, align 4
  store i32 1, i32* @optreset, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @CTLADM_ARG_DEVICE, align 4
  %139 = and i32 %137, %138
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %135
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 152
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i8*, i8** @CTL_DEFAULT_DEV, align 8
  %146 = call i8* @strdup(i8* %145)
  store i8* %146, i8** %10, align 8
  %147 = load i32, i32* @CTLADM_ARG_DEVICE, align 4
  %148 = load i32, i32* %8, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %144, %141, %135
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @CTLADM_ARG_DEVICE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %193

155:                                              ; preds = %150
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 152
  br i1 %157, label %158, label %193

158:                                              ; preds = %155
  %159 = load i8*, i8** %10, align 8
  %160 = load i32, i32* @O_RDWR, align 4
  %161 = call i32 @open(i8* %159, i32 %160)
  store i32 %161, i32* %17, align 4
  %162 = load i32, i32* %17, align 4
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %180

164:                                              ; preds = %158
  %165 = load i32, i32* @errno, align 4
  %166 = load i32, i32* @ENOENT, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %164
  %169 = load i32, i32* @errno, align 4
  store i32 %169, i32* %20, align 4
  %170 = call i32 @kldload(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* %16, align 4
  %172 = icmp ne i32 %171, -1
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i8*, i8** %10, align 8
  %175 = load i32, i32* @O_RDWR, align 4
  %176 = call i32 @open(i8* %174, i32 %175)
  store i32 %176, i32* %17, align 4
  br label %179

177:                                              ; preds = %168
  %178 = load i32, i32* %20, align 4
  store i32 %178, i32* @errno, align 4
  br label %179

179:                                              ; preds = %177, %173
  br label %180

180:                                              ; preds = %179, %164, %158
  %181 = load i32, i32* %17, align 4
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %192

183:                                              ; preds = %180
  %184 = load i32, i32* @stderr, align 4
  %185 = load i8**, i8*** %5, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 0
  %187 = load i8*, i8** %186, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = load i32, i32* @errno, align 4
  %190 = call i8* @strerror(i32 %189)
  %191 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %187, i8* %188, i8* %190)
  store i32 1, i32* %16, align 4
  br label %403

192:                                              ; preds = %180
  br label %208

193:                                              ; preds = %155, %150
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 152
  br i1 %195, label %196, label %207

196:                                              ; preds = %193
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @CTLADM_ARG_DEVICE, align 4
  %199 = and i32 %197, %198
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = load i32, i32* @stderr, align 4
  %203 = load i8**, i8*** %5, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 0
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %202, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i8* %205)
  store i32 152, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %207

207:                                              ; preds = %201, %196, %193
  br label %208

208:                                              ; preds = %207, %192
  %209 = load i32, i32* %7, align 4
  switch i32 %209, label %399 [
    i32 129, label %210
    i32 151, label %216
    i32 135, label %222
    i32 136, label %228
    i32 158, label %234
    i32 134, label %240
    i32 156, label %246
    i32 138, label %252
    i32 128, label %252
    i32 142, label %262
    i32 141, label %268
    i32 145, label %274
    i32 137, label %280
    i32 144, label %289
    i32 132, label %298
    i32 131, label %298
    i32 130, label %311
    i32 146, label %320
    i32 157, label %323
    i32 153, label %330
    i32 155, label %337
    i32 154, label %342
    i32 140, label %346
    i32 139, label %355
    i32 150, label %364
    i32 133, label %369
    i32 143, label %374
    i32 149, label %380
    i32 148, label %386
    i32 147, label %392
    i32 152, label %398
  ]

210:                                              ; preds = %208
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* %18, align 4
  %215 = call i32 @cctl_tur(i32 %211, i32 %212, i32 %213, i32 %214)
  store i32 %215, i32* %16, align 4
  br label %402

216:                                              ; preds = %208
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* %14, align 4
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %18, align 4
  %221 = call i32 @cctl_inquiry(i32 %217, i32 %218, i32 %219, i32 %220)
  store i32 %221, i32* %16, align 4
  br label %402

222:                                              ; preds = %208
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* %19, align 4
  %226 = load i32, i32* %18, align 4
  %227 = call i32 @cctl_req_sense(i32 %223, i32 %224, i32 %225, i32 %226)
  store i32 %227, i32* %16, align 4
  br label %402

228:                                              ; preds = %208
  %229 = load i32, i32* %17, align 4
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* %18, align 4
  %233 = call i32 @cctl_report_luns(i32 %229, i32 %230, i32 %231, i32 %232)
  store i32 %233, i32* %16, align 4
  br label %402

234:                                              ; preds = %208
  %235 = load i32, i32* %17, align 4
  %236 = load i32, i32* %4, align 4
  %237 = load i8**, i8*** %5, align 8
  %238 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %239 = call i32 @cctl_create_lun(i32 %235, i32 %236, i8** %237, i8* %238)
  store i32 %239, i32* %16, align 4
  br label %402

240:                                              ; preds = %208
  %241 = load i32, i32* %17, align 4
  %242 = load i32, i32* %4, align 4
  %243 = load i8**, i8*** %5, align 8
  %244 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %245 = call i32 @cctl_rm_lun(i32 %241, i32 %242, i8** %243, i8* %244)
  store i32 %245, i32* %16, align 4
  br label %402

246:                                              ; preds = %208
  %247 = load i32, i32* %17, align 4
  %248 = load i32, i32* %4, align 4
  %249 = load i8**, i8*** %5, align 8
  %250 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %251 = call i32 @cctl_devlist(i32 %247, i32 %248, i8** %249, i8* %250)
  store i32 %251, i32* %16, align 4
  br label %402

252:                                              ; preds = %208, %208
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* %14, align 4
  %255 = load i32, i32* %19, align 4
  %256 = load i32, i32* %18, align 4
  %257 = load i32, i32* %4, align 4
  %258 = load i8**, i8*** %5, align 8
  %259 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %260 = load i32, i32* %7, align 4
  %261 = call i32 @cctl_read_write(i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i8** %258, i8* %259, i32 %260)
  store i32 %261, i32* %16, align 4
  br label %402

262:                                              ; preds = %208
  %263 = load i32, i32* %17, align 4
  %264 = load i32, i32* %4, align 4
  %265 = load i8**, i8*** %5, align 8
  %266 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %267 = call i32 @cctl_port(i32 %263, i32 %264, i8** %265, i8* %266)
  store i32 %267, i32* %16, align 4
  br label %402

268:                                              ; preds = %208
  %269 = load i32, i32* %17, align 4
  %270 = load i32, i32* %4, align 4
  %271 = load i8**, i8*** %5, align 8
  %272 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %273 = call i32 @cctl_portlist(i32 %269, i32 %270, i8** %271, i8* %272)
  store i32 %273, i32* %16, align 4
  br label %402

274:                                              ; preds = %208
  %275 = load i32, i32* %17, align 4
  %276 = load i32, i32* %4, align 4
  %277 = load i8**, i8*** %5, align 8
  %278 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %279 = call i32 @cctl_lunmap(i32 %275, i32 %276, i8** %277, i8* %278)
  store i32 %279, i32* %16, align 4
  br label %402

280:                                              ; preds = %208
  %281 = load i32, i32* %17, align 4
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* %19, align 4
  %284 = load i32, i32* %18, align 4
  %285 = load i32, i32* %4, align 4
  %286 = load i8**, i8*** %5, align 8
  %287 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %288 = call i32 @cctl_read_capacity(i32 %281, i32 %282, i32 %283, i32 %284, i32 %285, i8** %286, i8* %287)
  store i32 %288, i32* %16, align 4
  br label %402

289:                                              ; preds = %208
  %290 = load i32, i32* %17, align 4
  %291 = load i32, i32* %14, align 4
  %292 = load i32, i32* %19, align 4
  %293 = load i32, i32* %18, align 4
  %294 = load i32, i32* %4, align 4
  %295 = load i8**, i8*** %5, align 8
  %296 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %297 = call i32 @cctl_mode_sense(i32 %290, i32 %291, i32 %292, i32 %293, i32 %294, i8** %295, i8* %296)
  store i32 %297, i32* %16, align 4
  br label %402

298:                                              ; preds = %208, %208
  %299 = load i32, i32* %17, align 4
  %300 = load i32, i32* %14, align 4
  %301 = load i32, i32* %19, align 4
  %302 = load i32, i32* %18, align 4
  %303 = load i32, i32* %7, align 4
  %304 = icmp eq i32 %303, 132
  %305 = zext i1 %304 to i64
  %306 = select i1 %304, i32 1, i32 0
  %307 = load i32, i32* %4, align 4
  %308 = load i8**, i8*** %5, align 8
  %309 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %310 = call i32 @cctl_start_stop(i32 %299, i32 %300, i32 %301, i32 %302, i32 %306, i32 %307, i8** %308, i8* %309)
  store i32 %310, i32* %16, align 4
  br label %402

311:                                              ; preds = %208
  %312 = load i32, i32* %17, align 4
  %313 = load i32, i32* %14, align 4
  %314 = load i32, i32* %19, align 4
  %315 = load i32, i32* %18, align 4
  %316 = load i32, i32* %4, align 4
  %317 = load i8**, i8*** %5, align 8
  %318 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %319 = call i32 @cctl_sync_cache(i32 %312, i32 %313, i32 %314, i32 %315, i32 %316, i8** %317, i8* %318)
  store i32 %319, i32* %16, align 4
  br label %402

320:                                              ; preds = %208
  %321 = load i32, i32* %17, align 4
  %322 = call i32 @cctl_lunlist(i32 %321)
  store i32 %322, i32* %16, align 4
  br label %402

323:                                              ; preds = %208
  %324 = load i32, i32* %17, align 4
  %325 = load i32, i32* %14, align 4
  %326 = load i32, i32* %4, align 4
  %327 = load i8**, i8*** %5, align 8
  %328 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %329 = call i32 @cctl_delay(i32 %324, i32 %325, i32 %326, i8** %327, i8* %328)
  store i32 %329, i32* %16, align 4
  br label %402

330:                                              ; preds = %208
  %331 = load i32, i32* %17, align 4
  %332 = load i32, i32* %14, align 4
  %333 = load i32, i32* %4, align 4
  %334 = load i8**, i8*** %5, align 8
  %335 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %336 = call i32 @cctl_error_inject(i32 %331, i32 %332, i32 %333, i8** %334, i8* %335)
  store i32 %336, i32* %16, align 4
  br label %402

337:                                              ; preds = %208
  %338 = load i32, i32* %17, align 4
  %339 = load i32, i32* %4, align 4
  %340 = load i8**, i8*** %5, align 8
  %341 = call i32 @cctl_dump_ooa(i32 %338, i32 %339, i8** %340)
  store i32 %341, i32* %16, align 4
  br label %402

342:                                              ; preds = %208
  %343 = load i32, i32* %17, align 4
  %344 = load i32, i32* %8, align 4
  %345 = call i32 @cctl_dump_structs(i32 %343, i32 %344)
  store i32 %345, i32* %16, align 4
  br label %402

346:                                              ; preds = %208
  %347 = load i32, i32* %17, align 4
  %348 = load i32, i32* %14, align 4
  %349 = load i32, i32* %19, align 4
  %350 = load i32, i32* %4, align 4
  %351 = load i8**, i8*** %5, align 8
  %352 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %353 = load i32, i32* %18, align 4
  %354 = call i32 @cctl_persistent_reserve_in(i32 %347, i32 %348, i32 %349, i32 %350, i8** %351, i8* %352, i32 %353)
  store i32 %354, i32* %16, align 4
  br label %402

355:                                              ; preds = %208
  %356 = load i32, i32* %17, align 4
  %357 = load i32, i32* %14, align 4
  %358 = load i32, i32* %19, align 4
  %359 = load i32, i32* %4, align 4
  %360 = load i8**, i8*** %5, align 8
  %361 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %362 = load i32, i32* %18, align 4
  %363 = call i32 @cctl_persistent_reserve_out(i32 %356, i32 %357, i32 %358, i32 %359, i8** %360, i8* %361, i32 %362)
  store i32 %363, i32* %16, align 4
  br label %402

364:                                              ; preds = %208
  %365 = load i32, i32* %17, align 4
  %366 = load i32, i32* %14, align 4
  %367 = load i32, i32* %19, align 4
  %368 = call i32 @cctl_inquiry_vpd_devid(i32 %365, i32 %366, i32 %367)
  store i32 %368, i32* %16, align 4
  br label %402

369:                                              ; preds = %208
  %370 = load i32, i32* %17, align 4
  %371 = load i32, i32* %14, align 4
  %372 = load i32, i32* %19, align 4
  %373 = call i32 @cctl_report_target_port_group(i32 %370, i32 %371, i32 %372)
  store i32 %373, i32* %16, align 4
  br label %402

374:                                              ; preds = %208
  %375 = load i32, i32* %17, align 4
  %376 = load i32, i32* %4, align 4
  %377 = load i8**, i8*** %5, align 8
  %378 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %379 = call i32 @cctl_modify_lun(i32 %375, i32 %376, i8** %377, i8* %378)
  store i32 %379, i32* %16, align 4
  br label %402

380:                                              ; preds = %208
  %381 = load i32, i32* %17, align 4
  %382 = load i32, i32* %4, align 4
  %383 = load i8**, i8*** %5, align 8
  %384 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %385 = call i32 @cctl_islist(i32 %381, i32 %382, i8** %383, i8* %384)
  store i32 %385, i32* %16, align 4
  br label %402

386:                                              ; preds = %208
  %387 = load i32, i32* %17, align 4
  %388 = load i32, i32* %4, align 4
  %389 = load i8**, i8*** %5, align 8
  %390 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %391 = call i32 @cctl_islogout(i32 %387, i32 %388, i8** %389, i8* %390)
  store i32 %391, i32* %16, align 4
  br label %402

392:                                              ; preds = %208
  %393 = load i32, i32* %17, align 4
  %394 = load i32, i32* %4, align 4
  %395 = load i8**, i8*** %5, align 8
  %396 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %397 = call i32 @cctl_isterminate(i32 %393, i32 %394, i8** %395, i8* %396)
  store i32 %397, i32* %16, align 4
  br label %402

398:                                              ; preds = %208
  br label %399

399:                                              ; preds = %208, %398
  %400 = load i32, i32* %16, align 4
  %401 = call i32 @usage(i32 %400)
  br label %402

402:                                              ; preds = %399, %392, %386, %380, %374, %369, %364, %355, %346, %342, %337, %330, %323, %320, %311, %298, %289, %280, %274, %268, %262, %252, %246, %240, %234, %228, %222, %216, %210
  br label %403

403:                                              ; preds = %402, %183, %24
  %404 = load i32, i32* %17, align 4
  %405 = icmp ne i32 %404, -1
  br i1 %405, label %406, label %409

406:                                              ; preds = %403
  %407 = load i32, i32* %17, align 4
  %408 = call i32 @close(i32 %407)
  br label %409

409:                                              ; preds = %406, %403
  %410 = load i32, i32* %16, align 4
  %411 = call i32 @exit(i32 %410) #3
  unreachable
}

declare dso_local i32 @usage(i32) #1

declare dso_local i64 @getoption(i32, i8*, i32*, i32*, i8**) #1

declare dso_local i32 @warnx(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @kldload(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @cctl_tur(i32, i32, i32, i32) #1

declare dso_local i32 @cctl_inquiry(i32, i32, i32, i32) #1

declare dso_local i32 @cctl_req_sense(i32, i32, i32, i32) #1

declare dso_local i32 @cctl_report_luns(i32, i32, i32, i32) #1

declare dso_local i32 @cctl_create_lun(i32, i32, i8**, i8*) #1

declare dso_local i32 @cctl_rm_lun(i32, i32, i8**, i8*) #1

declare dso_local i32 @cctl_devlist(i32, i32, i8**, i8*) #1

declare dso_local i32 @cctl_read_write(i32, i32, i32, i32, i32, i8**, i8*, i32) #1

declare dso_local i32 @cctl_port(i32, i32, i8**, i8*) #1

declare dso_local i32 @cctl_portlist(i32, i32, i8**, i8*) #1

declare dso_local i32 @cctl_lunmap(i32, i32, i8**, i8*) #1

declare dso_local i32 @cctl_read_capacity(i32, i32, i32, i32, i32, i8**, i8*) #1

declare dso_local i32 @cctl_mode_sense(i32, i32, i32, i32, i32, i8**, i8*) #1

declare dso_local i32 @cctl_start_stop(i32, i32, i32, i32, i32, i32, i8**, i8*) #1

declare dso_local i32 @cctl_sync_cache(i32, i32, i32, i32, i32, i8**, i8*) #1

declare dso_local i32 @cctl_lunlist(i32) #1

declare dso_local i32 @cctl_delay(i32, i32, i32, i8**, i8*) #1

declare dso_local i32 @cctl_error_inject(i32, i32, i32, i8**, i8*) #1

declare dso_local i32 @cctl_dump_ooa(i32, i32, i8**) #1

declare dso_local i32 @cctl_dump_structs(i32, i32) #1

declare dso_local i32 @cctl_persistent_reserve_in(i32, i32, i32, i32, i8**, i8*, i32) #1

declare dso_local i32 @cctl_persistent_reserve_out(i32, i32, i32, i32, i8**, i8*, i32) #1

declare dso_local i32 @cctl_inquiry_vpd_devid(i32, i32, i32) #1

declare dso_local i32 @cctl_report_target_port_group(i32, i32, i32) #1

declare dso_local i32 @cctl_modify_lun(i32, i32, i8**, i8*) #1

declare dso_local i32 @cctl_islist(i32, i32, i8**, i8*) #1

declare dso_local i32 @cctl_islogout(i32, i32, i8**, i8*) #1

declare dso_local i32 @cctl_isterminate(i32, i32, i8**, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
