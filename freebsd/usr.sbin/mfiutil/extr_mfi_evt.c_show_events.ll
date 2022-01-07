; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_evt.c_show_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_evt.c_show_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_evt_log_state = type { i64, i64 }
%struct.mfi_evt_list = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%union.mfi_evt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to get event log info\00", align 1
@MFI_EVT_LOCALE_ALL = common dso_local global i32 0, align 4
@MFI_EVT_CLASS_WARNING = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"c:l:n:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Error parsing event class\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Error parsing event locale\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Invalid event count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Event count is too high\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"show events: extra arguments\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Error parsing starting sequence number\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Error parsing ending sequence number\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"Failed to fetch events\00", align 1
@MFI_STAT_NOT_FOUND = common dso_local global i64 0, align 8
@MFI_STAT_OK = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"Error fetching events: %s\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"No matching events found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @show_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_events(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mfi_evt_log_state, align 8
  %7 = alloca %struct.mfi_evt_list*, align 8
  %8 = alloca %union.mfi_evt, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %24 = load i32, i32* @mfi_unit, align 4
  %25 = load i32, i32* @O_RDWR, align 4
  %26 = call i32 @mfi_open(i32 %24, i32 %25)
  store i32 %26, i32* %20, align 4
  %27 = load i32, i32* %20, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %19, align 4
  %31 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %19, align 4
  store i32 %32, i32* %3, align 4
  br label %295

33:                                               ; preds = %2
  %34 = load i32, i32* %20, align 4
  %35 = call i64 @mfi_event_get_info(i32 %34, %struct.mfi_evt_log_state* %6, i32* null)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @errno, align 4
  store i32 %38, i32* %19, align 4
  %39 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %20, align 4
  %41 = call i32 @close(i32 %40)
  %42 = load i32, i32* %19, align 4
  store i32 %42, i32* %3, align 4
  br label %295

43:                                               ; preds = %33
  store i32 15, i32* %21, align 4
  %44 = bitcast %union.mfi_evt* %8 to %struct.TYPE_3__*
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @MFI_EVT_LOCALE_ALL, align 4
  %47 = bitcast %union.mfi_evt* %8 to %struct.TYPE_3__*
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @MFI_EVT_CLASS_WARNING, align 4
  %50 = bitcast %union.mfi_evt* %8 to %struct.TYPE_3__*
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.mfi_evt_log_state, %struct.mfi_evt_log_state* %6, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %14, align 8
  %54 = getelementptr inbounds %struct.mfi_evt_log_state, %struct.mfi_evt_log_state* %6, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %15, align 8
  store i32 0, i32* %22, align 4
  store i32 1, i32* @optind, align 4
  br label %56

56:                                               ; preds = %114, %43
  %57 = load i32, i32* %4, align 4
  %58 = load i8**, i8*** %5, align 8
  %59 = call i32 @getopt(i32 %57, i8** %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %59, i32* %18, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %115

61:                                               ; preds = %56
  %62 = load i32, i32* %18, align 4
  switch i32 %62, label %110 [
    i32 99, label %63
    i32 108, label %76
    i32 110, label %90
    i32 118, label %108
    i32 63, label %109
  ]

63:                                               ; preds = %61
  %64 = load i32, i32* @optarg, align 4
  %65 = bitcast %union.mfi_evt* %8 to %struct.TYPE_3__*
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = call i32 @parse_class(i32 %64, i32* %66)
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i32, i32* @errno, align 4
  store i32 %70, i32* %19, align 4
  %71 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* %20, align 4
  %73 = call i32 @close(i32 %72)
  %74 = load i32, i32* %19, align 4
  store i32 %74, i32* %3, align 4
  br label %295

75:                                               ; preds = %63
  br label %114

76:                                               ; preds = %61
  %77 = load i32, i32* @optarg, align 4
  %78 = call i32 @parse_locale(i32 %77, i32* %16)
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* @errno, align 4
  store i32 %81, i32* %19, align 4
  %82 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* %20, align 4
  %84 = call i32 @close(i32 %83)
  %85 = load i32, i32* %19, align 4
  store i32 %85, i32* %3, align 4
  br label %295

86:                                               ; preds = %76
  %87 = load i32, i32* %16, align 4
  %88 = bitcast %union.mfi_evt* %8 to %struct.TYPE_3__*
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %114

90:                                               ; preds = %61
  %91 = load i32, i32* @optarg, align 4
  %92 = call i64 @strtol(i32 %91, i8** %11, i32 0)
  store i64 %92, i64* %10, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load i64, i64* %10, align 8
  %99 = icmp sle i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97, %90
  %101 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32, i32* %20, align 4
  %103 = call i32 @close(i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  store i32 %104, i32* %3, align 4
  br label %295

105:                                              ; preds = %97
  %106 = load i64, i64* %10, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %21, align 4
  br label %114

108:                                              ; preds = %61
  store i32 1, i32* %22, align 4
  br label %114

109:                                              ; preds = %61
  br label %110

110:                                              ; preds = %61, %109
  %111 = load i32, i32* %20, align 4
  %112 = call i32 @close(i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %3, align 4
  br label %295

114:                                              ; preds = %108, %105, %86, %75
  br label %56

115:                                              ; preds = %56
  %116 = load i32, i32* @optind, align 4
  %117 = load i32, i32* %4, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* @optind, align 4
  %120 = load i8**, i8*** %5, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  store i8** %122, i8*** %5, align 8
  %123 = load i32, i32* %21, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = mul i64 4, %125
  %127 = add i64 16, %126
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 (...) @getpagesize()
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %115
  %133 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %134 = load i32, i32* %20, align 4
  %135 = call i32 @close(i32 %134)
  %136 = load i32, i32* @EINVAL, align 4
  store i32 %136, i32* %3, align 4
  br label %295

137:                                              ; preds = %115
  %138 = load i32, i32* %4, align 4
  %139 = icmp sgt i32 %138, 2
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %142 = load i32, i32* %20, align 4
  %143 = call i32 @close(i32 %142)
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* %3, align 4
  br label %295

145:                                              ; preds = %137
  %146 = load i32, i32* %4, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %145
  %149 = load i8**, i8*** %5, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i64 @parse_seq(%struct.mfi_evt_log_state* %6, i8* %151, i64* %14)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = load i32, i32* @errno, align 4
  store i32 %155, i32* %19, align 4
  %156 = call i32 @warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %157 = load i32, i32* %20, align 4
  %158 = call i32 @close(i32 %157)
  %159 = load i32, i32* %19, align 4
  store i32 %159, i32* %3, align 4
  br label %295

160:                                              ; preds = %148, %145
  %161 = load i32, i32* %4, align 4
  %162 = icmp sgt i32 %161, 1
  br i1 %162, label %163, label %175

163:                                              ; preds = %160
  %164 = load i8**, i8*** %5, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 1
  %166 = load i8*, i8** %165, align 8
  %167 = call i64 @parse_seq(%struct.mfi_evt_log_state* %6, i8* %166, i64* %15)
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = load i32, i32* @errno, align 4
  store i32 %170, i32* %19, align 4
  %171 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %172 = load i32, i32* %20, align 4
  %173 = call i32 @close(i32 %172)
  %174 = load i32, i32* %19, align 4
  store i32 %174, i32* %3, align 4
  br label %295

175:                                              ; preds = %163, %160
  %176 = load i32, i32* %12, align 4
  %177 = call %struct.mfi_evt_list* @malloc(i32 %176)
  store %struct.mfi_evt_list* %177, %struct.mfi_evt_list** %7, align 8
  %178 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %7, align 8
  %179 = icmp eq %struct.mfi_evt_list* %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %182 = load i32, i32* %20, align 4
  %183 = call i32 @close(i32 %182)
  %184 = load i32, i32* @ENOMEM, align 4
  store i32 %184, i32* %3, align 4
  br label %295

185:                                              ; preds = %175
  store i32 1, i32* %9, align 4
  %186 = load i64, i64* %14, align 8
  store i64 %186, i64* %13, align 8
  br label %187

187:                                              ; preds = %272, %185
  %188 = load i32, i32* %20, align 4
  %189 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %7, align 8
  %190 = load i32, i32* %21, align 4
  %191 = load i64, i64* %13, align 8
  %192 = bitcast %union.mfi_evt* %8 to { i64, i64 }*
  %193 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %192, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @mfi_get_events(i32 %188, %struct.mfi_evt_list* %189, i32 %190, i64 %194, i64 %196, i64 %191, i64* %17)
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %187
  %200 = load i32, i32* @errno, align 4
  store i32 %200, i32* %19, align 4
  %201 = call i32 @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %202 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %7, align 8
  %203 = call i32 @free(%struct.mfi_evt_list* %202)
  %204 = load i32, i32* %20, align 4
  %205 = call i32 @close(i32 %204)
  %206 = load i32, i32* %19, align 4
  store i32 %206, i32* %3, align 4
  br label %295

207:                                              ; preds = %187
  %208 = load i64, i64* %17, align 8
  %209 = load i64, i64* @MFI_STAT_NOT_FOUND, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  br label %284

212:                                              ; preds = %207
  %213 = load i64, i64* %17, align 8
  %214 = load i64, i64* @MFI_STAT_OK, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %225

216:                                              ; preds = %212
  %217 = load i64, i64* %17, align 8
  %218 = call i32 @mfi_status(i64 %217)
  %219 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %218)
  %220 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %7, align 8
  %221 = call i32 @free(%struct.mfi_evt_list* %220)
  %222 = load i32, i32* %20, align 4
  %223 = call i32 @close(i32 %222)
  %224 = load i32, i32* @EIO, align 4
  store i32 %224, i32* %3, align 4
  br label %295

225:                                              ; preds = %212
  store i64 0, i64* %23, align 8
  br label %226

226:                                              ; preds = %269, %225
  %227 = load i64, i64* %23, align 8
  %228 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %7, align 8
  %229 = getelementptr inbounds %struct.mfi_evt_list, %struct.mfi_evt_list* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ult i64 %227, %230
  br i1 %231, label %232, label %272

232:                                              ; preds = %226
  %233 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %7, align 8
  %234 = getelementptr inbounds %struct.mfi_evt_list, %struct.mfi_evt_list* %233, i32 0, i32 1
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = load i64, i64* %23, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* %15, align 8
  %241 = icmp sgt i64 %239, %240
  br i1 %241, label %242, label %260

242:                                              ; preds = %232
  %243 = load i64, i64* %14, align 8
  %244 = load i64, i64* %15, align 8
  %245 = icmp sle i64 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  br label %285

247:                                              ; preds = %242
  %248 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %7, align 8
  %249 = getelementptr inbounds %struct.mfi_evt_list, %struct.mfi_evt_list* %248, i32 0, i32 1
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = load i64, i64* %23, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* %14, align 8
  %256 = icmp slt i64 %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %247
  br label %285

258:                                              ; preds = %247
  br label %259

259:                                              ; preds = %258
  br label %260

260:                                              ; preds = %259, %232
  %261 = load i32, i32* %20, align 4
  %262 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %7, align 8
  %263 = getelementptr inbounds %struct.mfi_evt_list, %struct.mfi_evt_list* %262, i32 0, i32 1
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %263, align 8
  %265 = load i64, i64* %23, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i64 %265
  %267 = load i32, i32* %22, align 4
  %268 = call i32 @mfi_decode_evt(i32 %261, %struct.TYPE_4__* %266, i32 %267)
  store i32 0, i32* %9, align 4
  br label %269

269:                                              ; preds = %260
  %270 = load i64, i64* %23, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %23, align 8
  br label %226

272:                                              ; preds = %226
  %273 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %7, align 8
  %274 = getelementptr inbounds %struct.mfi_evt_list, %struct.mfi_evt_list* %273, i32 0, i32 1
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %7, align 8
  %277 = getelementptr inbounds %struct.mfi_evt_list, %struct.mfi_evt_list* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = sub i64 %278, 1
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = add nsw i64 %282, 1
  store i64 %283, i64* %13, align 8
  br label %187

284:                                              ; preds = %211
  br label %285

285:                                              ; preds = %284, %257, %246
  %286 = load i32, i32* %9, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %285
  %289 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  br label %290

290:                                              ; preds = %288, %285
  %291 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %7, align 8
  %292 = call i32 @free(%struct.mfi_evt_list* %291)
  %293 = load i32, i32* %20, align 4
  %294 = call i32 @close(i32 %293)
  store i32 0, i32* %3, align 4
  br label %295

295:                                              ; preds = %290, %216, %199, %180, %169, %154, %140, %132, %110, %100, %80, %69, %37, %29
  %296 = load i32, i32* %3, align 4
  ret i32 %296
}

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @mfi_event_get_info(i32, %struct.mfi_evt_log_state*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @parse_class(i32, i32*) #1

declare dso_local i32 @parse_locale(i32, i32*) #1

declare dso_local i64 @strtol(i32, i8**, i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i64 @parse_seq(%struct.mfi_evt_log_state*, i8*, i64*) #1

declare dso_local %struct.mfi_evt_list* @malloc(i32) #1

declare dso_local i64 @mfi_get_events(i32, %struct.mfi_evt_list*, i32, i64, i64, i64, i64*) #1

declare dso_local i32 @free(%struct.mfi_evt_list*) #1

declare dso_local i32 @mfi_status(i64) #1

declare dso_local i32 @mfi_decode_evt(i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
