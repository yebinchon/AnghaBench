; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_proc_linkup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_proc_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.thread = type { i32 }

@KSI_EXT = common dso_local global i32 0, align 4
@KSI_INS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_linkup(%struct.proc* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.thread*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %5 = load %struct.proc*, %struct.proc** %3, align 8
  %6 = getelementptr inbounds %struct.proc, %struct.proc* %5, i32 0, i32 3
  %7 = load %struct.proc*, %struct.proc** %3, align 8
  %8 = call i32 @sigqueue_init(i32* %6, %struct.proc* %7)
  %9 = call %struct.TYPE_2__* @ksiginfo_alloc(i32 1)
  %10 = load %struct.proc*, %struct.proc** %3, align 8
  %11 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 2
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %11, align 8
  %12 = load %struct.proc*, %struct.proc** %3, align 8
  %13 = getelementptr inbounds %struct.proc, %struct.proc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32, i32* @KSI_EXT, align 4
  %18 = load i32, i32* @KSI_INS, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.proc*, %struct.proc** %3, align 8
  %21 = getelementptr inbounds %struct.proc, %struct.proc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.proc*, %struct.proc** %3, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 1
  %27 = call i32 @LIST_INIT(i32* %26)
  %28 = load %struct.proc*, %struct.proc** %3, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.thread*, %struct.thread** %4, align 8
  %31 = load %struct.proc*, %struct.proc** %3, align 8
  %32 = call i32 @thread_link(%struct.thread* %30, %struct.proc* %31)
  ret void
}

declare dso_local i32 @sigqueue_init(i32*, %struct.proc*) #1

declare dso_local %struct.TYPE_2__* @ksiginfo_alloc(i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @thread_link(%struct.thread*, %struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
