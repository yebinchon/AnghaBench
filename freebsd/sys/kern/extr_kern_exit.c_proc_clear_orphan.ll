; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_proc_clear_orphan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_proc_clear_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@proctree_lock = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@P_TREE_ORPHANED = common dso_local global i32 0, align 4
@P_TREE_FIRST_ORPHAN = common dso_local global i32 0, align 4
@p_orphan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_clear_orphan(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.proc*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %4 = load i32, i32* @SA_XLOCKED, align 4
  %5 = call i32 @sx_assert(i32* @proctree_lock, i32 %4)
  %6 = load %struct.proc*, %struct.proc** %2, align 8
  %7 = getelementptr inbounds %struct.proc, %struct.proc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @P_TREE_ORPHANED, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.proc*, %struct.proc** %2, align 8
  %15 = getelementptr inbounds %struct.proc, %struct.proc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @P_TREE_FIRST_ORPHAN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %13
  %21 = load %struct.proc*, %struct.proc** %2, align 8
  %22 = load i32, i32* @p_orphan, align 4
  %23 = call %struct.proc* @LIST_NEXT(%struct.proc* %21, i32 %22)
  store %struct.proc* %23, %struct.proc** %3, align 8
  %24 = load %struct.proc*, %struct.proc** %3, align 8
  %25 = icmp ne %struct.proc* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* @P_TREE_FIRST_ORPHAN, align 4
  %28 = load %struct.proc*, %struct.proc** %3, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load i32, i32* @P_TREE_FIRST_ORPHAN, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.proc*, %struct.proc** %2, align 8
  %36 = getelementptr inbounds %struct.proc, %struct.proc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %13
  %40 = load %struct.proc*, %struct.proc** %2, align 8
  %41 = load i32, i32* @p_orphan, align 4
  %42 = call i32 @LIST_REMOVE(%struct.proc* %40, i32 %41)
  %43 = load i32, i32* @P_TREE_ORPHANED, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.proc*, %struct.proc** %2, align 8
  %46 = getelementptr inbounds %struct.proc, %struct.proc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %39, %12
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local %struct.proc* @LIST_NEXT(%struct.proc*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
