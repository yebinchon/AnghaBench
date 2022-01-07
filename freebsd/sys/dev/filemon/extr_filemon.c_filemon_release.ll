; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon.c_filemon_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon.c_filemon_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filemon = type { i32, i32*, i32 }

@SA_UNLOCKED = common dso_local global i32 0, align 4
@M_FILEMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filemon*)* @filemon_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filemon_release(%struct.filemon* %0) #0 {
  %2 = alloca %struct.filemon*, align 8
  store %struct.filemon* %0, %struct.filemon** %2, align 8
  %3 = load %struct.filemon*, %struct.filemon** %2, align 8
  %4 = getelementptr inbounds %struct.filemon, %struct.filemon* %3, i32 0, i32 2
  %5 = call i64 @refcount_release(i32* %4)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.filemon*, %struct.filemon** %2, align 8
  %10 = getelementptr inbounds %struct.filemon, %struct.filemon* %9, i32 0, i32 0
  %11 = load i32, i32* @SA_UNLOCKED, align 4
  %12 = call i32 @sx_assert(i32* %10, i32 %11)
  %13 = load %struct.filemon*, %struct.filemon** %2, align 8
  %14 = getelementptr inbounds %struct.filemon, %struct.filemon* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %8
  %18 = load %struct.filemon*, %struct.filemon** %2, align 8
  %19 = getelementptr inbounds %struct.filemon, %struct.filemon* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @crfree(i32* %20)
  br label %22

22:                                               ; preds = %17, %8
  %23 = load %struct.filemon*, %struct.filemon** %2, align 8
  %24 = getelementptr inbounds %struct.filemon, %struct.filemon* %23, i32 0, i32 0
  %25 = call i32 @sx_destroy(i32* %24)
  %26 = load %struct.filemon*, %struct.filemon** %2, align 8
  %27 = load i32, i32* @M_FILEMON, align 4
  %28 = call i32 @free(%struct.filemon* %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %7
  ret void
}

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @crfree(i32*) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @free(%struct.filemon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
