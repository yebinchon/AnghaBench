; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_gprof.c_pmcpl_gmon_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_gprof.c_pmcpl_gmon_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_process = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pmcstat_pmcrecord = type { i32 }
%struct.pmcstat_pcmap = type { i64, i64, %struct.pmcstat_image* }
%struct.pmcstat_image = type { i64, i64, i64, i32 }
%struct.pmcstat_gmonfile = type { i32, i32, i32, i64, i32*, i32*, i32, i32 }

@pmcstat_kernproc = common dso_local global %struct.pmcstat_process* null, align 8
@pmcstat_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PMCSTAT_IMAGE_UNKNOWN = common dso_local global i64 0, align 8
@args = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@PMCSTAT_IMAGE_INDETERMINABLE = common dso_local global i64 0, align 8
@hc_sz = common dso_local global i32 0, align 4
@FLAG_DO_WIDE_GPROF_HC = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ERROR:\00", align 1
@FUNCTION_ALIGNMENT = common dso_local global i64 0, align 8
@pgf_next = common dso_local global i32 0, align 4
@WIDEHISTCOUNTER_MAX = common dso_local global i64 0, align 8
@HISTCOUNTER_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcpl_gmon_process(%struct.pmcstat_process* %0, %struct.pmcstat_pmcrecord* %1, i32 %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pmcstat_process*, align 8
  %8 = alloca %struct.pmcstat_pmcrecord*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pmcstat_pcmap*, align 8
  %14 = alloca %struct.pmcstat_image*, align 8
  %15 = alloca %struct.pmcstat_gmonfile*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  store %struct.pmcstat_process* %0, %struct.pmcstat_process** %7, align 8
  store %struct.pmcstat_pmcrecord* %1, %struct.pmcstat_pmcrecord** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load %struct.pmcstat_process*, %struct.pmcstat_process** %7, align 8
  br label %29

27:                                               ; preds = %6
  %28 = load %struct.pmcstat_process*, %struct.pmcstat_process** @pmcstat_kernproc, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi %struct.pmcstat_process* [ %26, %25 ], [ %28, %27 ]
  %31 = load i64*, i64** %10, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = call %struct.pmcstat_pcmap* @pmcstat_process_find_map(%struct.pmcstat_process* %30, i64 %33)
  store %struct.pmcstat_pcmap* %34, %struct.pmcstat_pcmap** %13, align 8
  %35 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %36 = icmp eq %struct.pmcstat_pcmap* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pmcstat_stats, i32 0, i32 1), align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pmcstat_stats, i32 0, i32 1), align 4
  br label %254

40:                                               ; preds = %29
  %41 = load i64*, i64** %10, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %45 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load i64*, i64** %10, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %53 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br label %56

56:                                               ; preds = %48, %40
  %57 = phi i1 [ false, %40 ], [ %55, %48 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %61 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %60, i32 0, i32 2
  %62 = load %struct.pmcstat_image*, %struct.pmcstat_image** %61, align 8
  store %struct.pmcstat_image* %62, %struct.pmcstat_image** %14, align 8
  %63 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %8, align 8
  %64 = getelementptr inbounds %struct.pmcstat_pmcrecord, %struct.pmcstat_pmcrecord* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %19, align 4
  %66 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %67 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PMCSTAT_IMAGE_UNKNOWN, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %56
  %72 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %73 = call i32 @pmcstat_image_determine_type(%struct.pmcstat_image* %72, %struct.TYPE_5__* @args)
  br label %74

74:                                               ; preds = %71, %56
  %75 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %76 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PMCSTAT_IMAGE_UNKNOWN, align 8
  %79 = icmp ne i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %83 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PMCSTAT_IMAGE_INDETERMINABLE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %74
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pmcstat_stats, i32 0, i32 0), align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pmcstat_stats, i32 0, i32 0), align 4
  br label %254

90:                                               ; preds = %74
  %91 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %92 = load i32, i32* %19, align 4
  %93 = call %struct.pmcstat_gmonfile* @pmcstat_image_find_gmonfile(%struct.pmcstat_image* %91, i32 %92)
  store %struct.pmcstat_gmonfile* %93, %struct.pmcstat_gmonfile** %15, align 8
  %94 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %95 = icmp eq %struct.pmcstat_gmonfile* %94, null
  br i1 %95, label %96, label %167

96:                                               ; preds = %90
  %97 = load i32, i32* @hc_sz, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @args, i32 0, i32 0), align 4
  %101 = load i32, i32* @FLAG_DO_WIDE_GPROF_HC, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 8, i32* @hc_sz, align 4
  br label %106

105:                                              ; preds = %99
  store i32 8, i32* @hc_sz, align 4
  br label %106

106:                                              ; preds = %105, %104
  br label %107

107:                                              ; preds = %106, %96
  %108 = call %struct.pmcstat_gmonfile* @calloc(i32 1, i32 48)
  store %struct.pmcstat_gmonfile* %108, %struct.pmcstat_gmonfile** %15, align 8
  %109 = icmp eq %struct.pmcstat_gmonfile* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @EX_OSERR, align 4
  %112 = call i32 @err(i32 %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %115 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %114, i32 0, i32 4
  store i32* null, i32** %115, align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @args, i32 0, i32 1), align 4
  %117 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @pmcstat_gmon_create_name(i32 %116, %struct.pmcstat_image* %117, i32 %118)
  %120 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %121 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %124 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 8
  %125 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %126 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %129 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp sgt i64 %127, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %135 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %138 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %136, %139
  %141 = load i64, i64* @FUNCTION_ALIGNMENT, align 8
  %142 = call i32 @howmany(i64 %140, i64 %141)
  %143 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %144 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %146 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @hc_sz, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = add i64 4, %150
  %152 = trunc i64 %151 to i32
  %153 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %154 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %156 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  %157 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %158 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %157, i32 0, i32 5
  store i32* null, i32** %158, align 8
  %159 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %160 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %161 = call i32 @pmcstat_gmon_create_file(%struct.pmcstat_gmonfile* %159, %struct.pmcstat_image* %160)
  %162 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %163 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %162, i32 0, i32 3
  %164 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %165 = load i32, i32* @pgf_next, align 4
  %166 = call i32 @LIST_INSERT_HEAD(i32* %163, %struct.pmcstat_gmonfile* %164, i32 %165)
  br label %167

167:                                              ; preds = %113, %90
  %168 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %169 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %174 = call i32 @pmcstat_gmon_map_file(%struct.pmcstat_gmonfile* %173)
  br label %175

175:                                              ; preds = %172, %167
  %176 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %177 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %176, i32 0, i32 4
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  %182 = load i64*, i64** %10, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %186 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = sub nsw i64 %184, %187
  %189 = load i64, i64* @FUNCTION_ALIGNMENT, align 8
  %190 = sdiv i64 %188, %189
  store i64 %190, i64* %16, align 8
  %191 = load i64, i64* %16, align 8
  %192 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %193 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = icmp slt i64 %191, %195
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert(i32 %197)
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @args, i32 0, i32 0), align 4
  %200 = load i32, i32* @FLAG_DO_WIDE_GPROF_HC, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %226

203:                                              ; preds = %175
  %204 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %205 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %204, i32 0, i32 4
  %206 = load i32*, i32** %205, align 8
  %207 = ptrtoint i32* %206 to i64
  %208 = add i64 %207, 4
  %209 = inttoptr i64 %208 to i64*
  store i64* %209, i64** %18, align 8
  %210 = load i64*, i64** %18, align 8
  %211 = load i64, i64* %16, align 8
  %212 = getelementptr inbounds i64, i64* %210, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @WIDEHISTCOUNTER_MAX, align 8
  %215 = icmp slt i64 %213, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %203
  %217 = load i64*, i64** %18, align 8
  %218 = load i64, i64* %16, align 8
  %219 = getelementptr inbounds i64, i64* %217, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %219, align 8
  br label %225

222:                                              ; preds = %203
  %223 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %224 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %223, i32 0, i32 2
  store i32 1, i32* %224, align 8
  br label %225

225:                                              ; preds = %222, %216
  br label %249

226:                                              ; preds = %175
  %227 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %228 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %227, i32 0, i32 4
  %229 = load i32*, i32** %228, align 8
  %230 = ptrtoint i32* %229 to i64
  %231 = add i64 %230, 4
  %232 = inttoptr i64 %231 to i64*
  store i64* %232, i64** %17, align 8
  %233 = load i64*, i64** %17, align 8
  %234 = load i64, i64* %16, align 8
  %235 = getelementptr inbounds i64, i64* %233, i64 %234
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @HISTCOUNTER_MAX, align 8
  %238 = icmp slt i64 %236, %237
  br i1 %238, label %239, label %245

239:                                              ; preds = %226
  %240 = load i64*, i64** %17, align 8
  %241 = load i64, i64* %16, align 8
  %242 = getelementptr inbounds i64, i64* %240, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, 1
  store i64 %244, i64* %242, align 8
  br label %248

245:                                              ; preds = %226
  %246 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %247 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %246, i32 0, i32 2
  store i32 1, i32* %247, align 8
  br label %248

248:                                              ; preds = %245, %239
  br label %249

249:                                              ; preds = %248, %225
  %250 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %15, align 8
  %251 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = add nsw i64 %252, 1
  store i64 %253, i64* %251, align 8
  br label %254

254:                                              ; preds = %249, %87, %37
  ret void
}

declare dso_local %struct.pmcstat_pcmap* @pmcstat_process_find_map(%struct.pmcstat_process*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pmcstat_image_determine_type(%struct.pmcstat_image*, %struct.TYPE_5__*) #1

declare dso_local %struct.pmcstat_gmonfile* @pmcstat_image_find_gmonfile(%struct.pmcstat_image*, i32) #1

declare dso_local %struct.pmcstat_gmonfile* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @pmcstat_gmon_create_name(i32, %struct.pmcstat_image*, i32) #1

declare dso_local i32 @howmany(i64, i64) #1

declare dso_local i32 @pmcstat_gmon_create_file(%struct.pmcstat_gmonfile*, %struct.pmcstat_image*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.pmcstat_gmonfile*, i32) #1

declare dso_local i32 @pmcstat_gmon_map_file(%struct.pmcstat_gmonfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
