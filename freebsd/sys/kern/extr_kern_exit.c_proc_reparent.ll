; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_proc_reparent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_proc_reparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32, i32, %struct.proc*, i32, i32 }

@proctree_lock = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@p_sibling = common dso_local global i32 0, align 4
@P_TRACED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_reparent(%struct.proc* %0, %struct.proc* %1, i32 %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @SX_XLOCKED, align 4
  %8 = call i32 @sx_assert(i32* @proctree_lock, i32 %7)
  %9 = load %struct.proc*, %struct.proc** %4, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %9, i32 %10)
  %12 = load %struct.proc*, %struct.proc** %4, align 8
  %13 = getelementptr inbounds %struct.proc, %struct.proc* %12, i32 0, i32 3
  %14 = load %struct.proc*, %struct.proc** %13, align 8
  %15 = load %struct.proc*, %struct.proc** %5, align 8
  %16 = icmp eq %struct.proc* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %65

18:                                               ; preds = %3
  %19 = load %struct.proc*, %struct.proc** %4, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 3
  %21 = load %struct.proc*, %struct.proc** %20, align 8
  %22 = call i32 @PROC_LOCK(%struct.proc* %21)
  %23 = load %struct.proc*, %struct.proc** %4, align 8
  %24 = getelementptr inbounds %struct.proc, %struct.proc* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sigqueue_take(i32 %25)
  %27 = load %struct.proc*, %struct.proc** %4, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 3
  %29 = load %struct.proc*, %struct.proc** %28, align 8
  %30 = call i32 @PROC_UNLOCK(%struct.proc* %29)
  %31 = load %struct.proc*, %struct.proc** %4, align 8
  %32 = load i32, i32* @p_sibling, align 4
  %33 = call i32 @LIST_REMOVE(%struct.proc* %31, i32 %32)
  %34 = load %struct.proc*, %struct.proc** %5, align 8
  %35 = getelementptr inbounds %struct.proc, %struct.proc* %34, i32 0, i32 4
  %36 = load %struct.proc*, %struct.proc** %4, align 8
  %37 = load i32, i32* @p_sibling, align 4
  %38 = call i32 @LIST_INSERT_HEAD(i32* %35, %struct.proc* %36, i32 %37)
  %39 = load %struct.proc*, %struct.proc** %4, align 8
  %40 = call i32 @proc_clear_orphan(%struct.proc* %39)
  %41 = load %struct.proc*, %struct.proc** %4, align 8
  %42 = getelementptr inbounds %struct.proc, %struct.proc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @P_TRACED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %18
  %48 = load %struct.proc*, %struct.proc** %4, align 8
  %49 = load %struct.proc*, %struct.proc** %4, align 8
  %50 = getelementptr inbounds %struct.proc, %struct.proc* %49, i32 0, i32 3
  %51 = load %struct.proc*, %struct.proc** %50, align 8
  %52 = call i32 @proc_add_orphan(%struct.proc* %48, %struct.proc* %51)
  br label %53

53:                                               ; preds = %47, %18
  %54 = load %struct.proc*, %struct.proc** %5, align 8
  %55 = load %struct.proc*, %struct.proc** %4, align 8
  %56 = getelementptr inbounds %struct.proc, %struct.proc* %55, i32 0, i32 3
  store %struct.proc* %54, %struct.proc** %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.proc*, %struct.proc** %5, align 8
  %61 = getelementptr inbounds %struct.proc, %struct.proc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.proc*, %struct.proc** %4, align 8
  %64 = getelementptr inbounds %struct.proc, %struct.proc* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %17, %59, %53
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @sigqueue_take(i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @LIST_REMOVE(%struct.proc*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.proc*, i32) #1

declare dso_local i32 @proc_clear_orphan(%struct.proc*) #1

declare dso_local i32 @proc_add_orphan(%struct.proc*, %struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
