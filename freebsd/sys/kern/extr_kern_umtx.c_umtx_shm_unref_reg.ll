; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_shm_unref_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_shm_unref_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umtx_shm_reg = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@OBJ_UMTXDEAD = common dso_local global i32 0, align 4
@umtx_shm_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.umtx_shm_reg*, i32)* @umtx_shm_unref_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umtx_shm_unref_reg(%struct.umtx_shm_reg* %0, i32 %1) #0 {
  %3 = alloca %struct.umtx_shm_reg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store %struct.umtx_shm_reg* %0, %struct.umtx_shm_reg** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %3, align 8
  %11 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_6__* %15)
  %17 = load i32, i32* @OBJ_UMTXDEAD, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_6__* %22)
  br label %24

24:                                               ; preds = %9, %2
  %25 = call i32 @mtx_lock(i32* @umtx_shm_lock)
  %26 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @umtx_shm_unref_reg_locked(%struct.umtx_shm_reg* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = call i32 @mtx_unlock(i32* @umtx_shm_lock)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %3, align 8
  %34 = call i32 @umtx_shm_free_reg(%struct.umtx_shm_reg* %33)
  br label %35

35:                                               ; preds = %32, %24
  ret void
}

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @umtx_shm_unref_reg_locked(%struct.umtx_shm_reg*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @umtx_shm_free_reg(%struct.umtx_shm_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
