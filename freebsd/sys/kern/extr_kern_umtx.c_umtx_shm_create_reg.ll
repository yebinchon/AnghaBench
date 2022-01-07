; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_shm_create_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_shm_create_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred* }
%struct.ucred = type { i32 }
%struct.umtx_key = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.umtx_shm_reg = type { i32, i32, i32, i32, i32 }

@RLIMIT_UMTXP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@umtx_shm_reg_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@umtx_shm_lock = common dso_local global i32 0, align 4
@umtx_shm_registry = common dso_local global i32* null, align 8
@ushm_reg_link = common dso_local global i32 0, align 4
@ushm_obj_link = common dso_local global i32 0, align 4
@USHMF_REG_LINKED = common dso_local global i32 0, align 4
@USHMF_OBJ_LINKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.umtx_key*, %struct.umtx_shm_reg**)* @umtx_shm_create_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umtx_shm_create_reg(%struct.thread* %0, %struct.umtx_key* %1, %struct.umtx_shm_reg** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.umtx_key*, align 8
  %7 = alloca %struct.umtx_shm_reg**, align 8
  %8 = alloca %struct.umtx_shm_reg*, align 8
  %9 = alloca %struct.umtx_shm_reg*, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.umtx_key* %1, %struct.umtx_key** %6, align 8
  store %struct.umtx_shm_reg** %2, %struct.umtx_shm_reg*** %7, align 8
  %12 = load %struct.umtx_key*, %struct.umtx_key** %6, align 8
  %13 = call %struct.umtx_shm_reg* @umtx_shm_find_reg(%struct.umtx_key* %12)
  store %struct.umtx_shm_reg* %13, %struct.umtx_shm_reg** %8, align 8
  %14 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %8, align 8
  %15 = icmp ne %struct.umtx_shm_reg* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %8, align 8
  %18 = load %struct.umtx_shm_reg**, %struct.umtx_shm_reg*** %7, align 8
  store %struct.umtx_shm_reg* %17, %struct.umtx_shm_reg** %18, align 8
  store i32 0, i32* %4, align 4
  br label %109

19:                                               ; preds = %3
  %20 = load %struct.thread*, %struct.thread** %5, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 0
  %22 = load %struct.ucred*, %struct.ucred** %21, align 8
  store %struct.ucred* %22, %struct.ucred** %10, align 8
  %23 = load %struct.ucred*, %struct.ucred** %10, align 8
  %24 = getelementptr inbounds %struct.ucred, %struct.ucred* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.thread*, %struct.thread** %5, align 8
  %27 = load i32, i32* @RLIMIT_UMTXP, align 4
  %28 = call i32 @lim_cur(%struct.thread* %26, i32 %27)
  %29 = call i32 @chgumtxcnt(i32 %25, i32 1, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %4, align 4
  br label %109

33:                                               ; preds = %19
  %34 = load i32, i32* @umtx_shm_reg_zone, align 4
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = load i32, i32* @M_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = call %struct.umtx_shm_reg* @uma_zalloc(i32 %34, i32 %37)
  store %struct.umtx_shm_reg* %38, %struct.umtx_shm_reg** %8, align 8
  %39 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %8, align 8
  %40 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.umtx_key*, %struct.umtx_key** %6, align 8
  %42 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %8, align 8
  %43 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %42, i32 0, i32 4
  %44 = call i32 @bcopy(%struct.umtx_key* %41, i32* %43, i32 16)
  %45 = load %struct.thread*, %struct.thread** %5, align 8
  %46 = getelementptr inbounds %struct.thread, %struct.thread* %45, i32 0, i32 0
  %47 = load %struct.ucred*, %struct.ucred** %46, align 8
  %48 = load i32, i32* @O_RDWR, align 4
  %49 = call i32 @shm_alloc(%struct.ucred* %47, i32 %48)
  %50 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %8, align 8
  %51 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ucred*, %struct.ucred** %10, align 8
  %53 = call i32 @crhold(%struct.ucred* %52)
  %54 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %8, align 8
  %55 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %8, align 8
  %57 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = call i32 @shm_dotruncate(i32 %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %33
  %64 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %8, align 8
  %65 = call i32 @umtx_shm_free_reg(%struct.umtx_shm_reg* %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %109

67:                                               ; preds = %33
  %68 = call i32 @mtx_lock(i32* @umtx_shm_lock)
  %69 = load %struct.umtx_key*, %struct.umtx_key** %6, align 8
  %70 = call %struct.umtx_shm_reg* @umtx_shm_find_reg_locked(%struct.umtx_key* %69)
  store %struct.umtx_shm_reg* %70, %struct.umtx_shm_reg** %9, align 8
  %71 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %9, align 8
  %72 = icmp ne %struct.umtx_shm_reg* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = call i32 @mtx_unlock(i32* @umtx_shm_lock)
  %75 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %8, align 8
  %76 = call i32 @umtx_shm_free_reg(%struct.umtx_shm_reg* %75)
  %77 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %9, align 8
  %78 = load %struct.umtx_shm_reg**, %struct.umtx_shm_reg*** %7, align 8
  store %struct.umtx_shm_reg* %77, %struct.umtx_shm_reg** %78, align 8
  store i32 0, i32* %4, align 4
  br label %109

79:                                               ; preds = %67
  %80 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %8, align 8
  %81 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load i32*, i32** @umtx_shm_registry, align 8
  %85 = load %struct.umtx_key*, %struct.umtx_key** %6, align 8
  %86 = getelementptr inbounds %struct.umtx_key, %struct.umtx_key* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %8, align 8
  %90 = load i32, i32* @ushm_reg_link, align 4
  %91 = call i32 @TAILQ_INSERT_TAIL(i32* %88, %struct.umtx_shm_reg* %89, i32 %90)
  %92 = load %struct.umtx_key*, %struct.umtx_key** %6, align 8
  %93 = getelementptr inbounds %struct.umtx_key, %struct.umtx_key* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @USHM_OBJ_UMTX(i32 %96)
  %98 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %8, align 8
  %99 = load i32, i32* @ushm_obj_link, align 4
  %100 = call i32 @LIST_INSERT_HEAD(i32 %97, %struct.umtx_shm_reg* %98, i32 %99)
  %101 = load i32, i32* @USHMF_REG_LINKED, align 4
  %102 = load i32, i32* @USHMF_OBJ_LINKED, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %8, align 8
  %105 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = call i32 @mtx_unlock(i32* @umtx_shm_lock)
  %107 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %8, align 8
  %108 = load %struct.umtx_shm_reg**, %struct.umtx_shm_reg*** %7, align 8
  store %struct.umtx_shm_reg* %107, %struct.umtx_shm_reg** %108, align 8
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %79, %73, %63, %31, %16
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.umtx_shm_reg* @umtx_shm_find_reg(%struct.umtx_key*) #1

declare dso_local i32 @chgumtxcnt(i32, i32, i32) #1

declare dso_local i32 @lim_cur(%struct.thread*, i32) #1

declare dso_local %struct.umtx_shm_reg* @uma_zalloc(i32, i32) #1

declare dso_local i32 @bcopy(%struct.umtx_key*, i32*, i32) #1

declare dso_local i32 @shm_alloc(%struct.ucred*, i32) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

declare dso_local i32 @shm_dotruncate(i32, i32) #1

declare dso_local i32 @umtx_shm_free_reg(%struct.umtx_shm_reg*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.umtx_shm_reg* @umtx_shm_find_reg_locked(%struct.umtx_key*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.umtx_shm_reg*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32, %struct.umtx_shm_reg*, i32) #1

declare dso_local i32 @USHM_OBJ_UMTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
