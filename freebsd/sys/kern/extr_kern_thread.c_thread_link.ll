; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i32, i32*, i32, i32, %struct.proc*, i32 }
%struct.proc = type { i32, i32 }

@TDS_INACTIVE = common dso_local global i32 0, align 4
@TDF_INMEM = common dso_local global i32 0, align 4
@td_plist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_link(%struct.thread* %0, %struct.proc* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.proc* %1, %struct.proc** %4, align 8
  %5 = load i32, i32* @TDS_INACTIVE, align 4
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 7
  store i32 %5, i32* %7, align 8
  %8 = load %struct.proc*, %struct.proc** %4, align 8
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 6
  store %struct.proc* %8, %struct.proc** %10, align 8
  %11 = load i32, i32* @TDF_INMEM, align 4
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 4
  %16 = call i32 @LIST_INIT(i32* %15)
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = call i32 @LIST_INIT(i32* %20)
  %22 = load %struct.thread*, %struct.thread** %3, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = call i32 @LIST_INIT(i32* %25)
  %27 = load %struct.thread*, %struct.thread** %3, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 1
  %29 = load %struct.proc*, %struct.proc** %4, align 8
  %30 = call i32 @sigqueue_init(i32* %28, %struct.proc* %29)
  %31 = load %struct.thread*, %struct.thread** %3, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 0
  %33 = call i32 @callout_init(i32* %32, i32 1)
  %34 = load %struct.proc*, %struct.proc** %4, align 8
  %35 = getelementptr inbounds %struct.proc, %struct.proc* %34, i32 0, i32 1
  %36 = load %struct.thread*, %struct.thread** %3, align 8
  %37 = load i32, i32* @td_plist, align 4
  %38 = call i32 @TAILQ_INSERT_TAIL(i32* %35, %struct.thread* %36, i32 %37)
  %39 = load %struct.proc*, %struct.proc** %4, align 8
  %40 = getelementptr inbounds %struct.proc, %struct.proc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  ret void
}

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @sigqueue_init(i32*, %struct.proc*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
