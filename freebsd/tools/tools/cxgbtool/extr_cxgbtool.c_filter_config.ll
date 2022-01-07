; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_filter_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_filter_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_filter = type { i32, i32, i8*, i32, i32, i32, i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@CHELSIO_DEL_FILTER = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"no filter support when offload in use\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"delete filter\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"sip\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dip\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"sport\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"dport\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"vlan\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"prio\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"frag\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"unknown type \22%s\22; must be one of \22tcp\22, \22udp\22, or \22frag\22\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"drop\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"unknown action \22%s\22; must be one of \22pass\22 or \22drop\22\00", align 1
@.str.23 = private unnamed_addr constant [136 x i8] c"unknown filter parameter \22%s\22\0Aknown parameters are \22mac\22, \22sip\22, \22dip\22, \22sport\22, \22dport\22, \22vlan\22, \22prio\22, \22type\22, \22queue\22, and \22action\22\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"bad value \22%s\22 for parameter \22%s\22\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"no value for \22%s\22\00", align 1
@CHELSIO_SET_FILTER = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"set filter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i8*)* @filter_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_config(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ch_filter, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 1
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %428

19:                                               ; preds = %4
  %20 = call i32 @memset(%struct.ch_filter* %13, i32 0, i32 120)
  %21 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 0
  store i32 65535, i32* %21, align 8
  %22 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load i8**, i8*** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @show_filters(i8* %36)
  store i32 0, i32* %5, align 4
  br label %428

38:                                               ; preds = %27, %19
  %39 = load i8**, i8*** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 2
  %46 = call i32 @get_int_arg(i8* %44, i8** %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %428

49:                                               ; preds = %38
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %49
  %55 = load i8**, i8*** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i8**, i8*** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %62, %54
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* @CHELSIO_DEL_FILTER, align 4
  %73 = call i64 @doit(i8* %71, i32 %72, %struct.ch_filter* %13)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i64, i64* @errno, align 8
  %77 = load i64, i64* @EBUSY, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 @err(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %75
  %82 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %70
  store i32 0, i32* %5, align 4
  br label %428

84:                                               ; preds = %62, %49
  br label %85

85:                                               ; preds = %400, %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 2
  %88 = load i32, i32* %6, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %403

90:                                               ; preds = %85
  %91 = load i8**, i8*** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %90
  %99 = load i8**, i8*** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %99, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 5
  %109 = call i32 @parse_ipaddr(i8* %104, i32* %106, i32* %108)
  store i32 %109, i32* %10, align 4
  br label %384

110:                                              ; preds = %90
  %111 = load i8**, i8*** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %110
  %119 = load i8**, i8*** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %119, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  %129 = call i32 @parse_ipaddr(i8* %124, i32* %126, i32* %128)
  store i32 %129, i32* %10, align 4
  br label %383

130:                                              ; preds = %110
  %131 = load i8**, i8*** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @strcmp(i8* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %152, label %138

138:                                              ; preds = %130
  %139 = load i8**, i8*** %7, align 8
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %139, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @parse_val_mask_param(i8* %144, i8** %11, i8** %12, i32 65535)
  store i32 %145, i32* %10, align 4
  %146 = load i8*, i8** %11, align 8
  %147 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 7
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 3
  store i8* %149, i8** %151, align 8
  br label %382

152:                                              ; preds = %130
  %153 = load i8**, i8*** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %174, label %160

160:                                              ; preds = %152
  %161 = load i8**, i8*** %7, align 8
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %161, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @parse_val_mask_param(i8* %166, i8** %11, i8** %12, i32 65535)
  store i32 %167, i32* %10, align 4
  %168 = load i8*, i8** %11, align 8
  %169 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  store i8* %168, i8** %170, align 8
  %171 = load i8*, i8** %12, align 8
  %172 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 7
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  store i8* %171, i8** %173, align 8
  br label %381

174:                                              ; preds = %152
  %175 = load i8**, i8*** %7, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i64 @strcmp(i8* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %196, label %182

182:                                              ; preds = %174
  %183 = load i8**, i8*** %7, align 8
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %183, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @parse_val_mask_param(i8* %188, i8** %11, i8** %12, i32 4095)
  store i32 %189, i32* %10, align 4
  %190 = load i8*, i8** %11, align 8
  %191 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 1
  store i8* %190, i8** %192, align 8
  %193 = load i8*, i8** %12, align 8
  %194 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 7
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  store i8* %193, i8** %195, align 8
  br label %380

196:                                              ; preds = %174
  %197 = load i8**, i8*** %7, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %197, i64 %199
  %201 = load i8*, i8** %200, align 8
  %202 = call i64 @strcmp(i8* %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %218, label %204

204:                                              ; preds = %196
  %205 = load i8**, i8*** %7, align 8
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %205, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @parse_val_mask_param(i8* %210, i8** %11, i8** %12, i32 7)
  store i32 %211, i32* %10, align 4
  %212 = load i8*, i8** %11, align 8
  %213 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  store i8* %212, i8** %214, align 8
  %215 = load i8*, i8** %12, align 8
  %216 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 7
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  store i8* %215, i8** %217, align 8
  br label %379

218:                                              ; preds = %196
  %219 = load i8**, i8*** %7, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %219, i64 %221
  %223 = load i8*, i8** %222, align 8
  %224 = call i64 @strcmp(i8* %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %259, label %226

226:                                              ; preds = %218
  %227 = load i8**, i8*** %7, align 8
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %227, i64 %230
  %232 = load i8*, i8** %231, align 8
  %233 = call i64 @strcmp(i8* %232, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %226
  store i8* inttoptr (i64 -1 to i8*), i8** %11, align 8
  br label %244

236:                                              ; preds = %226
  %237 = load i8**, i8*** %7, align 8
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %237, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @get_int_arg(i8* %242, i8** %11)
  store i32 %243, i32* %10, align 4
  br label %244

244:                                              ; preds = %236, %235
  %245 = load i8*, i8** %11, align 8
  %246 = icmp ne i8* %245, inttoptr (i64 -1 to i8*)
  %247 = zext i1 %246 to i32
  %248 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 3
  store i32 %247, i32* %248, align 8
  %249 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %244
  %253 = load i8*, i8** %11, align 8
  br label %255

254:                                              ; preds = %244
  br label %255

255:                                              ; preds = %254, %252
  %256 = phi i8* [ %253, %252 ], [ null, %254 ]
  %257 = ptrtoint i8* %256 to i32
  %258 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 0
  store i32 %257, i32* %258, align 8
  br label %378

259:                                              ; preds = %218
  %260 = load i8**, i8*** %7, align 8
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8*, i8** %260, i64 %262
  %264 = load i8*, i8** %263, align 8
  %265 = call i64 @strcmp(i8* %264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %311, label %267

267:                                              ; preds = %259
  %268 = load i8**, i8*** %7, align 8
  %269 = load i32, i32* %8, align 4
  %270 = add nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8*, i8** %268, i64 %271
  %273 = load i8*, i8** %272, align 8
  %274 = call i64 @strcmp(i8* %273, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %267
  %277 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 4
  store i32 1, i32* %277, align 4
  br label %310

278:                                              ; preds = %267
  %279 = load i8**, i8*** %7, align 8
  %280 = load i32, i32* %8, align 4
  %281 = add nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8*, i8** %279, i64 %282
  %284 = load i8*, i8** %283, align 8
  %285 = call i64 @strcmp(i8* %284, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %278
  %288 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 4
  store i32 2, i32* %288, align 4
  br label %309

289:                                              ; preds = %278
  %290 = load i8**, i8*** %7, align 8
  %291 = load i32, i32* %8, align 4
  %292 = add nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8*, i8** %290, i64 %293
  %295 = load i8*, i8** %294, align 8
  %296 = call i64 @strcmp(i8* %295, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %300, label %298

298:                                              ; preds = %289
  %299 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 4
  store i32 3, i32* %299, align 4
  br label %308

300:                                              ; preds = %289
  %301 = load i8**, i8*** %7, align 8
  %302 = load i32, i32* %8, align 4
  %303 = add nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8*, i8** %301, i64 %304
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i8* %306)
  br label %308

308:                                              ; preds = %300, %298
  br label %309

309:                                              ; preds = %308, %287
  br label %310

310:                                              ; preds = %309, %276
  br label %377

311:                                              ; preds = %259
  %312 = load i8**, i8*** %7, align 8
  %313 = load i32, i32* %8, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8*, i8** %312, i64 %314
  %316 = load i8*, i8** %315, align 8
  %317 = call i64 @strcmp(i8* %316, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %330, label %319

319:                                              ; preds = %311
  %320 = load i8**, i8*** %7, align 8
  %321 = load i32, i32* %8, align 4
  %322 = add nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8*, i8** %320, i64 %323
  %325 = load i8*, i8** %324, align 8
  %326 = call i32 @get_int_arg(i8* %325, i8** %11)
  store i32 %326, i32* %10, align 4
  %327 = load i8*, i8** %11, align 8
  %328 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 6
  store i8* %327, i8** %328, align 8
  %329 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 1
  store i32 0, i32* %329, align 4
  br label %376

330:                                              ; preds = %311
  %331 = load i8**, i8*** %7, align 8
  %332 = load i32, i32* %8, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8*, i8** %331, i64 %333
  %335 = load i8*, i8** %334, align 8
  %336 = call i64 @strcmp(i8* %335, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %368, label %338

338:                                              ; preds = %330
  %339 = load i8**, i8*** %7, align 8
  %340 = load i32, i32* %8, align 4
  %341 = add nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8*, i8** %339, i64 %342
  %344 = load i8*, i8** %343, align 8
  %345 = call i64 @strcmp(i8* %344, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %349, label %347

347:                                              ; preds = %338
  %348 = getelementptr inbounds %struct.ch_filter, %struct.ch_filter* %13, i32 0, i32 5
  store i32 1, i32* %348, align 8
  br label %367

349:                                              ; preds = %338
  %350 = load i8**, i8*** %7, align 8
  %351 = load i32, i32* %8, align 4
  %352 = add nsw i32 %351, 1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8*, i8** %350, i64 %353
  %355 = load i8*, i8** %354, align 8
  %356 = call i64 @strcmp(i8* %355, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %349
  %359 = load i8**, i8*** %7, align 8
  %360 = load i32, i32* %8, align 4
  %361 = add nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8*, i8** %359, i64 %362
  %364 = load i8*, i8** %363, align 8
  %365 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.22, i64 0, i64 0), i8* %364)
  br label %366

366:                                              ; preds = %358, %349
  br label %367

367:                                              ; preds = %366, %347
  br label %375

368:                                              ; preds = %330
  %369 = load i8**, i8*** %7, align 8
  %370 = load i32, i32* %8, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8*, i8** %369, i64 %371
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.23, i64 0, i64 0), i8* %373)
  br label %375

375:                                              ; preds = %368, %367
  br label %376

376:                                              ; preds = %375, %319
  br label %377

377:                                              ; preds = %376, %310
  br label %378

378:                                              ; preds = %377, %255
  br label %379

379:                                              ; preds = %378, %204
  br label %380

380:                                              ; preds = %379, %182
  br label %381

381:                                              ; preds = %380, %160
  br label %382

382:                                              ; preds = %381, %138
  br label %383

383:                                              ; preds = %382, %118
  br label %384

384:                                              ; preds = %383, %98
  %385 = load i32, i32* %10, align 4
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %400

387:                                              ; preds = %384
  %388 = load i8**, i8*** %7, align 8
  %389 = load i32, i32* %8, align 4
  %390 = add nsw i32 %389, 1
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8*, i8** %388, i64 %391
  %393 = load i8*, i8** %392, align 8
  %394 = load i8**, i8*** %7, align 8
  %395 = load i32, i32* %8, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i8*, i8** %394, i64 %396
  %398 = load i8*, i8** %397, align 8
  %399 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i8* %393, i8* %398)
  br label %400

400:                                              ; preds = %387, %384
  %401 = load i32, i32* %8, align 4
  %402 = add nsw i32 %401, 2
  store i32 %402, i32* %8, align 4
  br label %85

403:                                              ; preds = %85
  %404 = load i32, i32* %8, align 4
  %405 = load i32, i32* %6, align 4
  %406 = icmp ne i32 %404, %405
  br i1 %406, label %407, label %414

407:                                              ; preds = %403
  %408 = load i8**, i8*** %7, align 8
  %409 = load i32, i32* %8, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8*, i8** %408, i64 %410
  %412 = load i8*, i8** %411, align 8
  %413 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i8* %412)
  br label %414

414:                                              ; preds = %407, %403
  %415 = load i8*, i8** %9, align 8
  %416 = load i32, i32* @CHELSIO_SET_FILTER, align 4
  %417 = call i64 @doit(i8* %415, i32 %416, %struct.ch_filter* %13)
  %418 = icmp slt i64 %417, 0
  br i1 %418, label %419, label %427

419:                                              ; preds = %414
  %420 = load i64, i64* @errno, align 8
  %421 = load i64, i64* @EBUSY, align 8
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %423, label %425

423:                                              ; preds = %419
  %424 = call i32 @err(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %425

425:                                              ; preds = %423, %419
  %426 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  br label %427

427:                                              ; preds = %425, %414
  store i32 0, i32* %5, align 4
  br label %428

428:                                              ; preds = %427, %83, %48, %35, %18
  %429 = load i32, i32* %5, align 4
  ret i32 %429
}

declare dso_local i32 @memset(%struct.ch_filter*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @show_filters(i8*) #1

declare dso_local i32 @get_int_arg(i8*, i8**) #1

declare dso_local i64 @doit(i8*, i32, %struct.ch_filter*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @parse_ipaddr(i8*, i32*, i32*) #1

declare dso_local i32 @parse_val_mask_param(i8*, i8**, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
