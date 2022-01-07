; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kdb.c_kdb_thr_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kdb.c_kdb_thr_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thread* @kdb_thr_lookup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.thread*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call %struct.thread* (...) @kdb_thr_first()
  store %struct.thread* %4, %struct.thread** %3, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = icmp ne %struct.thread* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %2, align 8
  %13 = icmp ne i64 %11, %12
  br label %14

14:                                               ; preds = %8, %5
  %15 = phi i1 [ false, %5 ], [ %13, %8 ]
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = call %struct.thread* @kdb_thr_next(%struct.thread* %17)
  store %struct.thread* %18, %struct.thread** %3, align 8
  br label %5

19:                                               ; preds = %14
  %20 = load %struct.thread*, %struct.thread** %3, align 8
  ret %struct.thread* %20
}

declare dso_local %struct.thread* @kdb_thr_first(...) #1

declare dso_local %struct.thread* @kdb_thr_next(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
