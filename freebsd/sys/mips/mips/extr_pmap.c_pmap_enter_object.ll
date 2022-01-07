; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_enter_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_enter_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@listq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_enter_object(i32 %0, i64 %1, i64 %2, %struct.TYPE_8__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @VM_OBJECT_ASSERT_LOCKED(i32 %17)
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub nsw i64 %19, %20
  %22 = call i64 @atop(i64 %21)
  store i64 %22, i64* %14, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %11, align 8
  %24 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @PMAP_LOCK(i32 %25)
  br label %27

27:                                               ; preds = %42, %5
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp slt i64 %37, %38
  br label %40

40:                                               ; preds = %30, %27
  %41 = phi i1 [ false, %27 ], [ %39, %30 ]
  br i1 %41, label %42, label %55

42:                                               ; preds = %40
  %43 = load i32, i32* %6, align 4
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i64 @ptoa(i64 %45)
  %47 = add nsw i64 %44, %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %51 = call %struct.TYPE_8__* @pmap_enter_quick_locked(i32 %43, i64 %47, %struct.TYPE_8__* %48, i32 %49, %struct.TYPE_8__* %50)
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %12, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = load i32, i32* @listq, align 4
  %54 = call %struct.TYPE_8__* @TAILQ_NEXT(%struct.TYPE_8__* %52, i32 %53)
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %11, align 8
  br label %27

55:                                               ; preds = %40
  %56 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @PMAP_UNLOCK(i32 %57)
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_LOCKED(i32) #1

declare dso_local i64 @atop(i64) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local %struct.TYPE_8__* @pmap_enter_quick_locked(i32, i64, %struct.TYPE_8__*, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @ptoa(i64) #1

declare dso_local %struct.TYPE_8__* @TAILQ_NEXT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
