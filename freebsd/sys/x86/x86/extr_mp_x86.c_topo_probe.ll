; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_topo_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_topo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }
%struct.topo_node = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.x86_topo_layer = type { i32, i32, i32 }
%struct.x86_topo_layer.0 = type { i32, i32, i32 }

@topo_probe.cpu_topo_probed = internal global i32 0, align 4
@MAX_CACHE_LEVELS = common dso_local global i32 0, align 4
@logical_cpus_mask = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_AMD = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@pkg_id_shift = common dso_local global i8* null, align 8
@core_id_shift = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"bug in APIC topology discovery\00", align 1
@TOPO_TYPE_PKG = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Package ID shift: %u\0A\00", align 1
@node_id_shift = common dso_local global i8* null, align 8
@TOPO_TYPE_GROUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Node ID shift: %u\0A\00", align 1
@caches = common dso_local global %struct.TYPE_5__* null, align 8
@TOPO_TYPE_CACHE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"L%u cache ID shift: %u\0A\00", align 1
@TOPO_TYPE_CORE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Core ID shift: %u\0A\00", align 1
@TOPO_TYPE_PU = common dso_local global i32 0, align 4
@topo_root = common dso_local global %struct.topo_node zeroinitializer, align 4
@max_apic_id = common dso_local global i32 0, align 4
@cpu_info = common dso_local global %struct.TYPE_4__* null, align 8
@boot_cpu_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @topo_probe() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.topo_node*, align 8
  %4 = alloca %struct.topo_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_CACHE_LEVELS, align 4
  %11 = add nsw i32 %10, 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %1, align 8
  %14 = alloca %struct.x86_topo_layer, i64 %12, align 16
  store i64 %12, i64* %2, align 8
  %15 = load i32, i32* @topo_probe.cpu_topo_probed, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store i32 1, i32* %9, align 4
  br label %312

18:                                               ; preds = %0
  %19 = call i32 @CPU_ZERO(i32* @logical_cpus_mask)
  %20 = load i32, i32* @mp_ncpus, align 4
  %21 = icmp sle i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %37

23:                                               ; preds = %18
  %24 = load i64, i64* @cpu_vendor_id, align 8
  %25 = load i64, i64* @CPU_VENDOR_AMD, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (...) @topo_probe_amd()
  br label %36

29:                                               ; preds = %23
  %30 = load i64, i64* @cpu_vendor_id, align 8
  %31 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 (...) @topo_probe_intel()
  br label %35

35:                                               ; preds = %33, %29
  br label %36

36:                                               ; preds = %35, %27
  br label %37

37:                                               ; preds = %36, %22
  %38 = load i8*, i8** @pkg_id_shift, align 8
  %39 = load i8*, i8** @core_id_shift, align 8
  %40 = icmp uge i8* %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  %43 = bitcast %struct.x86_topo_layer* %14 to %struct.x86_topo_layer.0*
  %44 = mul nuw i64 12, %12
  %45 = trunc i64 %44 to i32
  %46 = call i32 @bzero(%struct.x86_topo_layer.0* %43, i32 %45)
  %47 = load i32, i32* @TOPO_TYPE_PKG, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %49
  %51 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load i8*, i8** @pkg_id_shift, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %55
  %57 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %56, i32 0, i32 2
  store i32 %53, i32* %57, align 4
  %58 = load i64, i64* @bootverbose, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %37
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %62
  %64 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %60, %37
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  %70 = load i8*, i8** @pkg_id_shift, align 8
  %71 = load i8*, i8** @node_id_shift, align 8
  %72 = icmp ugt i8* %70, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %67
  %74 = load i8*, i8** @node_id_shift, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %100

76:                                               ; preds = %73
  %77 = load i32, i32* @TOPO_TYPE_GROUP, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %79
  %81 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load i8*, i8** @node_id_shift, align 8
  %83 = ptrtoint i8* %82 to i32
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %85
  %87 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %86, i32 0, i32 2
  store i32 %83, i32* %87, align 4
  %88 = load i64, i64* @bootverbose, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %76
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %92
  %94 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %90, %76
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %97, %73, %67
  %101 = load i32, i32* @MAX_CACHE_LEVELS, align 4
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %189, %100
  %104 = load i32, i32* %8, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %192

106:                                              ; preds = %103
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @caches, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %188

114:                                              ; preds = %106
  %115 = load i8*, i8** @node_id_shift, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** @caches, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i8*, i8** @node_id_shift, align 8
  %125 = icmp ule i8* %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @KASSERT(i32 %126, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %128

128:                                              ; preds = %117, %114
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** @caches, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load i8*, i8** @pkg_id_shift, align 8
  %136 = icmp ule i8* %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @KASSERT(i32 %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** @caches, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i8*, i8** @core_id_shift, align 8
  %146 = icmp uge i8* %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @KASSERT(i32 %147, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %149 = load i32, i32* @TOPO_TYPE_CACHE, align 4
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %151
  %153 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %152, i32 0, i32 0
  store i32 %149, i32* %153, align 4
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %157
  %159 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %158, i32 0, i32 1
  store i32 %155, i32* %159, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** @caches, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = ptrtoint i8* %165 to i32
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %168
  %170 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %169, i32 0, i32 2
  store i32 %166, i32* %170, align 4
  %171 = load i64, i64* @bootverbose, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %128
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %175
  %177 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %180
  %182 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %178, i32 %183)
  br label %185

185:                                              ; preds = %173, %128
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %185, %106
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %8, align 4
  br label %103

192:                                              ; preds = %103
  %193 = load i8*, i8** @pkg_id_shift, align 8
  %194 = load i8*, i8** @core_id_shift, align 8
  %195 = icmp ugt i8* %193, %194
  br i1 %195, label %196, label %220

196:                                              ; preds = %192
  %197 = load i32, i32* @TOPO_TYPE_CORE, align 4
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %199
  %201 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %200, i32 0, i32 0
  store i32 %197, i32* %201, align 4
  %202 = load i8*, i8** @core_id_shift, align 8
  %203 = ptrtoint i8* %202 to i32
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %205
  %207 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %206, i32 0, i32 2
  store i32 %203, i32* %207, align 4
  %208 = load i64, i64* @bootverbose, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %196
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %212
  %214 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %210, %196
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  br label %220

220:                                              ; preds = %217, %192
  %221 = load i32, i32* @TOPO_TYPE_PU, align 4
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %223
  %225 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %224, i32 0, i32 0
  store i32 %221, i32* %225, align 4
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %227
  %229 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %228, i32 0, i32 2
  store i32 0, i32* %229, align 4
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %6, align 4
  %232 = call i32 @topo_init_root(%struct.topo_node* @topo_root)
  store i32 0, i32* %8, align 4
  br label %233

233:                                              ; preds = %276, %220
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* @max_apic_id, align 4
  %236 = icmp sle i32 %234, %235
  br i1 %236, label %237, label %279

237:                                              ; preds = %233
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_info, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %237
  br label %276

246:                                              ; preds = %237
  store %struct.topo_node* @topo_root, %struct.topo_node** %3, align 8
  store i32 0, i32* %5, align 4
  br label %247

247:                                              ; preds = %272, %246
  %248 = load i32, i32* %5, align 4
  %249 = load i32, i32* %6, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %275

251:                                              ; preds = %247
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %254
  %256 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = ashr i32 %252, %257
  store i32 %258, i32* %7, align 4
  %259 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %262
  %264 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %267
  %269 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call %struct.topo_node* @topo_add_node_by_hwid(%struct.topo_node* %259, i32 %260, i32 %265, i32 %270)
  store %struct.topo_node* %271, %struct.topo_node** %3, align 8
  br label %272

272:                                              ; preds = %251
  %273 = load i32, i32* %5, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %5, align 4
  br label %247

275:                                              ; preds = %247
  br label %276

276:                                              ; preds = %275, %245
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %8, align 4
  br label %233

279:                                              ; preds = %233
  store %struct.topo_node* @topo_root, %struct.topo_node** %3, align 8
  store i32 0, i32* %5, align 4
  br label %280

280:                                              ; preds = %308, %279
  %281 = load i32, i32* %5, align 4
  %282 = load i32, i32* %6, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %311

284:                                              ; preds = %280
  %285 = load i32, i32* @boot_cpu_id, align 4
  %286 = load i32, i32* %5, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %287
  %289 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = ashr i32 %285, %290
  store i32 %291, i32* %7, align 4
  %292 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %293 = load i32, i32* %7, align 4
  %294 = load i32, i32* %5, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %295
  %297 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %5, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %14, i64 %300
  %302 = getelementptr inbounds %struct.x86_topo_layer, %struct.x86_topo_layer* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = call %struct.topo_node* @topo_find_node_by_hwid(%struct.topo_node* %292, i32 %293, i32 %298, i32 %303)
  store %struct.topo_node* %304, %struct.topo_node** %4, align 8
  %305 = load %struct.topo_node*, %struct.topo_node** %4, align 8
  %306 = call i32 @topo_promote_child(%struct.topo_node* %305)
  %307 = load %struct.topo_node*, %struct.topo_node** %4, align 8
  store %struct.topo_node* %307, %struct.topo_node** %3, align 8
  br label %308

308:                                              ; preds = %284
  %309 = load i32, i32* %5, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %5, align 4
  br label %280

311:                                              ; preds = %280
  store i32 1, i32* @topo_probe.cpu_topo_probed, align 4
  store i32 0, i32* %9, align 4
  br label %312

312:                                              ; preds = %311, %17
  %313 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %313)
  %314 = load i32, i32* %9, align 4
  switch i32 %314, label %316 [
    i32 0, label %315
    i32 1, label %315
  ]

315:                                              ; preds = %312, %312
  ret void

316:                                              ; preds = %312
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CPU_ZERO(i32*) #2

declare dso_local i32 @topo_probe_amd(...) #2

declare dso_local i32 @topo_probe_intel(...) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @bzero(%struct.x86_topo_layer.0*, i32) #2

declare dso_local i32 @printf(i8*, i32, ...) #2

declare dso_local i32 @topo_init_root(%struct.topo_node*) #2

declare dso_local %struct.topo_node* @topo_add_node_by_hwid(%struct.topo_node*, i32, i32, i32) #2

declare dso_local %struct.topo_node* @topo_find_node_by_hwid(%struct.topo_node*, i32, i32, i32) #2

declare dso_local i32 @topo_promote_child(%struct.topo_node*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
