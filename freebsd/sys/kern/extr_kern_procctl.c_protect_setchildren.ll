; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_protect_setchildren.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_protect_setchildren.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { %struct.proc*, i32 }

@proctree_lock = common dso_local global i32 0, align 4
@SX_LOCKED = common dso_local global i32 0, align 4
@p_sibling = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.proc*, i32)* @protect_setchildren to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protect_setchildren(%struct.thread* %0, %struct.proc* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.proc*, %struct.proc** %5, align 8
  store %struct.proc* %9, %struct.proc** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @SX_LOCKED, align 4
  %11 = call i32 @sx_assert(i32* @proctree_lock, i32 %10)
  br label %12

12:                                               ; preds = %52, %3
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = load %struct.proc*, %struct.proc** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @protect_setchild(%struct.thread* %13, %struct.proc* %14, i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %8, align 4
  %19 = load %struct.proc*, %struct.proc** %7, align 8
  %20 = call i32 @PROC_UNLOCK(%struct.proc* %19)
  %21 = load %struct.proc*, %struct.proc** %7, align 8
  %22 = getelementptr inbounds %struct.proc, %struct.proc* %21, i32 0, i32 1
  %23 = call i32 @LIST_EMPTY(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %12
  %26 = load %struct.proc*, %struct.proc** %7, align 8
  %27 = getelementptr inbounds %struct.proc, %struct.proc* %26, i32 0, i32 1
  %28 = call %struct.proc* @LIST_FIRST(i32* %27)
  store %struct.proc* %28, %struct.proc** %7, align 8
  br label %52

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %47, %29
  %31 = load %struct.proc*, %struct.proc** %7, align 8
  %32 = load %struct.proc*, %struct.proc** %5, align 8
  %33 = icmp eq %struct.proc* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.proc*, %struct.proc** %7, align 8
  %36 = call i32 @PROC_LOCK(%struct.proc* %35)
  %37 = load i32, i32* %8, align 4
  ret i32 %37

38:                                               ; preds = %30
  %39 = load %struct.proc*, %struct.proc** %7, align 8
  %40 = load i32, i32* @p_sibling, align 4
  %41 = call %struct.proc* @LIST_NEXT(%struct.proc* %39, i32 %40)
  %42 = icmp ne %struct.proc* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.proc*, %struct.proc** %7, align 8
  %45 = load i32, i32* @p_sibling, align 4
  %46 = call %struct.proc* @LIST_NEXT(%struct.proc* %44, i32 %45)
  store %struct.proc* %46, %struct.proc** %7, align 8
  br label %51

47:                                               ; preds = %38
  %48 = load %struct.proc*, %struct.proc** %7, align 8
  %49 = getelementptr inbounds %struct.proc, %struct.proc* %48, i32 0, i32 0
  %50 = load %struct.proc*, %struct.proc** %49, align 8
  store %struct.proc* %50, %struct.proc** %7, align 8
  br label %30

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %25
  %53 = load %struct.proc*, %struct.proc** %7, align 8
  %54 = call i32 @PROC_LOCK(%struct.proc* %53)
  br label %12
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @protect_setchild(%struct.thread*, %struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local %struct.proc* @LIST_FIRST(i32*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.proc* @LIST_NEXT(%struct.proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
