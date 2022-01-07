; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@PMAP_ENTER_NOSLEEP = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moea_enter(i32 %0, i32 %1, i32 %2, %struct.TYPE_4__* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  br label %17

17:                                               ; preds = %43, %7
  %18 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @PMAP_LOCK(i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %15, align 4
  %27 = call i32 @moea_enter_locked(i32 %21, i32 %22, %struct.TYPE_4__* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @PMAP_UNLOCK(i32 %29)
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %17
  %35 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %35, i32* %8, align 4
  br label %49

36:                                               ; preds = %17
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @PMAP_ENTER_NOSLEEP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %42, i32* %8, align 4
  br label %49

43:                                               ; preds = %36
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @VM_OBJECT_ASSERT_UNLOCKED(i32 %46)
  %48 = call i32 @vm_wait(i32* null)
  br label %17

49:                                               ; preds = %41, %34
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @moea_enter_locked(i32, i32, %struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

declare dso_local i32 @VM_OBJECT_ASSERT_UNLOCKED(i32) #1

declare dso_local i32 @vm_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
