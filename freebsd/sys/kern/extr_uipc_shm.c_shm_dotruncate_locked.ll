; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_dotruncate_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_dotruncate_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmfd = type { i32, i32, i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"shm_dotruncate: length < 0\00", align 1
@RA_WLOCKED = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@F_SEAL_SHRINK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_NOCREAT = common dso_local global i32 0, align 4
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"shm_dotruncate: page %p is invalid\00", align 1
@OBJT_SWAP = common dso_local global i64 0, align 8
@F_SEAL_GROW = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@shm_timestamp_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shmfd*, i32, i8*)* @shm_dotruncate_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shm_dotruncate_locked(%struct.shmfd* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shmfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.shmfd* %0, %struct.shmfd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %20 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %19, i32 0, i32 5
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %8, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_10__* %22)
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @RA_WLOCKED, align 4
  %26 = call i32 @rangelock_cookie_assert(i8* %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %29 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %226

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PAGE_MASK, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i64 @OFF_TO_IDX(i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %40 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %177

43:                                               ; preds = %33
  %44 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %45 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @F_SEAL_SHRINK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @EPERM, align 4
  store i32 %51, i32* %4, align 4
  br label %226

52:                                               ; preds = %43
  %53 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %54 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @EBUSY, align 4
  store i32 %58, i32* %4, align 4
  br label %226

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @PAGE_MASK, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %134

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @OFF_TO_IDX(i32 %66)
  store i64 %67, i64* %10, align 8
  br label %68

68:                                               ; preds = %93, %65
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i32, i32* @VM_ALLOC_NOCREAT, align 4
  %72 = call i32* @vm_page_grab(%struct.TYPE_10__* %69, i64 %70, i32 %71)
  store i32* %72, i32** %9, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @vm_page_all_valid(i32* %76)
  %78 = call i32 @MPASS(i32 %77)
  br label %111

79:                                               ; preds = %68
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i64 @vm_pager_has_page(%struct.TYPE_10__* %80, i64 %81, i32* null, i32* null)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %79
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %88 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %89 = or i32 %87, %88
  %90 = call i32* @vm_page_alloc(%struct.TYPE_10__* %85, i64 %86, i32 %89)
  store i32* %90, i32** %9, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %68

94:                                               ; preds = %84
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %96 = call i32 @vm_pager_get_pages(%struct.TYPE_10__* %95, i32** %9, i32 1, i32* null, i32* null)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @VM_PAGER_OK, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @vm_page_launder(i32* %101)
  br label %109

103:                                              ; preds = %94
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @vm_page_free(i32* %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %107 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_10__* %106)
  %108 = load i32, i32* @EIO, align 4
  store i32 %108, i32* %4, align 4
  br label %226

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %79
  br label %111

111:                                              ; preds = %110, %75
  %112 = load i32*, i32** %9, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %133

114:                                              ; preds = %111
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load i64, i64* @PAGE_SIZE, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = sub nsw i64 %117, %119
  %121 = call i32 @pmap_zero_page_area(i32* %115, i32 %116, i64 %120)
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @vm_page_all_valid(i32* %122)
  %124 = load i32*, i32** %9, align 8
  %125 = bitcast i32* %124 to i8*
  %126 = call i32 @KASSERT(i32 %123, i8* %125)
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @vm_page_dirty(i32* %127)
  %129 = load i32*, i32** %9, align 8
  %130 = call i32 @vm_page_xunbusy(i32* %129)
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @vm_pager_page_unswapped(i32* %131)
  br label %133

133:                                              ; preds = %114, %111
  br label %134

134:                                              ; preds = %133, %59
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %11, align 8
  %139 = sub nsw i64 %137, %138
  %140 = call i64 @IDX_TO_OFF(i64 %139)
  store i64 %140, i64* %12, align 8
  %141 = load i64, i64* %11, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %141, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %134
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %148 = load i64, i64* %11, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @vm_object_page_remove(%struct.TYPE_10__* %147, i64 %148, i64 %151, i32 0)
  br label %153

153:                                              ; preds = %146, %134
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @OBJT_SWAP, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %161 = load i64, i64* %11, align 8
  %162 = load i64, i64* %12, align 8
  %163 = call i32 @swap_pager_freespace(%struct.TYPE_10__* %160, i64 %161, i64 %162)
  br label %164

164:                                              ; preds = %159, %153
  %165 = load i64, i64* %12, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @swap_release_by_cred(i64 %165, i32 %168)
  %170 = load i64, i64* %12, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = sub nsw i64 %174, %170
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 8
  br label %209

177:                                              ; preds = %33
  %178 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %179 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @F_SEAL_GROW, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* @EPERM, align 4
  store i32 %185, i32* %4, align 4
  br label %226

186:                                              ; preds = %177
  %187 = load i64, i64* %11, align 8
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = sub nsw i64 %187, %190
  %192 = call i64 @IDX_TO_OFF(i64 %191)
  store i64 %192, i64* %12, align 8
  %193 = load i64, i64* %12, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @swap_reserve_by_cred(i64 %193, i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %186
  %200 = load i32, i32* @ENOMEM, align 4
  store i32 %200, i32* %4, align 4
  br label %226

201:                                              ; preds = %186
  %202 = load i64, i64* %12, align 8
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %206, %202
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %204, align 8
  br label %209

209:                                              ; preds = %201, %164
  %210 = load i32, i32* %6, align 4
  %211 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %212 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = call i32 @mtx_lock(i32* @shm_timestamp_lock)
  %214 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %215 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %214, i32 0, i32 3
  %216 = call i32 @vfs_timestamp(i32* %215)
  %217 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %218 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %221 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %220, i32 0, i32 4
  store i32 %219, i32* %221, align 4
  %222 = call i32 @mtx_unlock(i32* @shm_timestamp_lock)
  %223 = load i64, i64* %11, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  store i64 %223, i64* %225, align 8
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %209, %199, %184, %103, %57, %50, %32
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_10__*) #1

declare dso_local i32 @rangelock_cookie_assert(i8*, i32) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i32* @vm_page_grab(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @vm_page_all_valid(i32*) #1

declare dso_local i64 @vm_pager_has_page(%struct.TYPE_10__*, i64, i32*, i32*) #1

declare dso_local i32* @vm_page_alloc(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @vm_pager_get_pages(%struct.TYPE_10__*, i32**, i32, i32*, i32*) #1

declare dso_local i32 @vm_page_launder(i32*) #1

declare dso_local i32 @vm_page_free(i32*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @pmap_zero_page_area(i32*, i32, i64) #1

declare dso_local i32 @vm_page_dirty(i32*) #1

declare dso_local i32 @vm_page_xunbusy(i32*) #1

declare dso_local i32 @vm_pager_page_unswapped(i32*) #1

declare dso_local i64 @IDX_TO_OFF(i64) #1

declare dso_local i32 @vm_object_page_remove(%struct.TYPE_10__*, i64, i64, i32) #1

declare dso_local i32 @swap_pager_freespace(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @swap_release_by_cred(i64, i32) #1

declare dso_local i32 @swap_reserve_by_cred(i64, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @vfs_timestamp(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
