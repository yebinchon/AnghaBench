; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_thread_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_thread_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.umtx_q* }
%struct.umtx_q = type { i64, i32, i32*, %struct.thread*, i32 }

@PRI_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"uq_flags != 0\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"uq_thread != td\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"uq_pi_blocked != NULL\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"uq_pi_contested is not empty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @umtx_thread_alloc(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.umtx_q*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load %struct.thread*, %struct.thread** %2, align 8
  %5 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 0
  %6 = load %struct.umtx_q*, %struct.umtx_q** %5, align 8
  store %struct.umtx_q* %6, %struct.umtx_q** %3, align 8
  %7 = load i32, i32* @PRI_MAX, align 4
  %8 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %9 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 8
  %10 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %11 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %17 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %16, i32 0, i32 3
  %18 = load %struct.thread*, %struct.thread** %17, align 8
  %19 = load %struct.thread*, %struct.thread** %2, align 8
  %20 = icmp eq %struct.thread* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %24 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %30 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %29, i32 0, i32 1
  %31 = call i32 @TAILQ_EMPTY(i32* %30)
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
