; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_alloc_gref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_alloc_gref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ioctl_gntdev_alloc_gref = type { i32, i32, i32*, i8*, i32 }
%struct.gntdev_gref = type { i32, %struct.TYPE_6__*, i32*, i8* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.per_user_data = type { i32, i32 }

@GNTDEV_ALLOC_FLAG_WRITABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@cleanup_task = common dso_local global i32 0, align 4
@M_GNTDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@GRANT_REF_INVALID = common dso_local global i32 0, align 4
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Page allocation failed.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@VM_PAGE_BITS_ALL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Grant Table Hypercall failed.\00", align 1
@cleanup_data = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@gref_next = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@gref_tree_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioctl_gntdev_alloc_gref*)* @gntdev_alloc_gref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gntdev_alloc_gref(%struct.ioctl_gntdev_alloc_gref* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioctl_gntdev_alloc_gref*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gntdev_gref*, align 8
  %9 = alloca %struct.per_user_data*, align 8
  store %struct.ioctl_gntdev_alloc_gref* %0, %struct.ioctl_gntdev_alloc_gref** %3, align 8
  %10 = load %struct.ioctl_gntdev_alloc_gref*, %struct.ioctl_gntdev_alloc_gref** %3, align 8
  %11 = getelementptr inbounds %struct.ioctl_gntdev_alloc_gref, %struct.ioctl_gntdev_alloc_gref* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GNTDEV_ALLOC_FLAG_WRITABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = bitcast %struct.per_user_data** %9 to i8**
  %19 = call i32 @devfs_get_cdevpriv(i8** %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %2, align 4
  br label %225

24:                                               ; preds = %1
  %25 = load i32, i32* @taskqueue_thread, align 4
  %26 = call i32 @taskqueue_enqueue(i32 %25, i32* @cleanup_task)
  %27 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %28 = load %struct.ioctl_gntdev_alloc_gref*, %struct.ioctl_gntdev_alloc_gref** %3, align 8
  %29 = getelementptr inbounds %struct.ioctl_gntdev_alloc_gref, %struct.ioctl_gntdev_alloc_gref* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_file_offset(%struct.per_user_data* %27, i32 %30, i8** %7)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %225

36:                                               ; preds = %24
  %37 = load %struct.ioctl_gntdev_alloc_gref*, %struct.ioctl_gntdev_alloc_gref** %3, align 8
  %38 = getelementptr inbounds %struct.ioctl_gntdev_alloc_gref, %struct.ioctl_gntdev_alloc_gref* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 32, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @M_GNTDEV, align 4
  %44 = load i32, i32* @M_WAITOK, align 4
  %45 = call %struct.gntdev_gref* @malloc(i32 %42, i32 %43, i32 %44)
  store %struct.gntdev_gref* %45, %struct.gntdev_gref** %8, align 8
  store i64 0, i64* %4, align 8
  br label %46

46:                                               ; preds = %143, %36
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.ioctl_gntdev_alloc_gref*, %struct.ioctl_gntdev_alloc_gref** %3, align 8
  %49 = getelementptr inbounds %struct.ioctl_gntdev_alloc_gref, %struct.ioctl_gntdev_alloc_gref* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %53, label %146

53:                                               ; preds = %46
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @PAGE_SIZE, align 8
  %57 = mul i64 %55, %56
  %58 = getelementptr i8, i8* %54, i64 %57
  %59 = load %struct.gntdev_gref*, %struct.gntdev_gref** %8, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %59, i64 %60
  %62 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %61, i32 0, i32 3
  store i8* %58, i8** %62, align 8
  %63 = load i32, i32* @GRANT_REF_INVALID, align 4
  %64 = load %struct.gntdev_gref*, %struct.gntdev_gref** %8, align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %64, i64 %65
  %67 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  %68 = load %struct.gntdev_gref*, %struct.gntdev_gref** %8, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %68, i64 %69
  %71 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %70, i32 0, i32 2
  store i32* null, i32** %71, align 8
  %72 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %73 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %78 = or i32 %76, %77
  %79 = call %struct.TYPE_6__* @vm_page_alloc(i32* null, i32 0, i32 %78)
  %80 = load %struct.gntdev_gref*, %struct.gntdev_gref** %8, align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %80, i64 %81
  %83 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %82, i32 0, i32 1
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %83, align 8
  %84 = load %struct.gntdev_gref*, %struct.gntdev_gref** %8, align 8
  %85 = load i64, i64* %4, align 8
  %86 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %84, i64 %85
  %87 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = icmp eq %struct.TYPE_6__* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %53
  %91 = load i32, i32* @LOG_ERR, align 4
  %92 = call i32 @log(i32 %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @ENOMEM, align 4
  store i32 %93, i32* %5, align 4
  br label %146

94:                                               ; preds = %53
  %95 = load %struct.gntdev_gref*, %struct.gntdev_gref** %8, align 8
  %96 = load i64, i64* %4, align 8
  %97 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %95, i64 %96
  %98 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @PG_ZERO, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %94
  %106 = load %struct.gntdev_gref*, %struct.gntdev_gref** %8, align 8
  %107 = load i64, i64* %4, align 8
  %108 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %106, i64 %107
  %109 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = call i32 @pmap_zero_page(%struct.TYPE_6__* %110)
  br label %112

112:                                              ; preds = %105, %94
  %113 = load i32, i32* @VM_PAGE_BITS_ALL, align 4
  %114 = load %struct.gntdev_gref*, %struct.gntdev_gref** %8, align 8
  %115 = load i64, i64* %4, align 8
  %116 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %114, i64 %115
  %117 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i32 %113, i32* %119, align 4
  %120 = load %struct.ioctl_gntdev_alloc_gref*, %struct.ioctl_gntdev_alloc_gref** %3, align 8
  %121 = getelementptr inbounds %struct.ioctl_gntdev_alloc_gref, %struct.ioctl_gntdev_alloc_gref* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.gntdev_gref*, %struct.gntdev_gref** %8, align 8
  %124 = load i64, i64* %4, align 8
  %125 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %123, i64 %124
  %126 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__* %127)
  %129 = load i32, i32* @PAGE_SHIFT, align 4
  %130 = ashr i32 %128, %129
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.gntdev_gref*, %struct.gntdev_gref** %8, align 8
  %133 = load i64, i64* %4, align 8
  %134 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %132, i64 %133
  %135 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %134, i32 0, i32 0
  %136 = call i32 @gnttab_grant_foreign_access(i32 %122, i32 %130, i32 %131, i32* %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %112
  %140 = load i32, i32* @LOG_ERR, align 4
  %141 = call i32 @log(i32 %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %146

142:                                              ; preds = %112
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %4, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %4, align 8
  br label %46

146:                                              ; preds = %139, %90, %46
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %172

149:                                              ; preds = %146
  %150 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cleanup_data, i32 0, i32 0))
  store i64 0, i64* %4, align 8
  br label %151

151:                                              ; preds = %164, %149
  %152 = load i64, i64* %4, align 8
  %153 = load %struct.ioctl_gntdev_alloc_gref*, %struct.ioctl_gntdev_alloc_gref** %3, align 8
  %154 = getelementptr inbounds %struct.ioctl_gntdev_alloc_gref, %struct.ioctl_gntdev_alloc_gref* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp ult i64 %152, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %151
  %159 = load %struct.gntdev_gref*, %struct.gntdev_gref** %8, align 8
  %160 = load i64, i64* %4, align 8
  %161 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %159, i64 %160
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gref_next, i32 0, i32 0), align 4
  %163 = call i32 @STAILQ_INSERT_TAIL(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cleanup_data, i32 0, i32 1), %struct.gntdev_gref* %161, i32 %162)
  br label %164

164:                                              ; preds = %158
  %165 = load i64, i64* %4, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %4, align 8
  br label %151

167:                                              ; preds = %151
  %168 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cleanup_data, i32 0, i32 0))
  %169 = load i32, i32* @taskqueue_thread, align 4
  %170 = call i32 @taskqueue_enqueue(i32 %169, i32* @cleanup_task)
  %171 = load i32, i32* %5, align 4
  store i32 %171, i32* %2, align 4
  br label %225

172:                                              ; preds = %146
  %173 = load i8*, i8** %7, align 8
  %174 = load %struct.ioctl_gntdev_alloc_gref*, %struct.ioctl_gntdev_alloc_gref** %3, align 8
  %175 = getelementptr inbounds %struct.ioctl_gntdev_alloc_gref, %struct.ioctl_gntdev_alloc_gref* %174, i32 0, i32 3
  store i8* %173, i8** %175, align 8
  store i64 0, i64* %4, align 8
  br label %176

176:                                              ; preds = %195, %172
  %177 = load i64, i64* %4, align 8
  %178 = load %struct.ioctl_gntdev_alloc_gref*, %struct.ioctl_gntdev_alloc_gref** %3, align 8
  %179 = getelementptr inbounds %struct.ioctl_gntdev_alloc_gref, %struct.ioctl_gntdev_alloc_gref* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp ult i64 %177, %181
  br i1 %182, label %183, label %198

183:                                              ; preds = %176
  %184 = load %struct.ioctl_gntdev_alloc_gref*, %struct.ioctl_gntdev_alloc_gref** %3, align 8
  %185 = getelementptr inbounds %struct.ioctl_gntdev_alloc_gref, %struct.ioctl_gntdev_alloc_gref* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* %4, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load %struct.gntdev_gref*, %struct.gntdev_gref** %8, align 8
  %190 = load i64, i64* %4, align 8
  %191 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %189, i64 %190
  %192 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @suword32(i32* %188, i32 %193)
  br label %195

195:                                              ; preds = %183
  %196 = load i64, i64* %4, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %4, align 8
  br label %176

198:                                              ; preds = %176
  %199 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %200 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %199, i32 0, i32 0
  %201 = call i32 @mtx_lock(i32* %200)
  store i64 0, i64* %4, align 8
  br label %202

202:                                              ; preds = %217, %198
  %203 = load i64, i64* %4, align 8
  %204 = load %struct.ioctl_gntdev_alloc_gref*, %struct.ioctl_gntdev_alloc_gref** %3, align 8
  %205 = getelementptr inbounds %struct.ioctl_gntdev_alloc_gref, %struct.ioctl_gntdev_alloc_gref* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = icmp ult i64 %203, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %202
  %210 = load i32, i32* @gref_tree_head, align 4
  %211 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %212 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %211, i32 0, i32 1
  %213 = load %struct.gntdev_gref*, %struct.gntdev_gref** %8, align 8
  %214 = load i64, i64* %4, align 8
  %215 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %213, i64 %214
  %216 = call i32 @RB_INSERT(i32 %210, i32* %212, %struct.gntdev_gref* %215)
  br label %217

217:                                              ; preds = %209
  %218 = load i64, i64* %4, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %4, align 8
  br label %202

220:                                              ; preds = %202
  %221 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %222 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %221, i32 0, i32 0
  %223 = call i32 @mtx_unlock(i32* %222)
  %224 = load i32, i32* %5, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %220, %167, %34, %22
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @get_file_offset(%struct.per_user_data*, i32, i8**) #1

declare dso_local %struct.gntdev_gref* @malloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @log(i32, i8*) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_6__*) #1

declare dso_local i32 @gnttab_grant_foreign_access(i32, i32, i32, i32*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.gntdev_gref*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @suword32(i32*, i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.gntdev_gref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
