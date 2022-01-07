; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kdb.c_kdb_backtrace_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kdb.c_kdb_backtrace_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.thread*)* }
%struct.thread = type { i32 }

@kdb_dbbe = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"KDB: stack backtrace of thread %d:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdb_backtrace_thread(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_dbbe, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_dbbe, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.thread*)*, i32 (%struct.thread*)** %7, align 8
  %9 = icmp ne i32 (%struct.thread*)* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load %struct.thread*, %struct.thread** %2, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_dbbe, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.thread*)*, i32 (%struct.thread*)** %16, align 8
  %18 = load %struct.thread*, %struct.thread** %2, align 8
  %19 = call i32 %17(%struct.thread* %18)
  br label %20

20:                                               ; preds = %10, %5, %1
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
