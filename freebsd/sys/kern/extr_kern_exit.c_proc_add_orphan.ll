; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_proc_add_orphan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_proc_add_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32, i32 }

@proctree_lock = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@P_TRACED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"proc_add_orphan: not traced\00", align 1
@P_TREE_FIRST_ORPHAN = common dso_local global i32 0, align 4
@p_orphan = common dso_local global i32 0, align 4
@P_TREE_ORPHANED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_add_orphan(%struct.proc* %0, %struct.proc* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.proc*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.proc* %1, %struct.proc** %4, align 8
  %5 = load i32, i32* @SX_XLOCKED, align 4
  %6 = call i32 @sx_assert(i32* @proctree_lock, i32 %5)
  %7 = load %struct.proc*, %struct.proc** %3, align 8
  %8 = getelementptr inbounds %struct.proc, %struct.proc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @P_TRACED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.proc*, %struct.proc** %4, align 8
  %16 = getelementptr inbounds %struct.proc, %struct.proc* %15, i32 0, i32 2
  %17 = call i64 @LIST_EMPTY(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load i32, i32* @P_TREE_FIRST_ORPHAN, align 4
  %21 = load %struct.proc*, %struct.proc** %3, align 8
  %22 = getelementptr inbounds %struct.proc, %struct.proc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.proc*, %struct.proc** %4, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 2
  %27 = load %struct.proc*, %struct.proc** %3, align 8
  %28 = load i32, i32* @p_orphan, align 4
  %29 = call i32 @LIST_INSERT_HEAD(i32* %26, %struct.proc* %27, i32 %28)
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.proc*, %struct.proc** %4, align 8
  %32 = getelementptr inbounds %struct.proc, %struct.proc* %31, i32 0, i32 2
  %33 = call i32 @LIST_FIRST(i32* %32)
  %34 = load %struct.proc*, %struct.proc** %3, align 8
  %35 = load i32, i32* @p_orphan, align 4
  %36 = call i32 @LIST_INSERT_AFTER(i32 %33, %struct.proc* %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %19
  %38 = load i32, i32* @P_TREE_ORPHANED, align 4
  %39 = load %struct.proc*, %struct.proc** %3, align 8
  %40 = getelementptr inbounds %struct.proc, %struct.proc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.proc*, i32) #1

declare dso_local i32 @LIST_INSERT_AFTER(i32, %struct.proc*, i32) #1

declare dso_local i32 @LIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
