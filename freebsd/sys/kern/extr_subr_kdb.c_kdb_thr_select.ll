; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kdb.c_kdb_thr_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kdb.c_kdb_thr_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@kdb_thread = common dso_local global %struct.thread* null, align 8
@kdb_thrctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdb_thr_select(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  %4 = load %struct.thread*, %struct.thread** %3, align 8
  %5 = icmp eq %struct.thread* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  store i32 %7, i32* %2, align 4
  br label %12

8:                                                ; preds = %1
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  store %struct.thread* %9, %struct.thread** @kdb_thread, align 8
  %10 = load %struct.thread*, %struct.thread** %3, align 8
  %11 = call i32 @kdb_thr_ctx(%struct.thread* %10)
  store i32 %11, i32* @kdb_thrctx, align 4
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %8, %6
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

declare dso_local i32 @kdb_thr_ctx(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
