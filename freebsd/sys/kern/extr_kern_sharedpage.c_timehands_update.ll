; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sharedpage.c_timehands_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sharedpage.c_timehands_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdso_sv_tk = type { i64, i64, i64 }
%struct.vdso_timehands = type { i64 }
%struct.vdso_timekeep = type { i64, i64, %struct.vdso_timehands* }

@VDSO_TH_NUM = common dso_local global i64 0, align 8
@shared_page_mapping = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdso_sv_tk*)* @timehands_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timehands_update(%struct.vdso_sv_tk* %0) #0 {
  %2 = alloca %struct.vdso_sv_tk*, align 8
  %3 = alloca %struct.vdso_timehands, align 8
  %4 = alloca %struct.vdso_timekeep*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.vdso_sv_tk* %0, %struct.vdso_sv_tk** %2, align 8
  %7 = call i64 @tc_fill_vdso_timehands(%struct.vdso_timehands* %3)
  store i64 %7, i64* %5, align 8
  %8 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %3, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.vdso_sv_tk*, %struct.vdso_sv_tk** %2, align 8
  %10 = getelementptr inbounds %struct.vdso_sv_tk, %struct.vdso_sv_tk* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* @VDSO_TH_NUM, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.vdso_sv_tk*, %struct.vdso_sv_tk** %2, align 8
  %20 = getelementptr inbounds %struct.vdso_sv_tk, %struct.vdso_sv_tk* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.vdso_sv_tk*, %struct.vdso_sv_tk** %2, align 8
  %22 = getelementptr inbounds %struct.vdso_sv_tk, %struct.vdso_sv_tk* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.vdso_sv_tk*, %struct.vdso_sv_tk** %2, align 8
  %28 = getelementptr inbounds %struct.vdso_sv_tk, %struct.vdso_sv_tk* %27, i32 0, i32 1
  store i64 1, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %17
  %30 = load i64, i64* @shared_page_mapping, align 8
  %31 = load %struct.vdso_sv_tk*, %struct.vdso_sv_tk** %2, align 8
  %32 = getelementptr inbounds %struct.vdso_sv_tk, %struct.vdso_sv_tk* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = inttoptr i64 %34 to %struct.vdso_timekeep*
  store %struct.vdso_timekeep* %35, %struct.vdso_timekeep** %4, align 8
  %36 = load %struct.vdso_timekeep*, %struct.vdso_timekeep** %4, align 8
  %37 = getelementptr inbounds %struct.vdso_timekeep, %struct.vdso_timekeep* %36, i32 0, i32 2
  %38 = load %struct.vdso_timehands*, %struct.vdso_timehands** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %38, i64 %39
  %41 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = call i32 (...) @atomic_thread_fence_rel()
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %29
  %46 = load %struct.vdso_timekeep*, %struct.vdso_timekeep** %4, align 8
  %47 = getelementptr inbounds %struct.vdso_timekeep, %struct.vdso_timekeep* %46, i32 0, i32 2
  %48 = load %struct.vdso_timehands*, %struct.vdso_timehands** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %48, i64 %49
  %51 = bitcast %struct.vdso_timehands* %50 to i8*
  %52 = bitcast %struct.vdso_timehands* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 8, i1 false)
  br label %53

53:                                               ; preds = %45, %29
  %54 = load %struct.vdso_timekeep*, %struct.vdso_timekeep** %4, align 8
  %55 = getelementptr inbounds %struct.vdso_timekeep, %struct.vdso_timekeep* %54, i32 0, i32 2
  %56 = load %struct.vdso_timehands*, %struct.vdso_timehands** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %56, i64 %57
  %59 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %58, i32 0, i32 0
  %60 = load %struct.vdso_sv_tk*, %struct.vdso_sv_tk** %2, align 8
  %61 = getelementptr inbounds %struct.vdso_sv_tk, %struct.vdso_sv_tk* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @atomic_store_rel_32(i64* %59, i64 %62)
  %64 = load %struct.vdso_timekeep*, %struct.vdso_timekeep** %4, align 8
  %65 = getelementptr inbounds %struct.vdso_timekeep, %struct.vdso_timekeep* %64, i32 0, i32 1
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @atomic_store_rel_32(i64* %65, i64 %66)
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.vdso_timekeep*, %struct.vdso_timekeep** %4, align 8
  %70 = getelementptr inbounds %struct.vdso_timekeep, %struct.vdso_timekeep* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  ret void
}

declare dso_local i64 @tc_fill_vdso_timehands(%struct.vdso_timehands*) #1

declare dso_local i32 @atomic_thread_fence_rel(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @atomic_store_rel_32(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
