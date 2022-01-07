; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_ldm_privhdr_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_ldm_privhdr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldm_db = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ldm_privhdr = type { i32, i32, i32, i32, i32*, i32, i32 }

@ldm_ph_off = common dso_local global i32* null, align 8
@LDM_PH_MBRINDEX = common dso_local global i32 0, align 4
@LDM_DB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: failed to read private header %d at LBA %ju\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: failed to parse private header %d\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: invalid values in the private header %d\00", align 1
@.str.3 = private unnamed_addr constant [132 x i8] c"%s: start: %jd, size: %jd, db_offset: %jd, db_size: %jd, th_offset0: %jd, th_offset1: %jd, conf_size: %jd, log_size: %jd, last: %jd\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: private headers are not equal\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%s: refuse LDM metadata\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"%s: valid LDM private header not found\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldm_db*, %struct.g_consumer*, i32)* @ldm_privhdr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_privhdr_check(%struct.ldm_db* %0, %struct.g_consumer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ldm_db*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.g_consumer*, align 8
  %9 = alloca %struct.g_provider*, align 8
  %10 = alloca %struct.ldm_privhdr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.ldm_db* %0, %struct.ldm_db** %5, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %18 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %17, i32 0, i32 0
  %19 = load %struct.g_provider*, %struct.g_provider** %18, align 8
  store %struct.g_provider* %19, %struct.g_provider** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %3
  %23 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %24 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call %struct.g_consumer* @LIST_FIRST(i32* %26)
  store %struct.g_consumer* %27, %struct.g_consumer** %8, align 8
  %28 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %29 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %28, i32 0, i32 0
  %30 = load %struct.g_provider*, %struct.g_provider** %29, align 8
  %31 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %34 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %33, i32 0, i32 0
  %35 = load %struct.g_provider*, %struct.g_provider** %34, align 8
  %36 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %32, %37
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  br label %49

40:                                               ; preds = %3
  %41 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %42 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %45 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %43, %46
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %40, %22
  store i32 0, i32* %14, align 4
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %243, %49
  %52 = load i32, i32* %15, align 4
  %53 = load i32*, i32** @ldm_ph_off, align 8
  %54 = call i32 @nitems(i32* %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %246

56:                                               ; preds = %51
  %57 = load i32*, i32** @ldm_ph_off, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %56
  %65 = load %struct.ldm_db*, %struct.ldm_db** %5, align 8
  %66 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %64, %56
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* @LDM_PH_MBRINDEX, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @LDM_DB_SIZE, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load %struct.ldm_db*, %struct.ldm_db** %5, align 8
  %80 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %71
  %83 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %86 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = call i32* @ldm_privhdr_read(%struct.g_consumer* %83, i32 %88, i32* %13)
  store i32* %89, i32** %16, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %82
  %93 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %94 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96, i32 %97)
  br label %243

99:                                               ; preds = %82
  %100 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = call i32 @ldm_privhdr_parse(%struct.g_consumer* %100, %struct.ldm_privhdr* %10, i32* %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %99
  %106 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %107 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i32*, i32** %16, align 8
  %112 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %113 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @LDM_DUMP(i32* %111, i32 %114)
  %116 = load i32*, i32** %16, align 8
  %117 = call i32 @g_free(i32* %116)
  br label %243

118:                                              ; preds = %99
  %119 = load i32*, i32** %16, align 8
  %120 = call i32 @g_free(i32* %119)
  %121 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %182, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %127, %129
  %131 = sub nsw i32 %130, 1
  %132 = load i32, i32* %12, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %182, label %134

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %136, %138
  %140 = sub nsw i32 %139, 1
  %141 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp sgt i32 %140, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %134
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %182

147:                                              ; preds = %144, %134
  %148 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @LDM_DB_SIZE, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %182, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @LDM_DB_SIZE, align 4
  %156 = add nsw i32 %154, %155
  %157 = sub nsw i32 %156, 1
  %158 = load i32, i32* %12, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %182, label %160

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 4
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @LDM_DB_SIZE, align 4
  %166 = icmp sge i32 %164, %165
  br i1 %166, label %182, label %167

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @LDM_DB_SIZE, align 4
  %173 = icmp sge i32 %171, %172
  br i1 %173, label %182, label %174

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %176, %178
  %180 = load i32, i32* @LDM_DB_SIZE, align 4
  %181 = icmp sge i32 %179, %180
  br i1 %181, label %182, label %213

182:                                              ; preds = %174, %167, %160, %152, %147, %144, %125, %118
  %183 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %184 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %15, align 4
  %187 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %185, i32 %186)
  %188 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %189 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 4
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %10, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %12, align 4
  %212 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 2, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.3, i64 0, i64 0), i32 %190, i32 %192, i32 %194, i32 %196, i32 %198, i32 %202, i32 %206, i32 %208, i32 %210, i32 %211)
  br label %243

213:                                              ; preds = %174
  %214 = load i32, i32* %14, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %235

216:                                              ; preds = %213
  %217 = load %struct.ldm_db*, %struct.ldm_db** %5, align 8
  %218 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %217, i32 0, i32 0
  %219 = call i64 @memcmp(%struct.TYPE_5__* %218, %struct.ldm_privhdr* %10, i32 32)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %235

221:                                              ; preds = %216
  %222 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %223 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* %15, align 4
  %227 = icmp sgt i32 %226, 1
  br i1 %227, label %228, label %234

228:                                              ; preds = %221
  %229 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %230 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* @EINVAL, align 4
  store i32 %233, i32* %4, align 4
  br label %256

234:                                              ; preds = %221
  store i32 0, i32* %14, align 4
  br label %235

235:                                              ; preds = %234, %216, %213
  %236 = load i32, i32* %14, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = load %struct.ldm_db*, %struct.ldm_db** %5, align 8
  %240 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %239, i32 0, i32 0
  %241 = call i32 @memcpy(%struct.TYPE_5__* %240, %struct.ldm_privhdr* %10, i32 32)
  br label %242

242:                                              ; preds = %238, %235
  store i32 1, i32* %14, align 4
  br label %243

243:                                              ; preds = %242, %182, %105, %92
  %244 = load i32, i32* %15, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %15, align 4
  br label %51

246:                                              ; preds = %51
  %247 = load i32, i32* %14, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %246
  %250 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %251 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %252)
  %254 = load i32, i32* @ENXIO, align 4
  store i32 %254, i32* %4, align 4
  br label %256

255:                                              ; preds = %246
  store i32 0, i32* %4, align 4
  br label %256

256:                                              ; preds = %255, %249, %228
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32* @ldm_privhdr_read(%struct.g_consumer*, i32, i32*) #1

declare dso_local i32 @LDM_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @ldm_privhdr_parse(%struct.g_consumer*, %struct.ldm_privhdr*, i32*) #1

declare dso_local i32 @LDM_DUMP(i32*, i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i64 @memcmp(%struct.TYPE_5__*, %struct.ldm_privhdr*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.ldm_privhdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
