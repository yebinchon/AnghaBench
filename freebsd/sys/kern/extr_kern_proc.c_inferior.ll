; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64 }

@proctree_lock = common dso_local global i32 0, align 4
@SX_LOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.proc* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inferior(%struct.proc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proc*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  %4 = load i32, i32* @SX_LOCKED, align 4
  %5 = call i32 @sx_assert(i32* @proctree_lock, i32 %4)
  %6 = load %struct.proc*, %struct.proc** %3, align 8
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %6, i32 %7)
  br label %9

9:                                                ; preds = %20, %1
  %10 = load %struct.proc*, %struct.proc** %3, align 8
  %11 = load %struct.proc*, %struct.proc** @curproc, align 8
  %12 = icmp ne %struct.proc* %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load %struct.proc*, %struct.proc** %3, align 8
  %15 = getelementptr inbounds %struct.proc, %struct.proc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %24

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.proc*, %struct.proc** %3, align 8
  %22 = call %struct.proc* @proc_realparent(%struct.proc* %21)
  store %struct.proc* %22, %struct.proc** %3, align 8
  br label %9

23:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local %struct.proc* @proc_realparent(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
