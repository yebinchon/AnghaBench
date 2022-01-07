; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_proc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_proc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Trying to kill a process in a dead prison (jid=%d)\00", align 1
@taskqueue_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prison_proc_free(%struct.prison* %0) #0 {
  %2 = alloca %struct.prison*, align 8
  store %struct.prison* %0, %struct.prison** %2, align 8
  %3 = load %struct.prison*, %struct.prison** %2, align 8
  %4 = getelementptr inbounds %struct.prison, %struct.prison* %3, i32 0, i32 1
  %5 = call i32 @mtx_lock(i32* %4)
  %6 = load %struct.prison*, %struct.prison** %2, align 8
  %7 = getelementptr inbounds %struct.prison, %struct.prison* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = load %struct.prison*, %struct.prison** %2, align 8
  %12 = getelementptr inbounds %struct.prison, %struct.prison* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @KASSERT(i32 %10, i8* %15)
  %17 = load %struct.prison*, %struct.prison** %2, align 8
  %18 = getelementptr inbounds %struct.prison, %struct.prison* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.prison*, %struct.prison** %2, align 8
  %23 = getelementptr inbounds %struct.prison, %struct.prison* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  br label %38

26:                                               ; preds = %1
  %27 = load %struct.prison*, %struct.prison** %2, align 8
  %28 = getelementptr inbounds %struct.prison, %struct.prison* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.prison*, %struct.prison** %2, align 8
  %32 = getelementptr inbounds %struct.prison, %struct.prison* %31, i32 0, i32 1
  %33 = call i32 @mtx_unlock(i32* %32)
  %34 = load i32, i32* @taskqueue_thread, align 4
  %35 = load %struct.prison*, %struct.prison** %2, align 8
  %36 = getelementptr inbounds %struct.prison, %struct.prison* %35, i32 0, i32 2
  %37 = call i32 @taskqueue_enqueue(i32 %34, i32* %36)
  br label %42

38:                                               ; preds = %21
  %39 = load %struct.prison*, %struct.prison** %2, align 8
  %40 = getelementptr inbounds %struct.prison, %struct.prison* %39, i32 0, i32 1
  %41 = call i32 @mtx_unlock(i32* %40)
  br label %42

42:                                               ; preds = %38, %26
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
