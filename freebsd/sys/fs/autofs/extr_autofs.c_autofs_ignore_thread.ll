; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_ignore_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_ignore_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@autofs_softc = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs_ignore_thread(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = getelementptr inbounds %struct.thread, %struct.thread* %5, i32 0, i32 0
  %7 = load %struct.proc*, %struct.proc** %6, align 8
  store %struct.proc* %7, %struct.proc** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @autofs_softc, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.proc*, %struct.proc** %4, align 8
  %15 = call i32 @PROC_LOCK(%struct.proc* %14)
  %16 = load %struct.proc*, %struct.proc** %4, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @autofs_softc, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load %struct.proc*, %struct.proc** %4, align 8
  %27 = call i32 @PROC_UNLOCK(%struct.proc* %26)
  store i32 1, i32* %2, align 4
  br label %31

28:                                               ; preds = %13
  %29 = load %struct.proc*, %struct.proc** %4, align 8
  %30 = call i32 @PROC_UNLOCK(%struct.proc* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %25, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
