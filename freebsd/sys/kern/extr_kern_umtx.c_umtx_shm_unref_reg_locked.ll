; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_shm_unref_reg_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_shm_unref_reg_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umtx_shm_reg = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@umtx_shm_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ushm_reg %p refcnt 0\00", align 1
@USHMF_REG_LINKED = common dso_local global i32 0, align 4
@umtx_shm_registry = common dso_local global i32* null, align 8
@ushm_reg_link = common dso_local global i32 0, align 4
@USHMF_OBJ_LINKED = common dso_local global i32 0, align 4
@ushm_obj_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umtx_shm_reg*, i32)* @umtx_shm_unref_reg_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umtx_shm_unref_reg_locked(%struct.umtx_shm_reg* %0, i32 %1) #0 {
  %3 = alloca %struct.umtx_shm_reg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.umtx_shm_reg* %0, %struct.umtx_shm_reg** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* @umtx_shm_lock, i32 %6)
  %8 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %3, align 8
  %9 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %3, align 8
  %14 = bitcast %struct.umtx_shm_reg* %13 to i8*
  %15 = call i32 @KASSERT(i32 %12, i8* %14)
  %16 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %3, align 8
  %17 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %3, align 8
  %21 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %27, %2
  %31 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %3, align 8
  %32 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @USHMF_REG_LINKED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %30
  %38 = load i32*, i32** @umtx_shm_registry, align 8
  %39 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %3, align 8
  %40 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %3, align 8
  %45 = load i32, i32* @ushm_reg_link, align 4
  %46 = call i32 @TAILQ_REMOVE(i32* %43, %struct.umtx_shm_reg* %44, i32 %45)
  %47 = load i32, i32* @USHMF_REG_LINKED, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %3, align 8
  %50 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %37, %30
  %54 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %3, align 8
  %55 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @USHMF_OBJ_LINKED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %3, align 8
  %62 = load i32, i32* @ushm_obj_link, align 4
  %63 = call i32 @LIST_REMOVE(%struct.umtx_shm_reg* %61, i32 %62)
  %64 = load i32, i32* @USHMF_OBJ_LINKED, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %3, align 8
  %67 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %60, %53
  br label %71

71:                                               ; preds = %70, %27
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.umtx_shm_reg*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.umtx_shm_reg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
