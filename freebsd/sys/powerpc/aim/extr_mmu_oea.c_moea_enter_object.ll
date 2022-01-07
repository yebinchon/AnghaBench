; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_enter_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_enter_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@PMAP_ENTER_QUICK_LOCKED = common dso_local global i32 0, align 4
@listq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea_enter_object(i32 %0, i32 %1, i64 %2, i64 %3, %struct.TYPE_6__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @VM_OBJECT_ASSERT_LOCKED(i32 %18)
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = sub nsw i64 %20, %21
  %23 = call i64 @atop(i64 %22)
  store i64 %23, i64* %15, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %13, align 8
  %25 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @PMAP_LOCK(i32 %26)
  br label %28

28:                                               ; preds = %43, %6
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %15, align 8
  %40 = icmp slt i64 %38, %39
  br label %41

41:                                               ; preds = %31, %28
  %42 = phi i1 [ false, %28 ], [ %40, %31 ]
  br i1 %42, label %43, label %60

43:                                               ; preds = %41
  %44 = load i32, i32* %8, align 4
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %14, align 8
  %47 = call i64 @ptoa(i64 %46)
  %48 = add nsw i64 %45, %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @VM_PROT_READ, align 4
  %52 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = load i32, i32* @PMAP_ENTER_QUICK_LOCKED, align 4
  %56 = call i32 @moea_enter_locked(i32 %44, i64 %48, %struct.TYPE_6__* %49, i32 %54, i32 %55, i32 0)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %58 = load i32, i32* @listq, align 4
  %59 = call %struct.TYPE_6__* @TAILQ_NEXT(%struct.TYPE_6__* %57, i32 %58)
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %13, align 8
  br label %28

60:                                               ; preds = %41
  %61 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @PMAP_UNLOCK(i32 %62)
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_LOCKED(i32) #1

declare dso_local i64 @atop(i64) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @moea_enter_locked(i32, i64, %struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @ptoa(i64) #1

declare dso_local %struct.TYPE_6__* @TAILQ_NEXT(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
