; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_mmap_gmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_mmap_gmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_user_data = type { i32 }
%struct.gntdev_gmap = type { i64, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.vm_object*, i64, i32*, i64 }
%struct.vm_object = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i64 }

@M_GNTDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@gntdev_dev = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OBJT_MGTDEVICE = common dso_local global i32 0, align 4
@gntdev_gmap_pg_ops = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PROT_WRITE = common dso_local global i32 0, align 4
@GNTMAP_readonly = common dso_local global i32 0, align 4
@GNTTABOP_map_grant_ref = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GNTST_eagain = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"gntmap\00", align 1
@SBT_1MS = common dso_local global i32 0, align 4
@GNTST_bad_page = common dso_local global i64 0, align 8
@GNTST_okay = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.per_user_data*, %struct.gntdev_gmap*, i32*, i32, %struct.vm_object**, i32)* @mmap_gmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_gmap(%struct.per_user_data* %0, %struct.gntdev_gmap* %1, i32* %2, i32 %3, %struct.vm_object** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.per_user_data*, align 8
  %9 = alloca %struct.gntdev_gmap*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vm_object**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.per_user_data* %0, %struct.per_user_data** %8, align 8
  store %struct.gntdev_gmap* %1, %struct.gntdev_gmap** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.vm_object** %4, %struct.vm_object*** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %18 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %6
  %22 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %23 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.vm_object*, %struct.vm_object** %25, align 8
  %27 = call i32 @vm_object_reference(%struct.vm_object* %26)
  %28 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %29 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.vm_object*, %struct.vm_object** %31, align 8
  %33 = load %struct.vm_object**, %struct.vm_object*** %12, align 8
  store %struct.vm_object* %32, %struct.vm_object** %33, align 8
  store i32 0, i32* %7, align 4
  br label %272

34:                                               ; preds = %6
  %35 = load i32, i32* @M_GNTDEV, align 4
  %36 = load i32, i32* @M_WAITOK, align 4
  %37 = load i32, i32* @M_ZERO, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.TYPE_4__* @malloc(i32 32, i32 %35, i32 %38)
  %40 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %41 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %40, i32 0, i32 1
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %41, align 8
  %42 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %43 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @gntdev_dev, align 4
  %47 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %48 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32, i32* %11, align 4
  %52 = call i32* @xenmem_alloc(i32 %46, i64* %50, i32 %51)
  %53 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %54 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32* %52, i32** %56, align 8
  %57 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %58 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %34
  %64 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %65 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* @M_GNTDEV, align 4
  %68 = call i32 @free(%struct.TYPE_4__* %66, i32 %67)
  %69 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %70 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %69, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %70, align 8
  %71 = load i32, i32* @ENOMEM, align 4
  store i32 %71, i32* %7, align 4
  br label %272

72:                                               ; preds = %34
  %73 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %74 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @rman_get_start(i32* %77)
  %79 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %80 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i64 %78, i64* %82, align 8
  %83 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %84 = load i32, i32* @OBJT_MGTDEVICE, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.vm_object* @cdev_pager_allocate(%struct.gntdev_gmap* %83, i32 %84, i32* @gntdev_gmap_pg_ops, i32 %85, i32 %86, i32 %88, i32* null)
  %90 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %91 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store %struct.vm_object* %89, %struct.vm_object** %93, align 8
  %94 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %95 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.vm_object*, %struct.vm_object** %97, align 8
  %99 = icmp eq %struct.vm_object* %98, null
  br i1 %99, label %100, label %121

100:                                              ; preds = %72
  %101 = load i32, i32* @gntdev_dev, align 4
  %102 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %103 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %108 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @xenmem_free(i32 %101, i64 %106, i32* %111)
  %113 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %114 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* @M_GNTDEV, align 4
  %117 = call i32 @free(%struct.TYPE_4__* %115, i32 %116)
  %118 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %119 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %118, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %119, align 8
  %120 = load i32, i32* @ENOMEM, align 4
  store i32 %120, i32* %7, align 4
  br label %272

121:                                              ; preds = %72
  store i64 0, i64* %14, align 8
  br label %122

122:                                              ; preds = %159, %121
  %123 = load i64, i64* %14, align 8
  %124 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %125 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ult i64 %123, %126
  br i1 %127, label %128, label %162

128:                                              ; preds = %122
  %129 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %130 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %14, align 8
  %135 = load i64, i64* @PAGE_SIZE, align 8
  %136 = mul i64 %134, %135
  %137 = add i64 %133, %136
  %138 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %139 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %138, i32 0, i32 2
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  store i64 %137, i64* %143, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* @PROT_WRITE, align 4
  %146 = and i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %128
  %149 = load i32, i32* @GNTMAP_readonly, align 4
  %150 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %151 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %150, i32 0, i32 2
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load i64, i64* %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %149
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %148, %128
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %14, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %14, align 8
  br label %122

162:                                              ; preds = %122
  %163 = load i32, i32* @GNTTABOP_map_grant_ref, align 4
  %164 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %165 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %164, i32 0, i32 2
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %168 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = call i32 @HYPERVISOR_grant_table_op(i32 %163, %struct.TYPE_5__* %166, i32 %170)
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %162
  %175 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %176 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %175, i32 0, i32 1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load %struct.vm_object*, %struct.vm_object** %178, align 8
  %180 = call i32 @vm_object_deallocate(%struct.vm_object* %179)
  %181 = load i32, i32* @EINVAL, align 4
  store i32 %181, i32* %7, align 4
  br label %272

182:                                              ; preds = %162
  store i64 0, i64* %14, align 8
  br label %183

183:                                              ; preds = %256, %182
  %184 = load i64, i64* %14, align 8
  %185 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %186 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ult i64 %184, %187
  br i1 %188, label %189, label %259

189:                                              ; preds = %183
  store i32 1, i32* %16, align 4
  br label %190

190:                                              ; preds = %205, %189
  %191 = load i32, i32* %16, align 4
  %192 = icmp slt i32 %191, 256
  br i1 %192, label %193, label %203

193:                                              ; preds = %190
  %194 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %195 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %194, i32 0, i32 2
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %195, align 8
  %197 = load i64, i64* %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @GNTST_eagain, align 8
  %202 = icmp eq i64 %200, %201
  br label %203

203:                                              ; preds = %193, %190
  %204 = phi i1 [ false, %190 ], [ %202, %193 ]
  br i1 %204, label %205, label %219

205:                                              ; preds = %203
  %206 = load i32, i32* @GNTTABOP_map_grant_ref, align 4
  %207 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %208 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %207, i32 0, i32 2
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %208, align 8
  %210 = load i64, i64* %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i64 %210
  %212 = call i32 @HYPERVISOR_grant_table_op(i32 %206, %struct.TYPE_5__* %211, i32 1)
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* @SBT_1MS, align 4
  %215 = mul nsw i32 %213, %214
  %216 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %16, align 4
  br label %190

219:                                              ; preds = %203
  %220 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %221 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %220, i32 0, i32 2
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = load i64, i64* %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @GNTST_eagain, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %237

229:                                              ; preds = %219
  %230 = load i64, i64* @GNTST_bad_page, align 8
  %231 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %232 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %231, i32 0, i32 2
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = load i64, i64* %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  store i64 %230, i64* %236, align 8
  br label %237

237:                                              ; preds = %229, %219
  %238 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %239 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %238, i32 0, i32 2
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %239, align 8
  %241 = load i64, i64* %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @GNTST_okay, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %255

247:                                              ; preds = %237
  %248 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %249 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %248, i32 0, i32 1
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load %struct.vm_object*, %struct.vm_object** %251, align 8
  %253 = call i32 @vm_object_deallocate(%struct.vm_object* %252)
  %254 = load i32, i32* @EINVAL, align 4
  store i32 %254, i32* %7, align 4
  br label %272

255:                                              ; preds = %237
  br label %256

256:                                              ; preds = %255
  %257 = load i64, i64* %14, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %14, align 8
  br label %183

259:                                              ; preds = %183
  %260 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %261 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %260, i32 0, i32 1
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = load %struct.vm_object*, %struct.vm_object** %263, align 8
  %265 = call i32 @vm_object_reference(%struct.vm_object* %264)
  %266 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %267 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %266, i32 0, i32 1
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 0
  %270 = load %struct.vm_object*, %struct.vm_object** %269, align 8
  %271 = load %struct.vm_object**, %struct.vm_object*** %12, align 8
  store %struct.vm_object* %270, %struct.vm_object** %271, align 8
  store i32 0, i32* %7, align 4
  br label %272

272:                                              ; preds = %259, %247, %174, %100, %63, %21
  %273 = load i32, i32* %7, align 4
  ret i32 %273
}

declare dso_local i32 @vm_object_reference(%struct.vm_object*) #1

declare dso_local %struct.TYPE_4__* @malloc(i32, i32, i32) #1

declare dso_local i32* @xenmem_alloc(i32, i64*, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @rman_get_start(i32*) #1

declare dso_local %struct.vm_object* @cdev_pager_allocate(%struct.gntdev_gmap*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @xenmem_free(i32, i64, i32*) #1

declare dso_local i32 @HYPERVISOR_grant_table_op(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @vm_object_deallocate(%struct.vm_object*) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
