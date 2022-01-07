; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_free_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_free_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prison_free_locked(%struct.prison* %0) #0 {
  %2 = alloca %struct.prison*, align 8
  %3 = alloca i32, align 4
  store %struct.prison* %0, %struct.prison** %2, align 8
  %4 = load %struct.prison*, %struct.prison** %2, align 8
  %5 = getelementptr inbounds %struct.prison, %struct.prison* %4, i32 0, i32 2
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* %5, i32 %6)
  %8 = load %struct.prison*, %struct.prison** %2, align 8
  %9 = getelementptr inbounds %struct.prison, %struct.prison* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.prison*, %struct.prison** %2, align 8
  %13 = getelementptr inbounds %struct.prison, %struct.prison* %12, i32 0, i32 2
  %14 = call i32 @mtx_unlock(i32* %13)
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @taskqueue_thread, align 4
  %19 = load %struct.prison*, %struct.prison** %2, align 8
  %20 = getelementptr inbounds %struct.prison, %struct.prison* %19, i32 0, i32 1
  %21 = call i32 @taskqueue_enqueue(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
