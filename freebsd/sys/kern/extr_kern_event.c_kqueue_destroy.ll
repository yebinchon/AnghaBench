; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32, i32*, i32*, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"kqueue still attached to a file descriptor\00", align 1
@M_KQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kqueue*)* @kqueue_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqueue_destroy(%struct.kqueue* %0) #0 {
  %2 = alloca %struct.kqueue*, align 8
  store %struct.kqueue* %0, %struct.kqueue** %2, align 8
  %3 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %4 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %3, i32 0, i32 5
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %10 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %9, i32 0, i32 4
  %11 = call i32 @seldrain(%struct.TYPE_2__* %10)
  %12 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %13 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @knlist_destroy(i32* %14)
  %16 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %17 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %16, i32 0, i32 3
  %18 = call i32 @mtx_destroy(i32* %17)
  %19 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %20 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %25 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @M_KQUEUE, align 4
  %28 = call i32 @free(i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %31 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %36 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @M_KQUEUE, align 4
  %39 = call i32 @free(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %42 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %41, i32 0, i32 0
  %43 = call i32 @funsetown(i32* %42)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @seldrain(%struct.TYPE_2__*) #1

declare dso_local i32 @knlist_destroy(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @funsetown(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
