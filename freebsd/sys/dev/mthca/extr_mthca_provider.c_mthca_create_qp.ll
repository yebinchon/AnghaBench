; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_create_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_pd = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ib_qp_init_attr = type { i32, %struct.TYPE_13__, i32, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.ib_udata = type { i32 }
%struct.mthca_create_qp = type { i32, i32, i32, i32, i32 }
%struct.mthca_qp = type { i32, %struct.ib_qp, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mthca_ucontext = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_qp* (%struct.ib_pd*, %struct.ib_qp_init_attr*, %struct.ib_udata*)* @mthca_create_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_qp* @mthca_create_qp(%struct.ib_pd* %0, %struct.ib_qp_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.ib_qp_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.mthca_create_qp, align 4
  %9 = alloca %struct.mthca_qp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mthca_ucontext*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %12 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %13 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.ib_qp* @ERR_PTR(i32 %18)
  store %struct.ib_qp* %19, %struct.ib_qp** %4, align 8
  br label %303

20:                                               ; preds = %3
  %21 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %22 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %254 [
    i32 131, label %24
    i32 129, label %24
    i32 128, label %24
    i32 130, label %197
    i32 132, label %197
  ]

24:                                               ; preds = %20, %20, %20
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mthca_qp* @kmalloc(i32 40, i32 %25)
  store %struct.mthca_qp* %26, %struct.mthca_qp** %9, align 8
  %27 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %28 = icmp ne %struct.mthca_qp* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.ib_qp* @ERR_PTR(i32 %31)
  store %struct.ib_qp* %32, %struct.ib_qp** %4, align 8
  br label %303

33:                                               ; preds = %24
  %34 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %35 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = icmp ne %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %127

38:                                               ; preds = %33
  %39 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %40 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.mthca_ucontext* @to_mucontext(i32 %43)
  store %struct.mthca_ucontext* %44, %struct.mthca_ucontext** %11, align 8
  %45 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %46 = call i32 @ib_copy_from_udata(%struct.mthca_create_qp* %8, %struct.ib_udata* %45, i32 20)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %50 = call i32 @kfree(%struct.mthca_qp* %49)
  %51 = load i32, i32* @EFAULT, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.ib_qp* @ERR_PTR(i32 %52)
  store %struct.ib_qp* %53, %struct.ib_qp** %4, align 8
  br label %303

54:                                               ; preds = %38
  %55 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %56 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @to_mdev(i32 %57)
  %59 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %11, align 8
  %60 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %59, i32 0, i32 1
  %61 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %11, align 8
  %62 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.mthca_create_qp, %struct.mthca_create_qp* %8, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.mthca_create_qp, %struct.mthca_create_qp* %8, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mthca_map_user_db(i32 %58, i32* %60, i32 %63, i32 %65, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %54
  %72 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %73 = call i32 @kfree(%struct.mthca_qp* %72)
  %74 = load i32, i32* %10, align 4
  %75 = call %struct.ib_qp* @ERR_PTR(i32 %74)
  store %struct.ib_qp* %75, %struct.ib_qp** %4, align 8
  br label %303

76:                                               ; preds = %54
  %77 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %78 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @to_mdev(i32 %79)
  %81 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %11, align 8
  %82 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %81, i32 0, i32 1
  %83 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %11, align 8
  %84 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.mthca_create_qp, %struct.mthca_create_qp* %8, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.mthca_create_qp, %struct.mthca_create_qp* %8, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @mthca_map_user_db(i32 %80, i32* %82, i32 %85, i32 %87, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %76
  %94 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %95 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @to_mdev(i32 %96)
  %98 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %11, align 8
  %99 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %98, i32 0, i32 1
  %100 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %11, align 8
  %101 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.mthca_create_qp, %struct.mthca_create_qp* %8, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mthca_unmap_user_db(i32 %97, i32* %99, i32 %102, i32 %104)
  %106 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %107 = call i32 @kfree(%struct.mthca_qp* %106)
  %108 = load i32, i32* %10, align 4
  %109 = call %struct.ib_qp* @ERR_PTR(i32 %108)
  store %struct.ib_qp* %109, %struct.ib_qp** %4, align 8
  br label %303

110:                                              ; preds = %76
  %111 = getelementptr inbounds %struct.mthca_create_qp, %struct.mthca_create_qp* %8, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %114 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  store i32 %112, i32* %116, align 4
  %117 = getelementptr inbounds %struct.mthca_create_qp, %struct.mthca_create_qp* %8, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %120 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 4
  %122 = getelementptr inbounds %struct.mthca_create_qp, %struct.mthca_create_qp* %8, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %125 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 4
  br label %127

127:                                              ; preds = %110, %33
  %128 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %129 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @to_mdev(i32 %130)
  %132 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %133 = call i32 @to_mpd(%struct.ib_pd* %132)
  %134 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %135 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @to_mcq(i32 %136)
  %138 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %139 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @to_mcq(i32 %140)
  %142 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %143 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %146 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %149 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %148, i32 0, i32 1
  %150 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %151 = call i32 @mthca_alloc_qp(i32 %131, i32 %133, i32 %137, i32 %141, i32 %144, i32 %147, %struct.TYPE_13__* %149, %struct.mthca_qp* %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %190

154:                                              ; preds = %127
  %155 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %156 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %155, i32 0, i32 1
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = icmp ne %struct.TYPE_10__* %157, null
  br i1 %158, label %159, label %190

159:                                              ; preds = %154
  %160 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %161 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %160, i32 0, i32 1
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call %struct.mthca_ucontext* @to_mucontext(i32 %164)
  store %struct.mthca_ucontext* %165, %struct.mthca_ucontext** %11, align 8
  %166 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %167 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @to_mdev(i32 %168)
  %170 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %11, align 8
  %171 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %170, i32 0, i32 1
  %172 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %11, align 8
  %173 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.mthca_create_qp, %struct.mthca_create_qp* %8, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @mthca_unmap_user_db(i32 %169, i32* %171, i32 %174, i32 %176)
  %178 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %179 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @to_mdev(i32 %180)
  %182 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %11, align 8
  %183 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %182, i32 0, i32 1
  %184 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %11, align 8
  %185 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.mthca_create_qp, %struct.mthca_create_qp* %8, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @mthca_unmap_user_db(i32 %181, i32* %183, i32 %186, i32 %188)
  br label %190

190:                                              ; preds = %159, %154, %127
  %191 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %192 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %195 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %195, i32 0, i32 0
  store i32 %193, i32* %196, align 4
  br label %258

197:                                              ; preds = %20, %20
  %198 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %199 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %198, i32 0, i32 1
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = icmp ne %struct.TYPE_10__* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  %205 = call %struct.ib_qp* @ERR_PTR(i32 %204)
  store %struct.ib_qp* %205, %struct.ib_qp** %4, align 8
  br label %303

206:                                              ; preds = %197
  %207 = load i32, i32* @GFP_KERNEL, align 4
  %208 = call %struct.mthca_qp* @kmalloc(i32 4, i32 %207)
  store %struct.mthca_qp* %208, %struct.mthca_qp** %9, align 8
  %209 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %210 = icmp ne %struct.mthca_qp* %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %206
  %212 = load i32, i32* @ENOMEM, align 4
  %213 = sub nsw i32 0, %212
  %214 = call %struct.ib_qp* @ERR_PTR(i32 %213)
  store %struct.ib_qp* %214, %struct.ib_qp** %4, align 8
  br label %303

215:                                              ; preds = %206
  %216 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %217 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp eq i32 %218, 130
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 0, i32 1
  %222 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %223 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 4
  %225 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %226 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @to_mdev(i32 %227)
  %229 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %230 = call i32 @to_mpd(%struct.ib_pd* %229)
  %231 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %232 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @to_mcq(i32 %233)
  %235 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %236 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @to_mcq(i32 %237)
  %239 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %240 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %243 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %242, i32 0, i32 1
  %244 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %245 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %249 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %252 = call i32 @to_msqp(%struct.mthca_qp* %251)
  %253 = call i32 @mthca_alloc_sqp(i32 %228, i32 %230, i32 %234, i32 %238, i32 %241, %struct.TYPE_13__* %243, i32 %247, i32 %250, i32 %252)
  store i32 %253, i32* %10, align 4
  br label %258

254:                                              ; preds = %20
  %255 = load i32, i32* @ENOSYS, align 4
  %256 = sub nsw i32 0, %255
  %257 = call %struct.ib_qp* @ERR_PTR(i32 %256)
  store %struct.ib_qp* %257, %struct.ib_qp** %4, align 8
  br label %303

258:                                              ; preds = %215, %190
  %259 = load i32, i32* %10, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %258
  %262 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %263 = call i32 @kfree(%struct.mthca_qp* %262)
  %264 = load i32, i32* %10, align 4
  %265 = call %struct.ib_qp* @ERR_PTR(i32 %264)
  store %struct.ib_qp* %265, %struct.ib_qp** %4, align 8
  br label %303

266:                                              ; preds = %258
  %267 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %268 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %272 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 4
  store i32 %270, i32* %273, align 4
  %274 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %275 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %279 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 3
  store i32 %277, i32* %280, align 4
  %281 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %282 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %281, i32 0, i32 4
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %286 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 2
  store i32 %284, i32* %287, align 4
  %288 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %289 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %293 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 1
  store i32 %291, i32* %294, align 4
  %295 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %296 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %299 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 0
  store i32 %297, i32* %300, align 4
  %301 = load %struct.mthca_qp*, %struct.mthca_qp** %9, align 8
  %302 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %301, i32 0, i32 1
  store %struct.ib_qp* %302, %struct.ib_qp** %4, align 8
  br label %303

303:                                              ; preds = %266, %261, %254, %211, %202, %93, %71, %48, %29, %16
  %304 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  ret %struct.ib_qp* %304
}

declare dso_local %struct.ib_qp* @ERR_PTR(i32) #1

declare dso_local %struct.mthca_qp* @kmalloc(i32, i32) #1

declare dso_local %struct.mthca_ucontext* @to_mucontext(i32) #1

declare dso_local i32 @ib_copy_from_udata(%struct.mthca_create_qp*, %struct.ib_udata*, i32) #1

declare dso_local i32 @kfree(%struct.mthca_qp*) #1

declare dso_local i32 @mthca_map_user_db(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local i32 @mthca_unmap_user_db(i32, i32*, i32, i32) #1

declare dso_local i32 @mthca_alloc_qp(i32, i32, i32, i32, i32, i32, %struct.TYPE_13__*, %struct.mthca_qp*) #1

declare dso_local i32 @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @to_mcq(i32) #1

declare dso_local i32 @mthca_alloc_sqp(i32, i32, i32, i32, i32, %struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @to_msqp(%struct.mthca_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
