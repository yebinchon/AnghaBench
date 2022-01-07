; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_gtaskqueue_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_gtaskqueue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtaskqueue = type { i64, %struct.gtaskqueue*, %struct.gtaskqueue*, i32, i32, i32 }

@TQ_FLAGS_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Tasks still running?\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Armed timeout tasks\00", align 1
@M_GTASKQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gtaskqueue*)* @gtaskqueue_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtaskqueue_free(%struct.gtaskqueue* %0) #0 {
  %2 = alloca %struct.gtaskqueue*, align 8
  store %struct.gtaskqueue* %0, %struct.gtaskqueue** %2, align 8
  %3 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %4 = call i32 @TQ_LOCK(%struct.gtaskqueue* %3)
  %5 = load i32, i32* @TQ_FLAGS_ACTIVE, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %8 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 8
  %11 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %12 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %11, i32 0, i32 2
  %13 = load %struct.gtaskqueue*, %struct.gtaskqueue** %12, align 8
  %14 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %15 = call i32 @gtaskqueue_terminate(%struct.gtaskqueue* %13, %struct.gtaskqueue* %14)
  %16 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %17 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %16, i32 0, i32 4
  %18 = call i32 @LIST_EMPTY(i32* %17)
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %21 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %27 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %26, i32 0, i32 3
  %28 = call i32 @mtx_destroy(i32* %27)
  %29 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %30 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %29, i32 0, i32 2
  %31 = load %struct.gtaskqueue*, %struct.gtaskqueue** %30, align 8
  %32 = load i32, i32* @M_GTASKQUEUE, align 4
  %33 = call i32 @free(%struct.gtaskqueue* %31, i32 %32)
  %34 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %35 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %34, i32 0, i32 1
  %36 = load %struct.gtaskqueue*, %struct.gtaskqueue** %35, align 8
  %37 = load i32, i32* @M_GTASKQUEUE, align 4
  %38 = call i32 @free(%struct.gtaskqueue* %36, i32 %37)
  %39 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %40 = load i32, i32* @M_GTASKQUEUE, align 4
  %41 = call i32 @free(%struct.gtaskqueue* %39, i32 %40)
  ret void
}

declare dso_local i32 @TQ_LOCK(%struct.gtaskqueue*) #1

declare dso_local i32 @gtaskqueue_terminate(%struct.gtaskqueue*, %struct.gtaskqueue*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.gtaskqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
