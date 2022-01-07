; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_main.c_gdb_do_threadinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_main.c_gdb_do_threadinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@gdb_do_threadinfo.done_sentinel = internal constant %struct.thread* inttoptr (i64 1 to %struct.thread*), align 8
@gdb_do_threadinfo.tidsz_hex = internal constant i64 8, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread**)* @gdb_do_threadinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdb_do_threadinfo(%struct.thread** %0) #0 {
  %2 = alloca %struct.thread**, align 8
  %3 = alloca i64, align 8
  store %struct.thread** %0, %struct.thread*** %2, align 8
  %4 = load %struct.thread**, %struct.thread*** %2, align 8
  %5 = load %struct.thread*, %struct.thread** %4, align 8
  %6 = icmp eq %struct.thread* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ENXIO, align 4
  %9 = call i32 @gdb_tx_err(i32 %8)
  br label %58

10:                                               ; preds = %1
  %11 = load %struct.thread**, %struct.thread*** %2, align 8
  %12 = load %struct.thread*, %struct.thread** %11, align 8
  %13 = icmp eq %struct.thread* %12, inttoptr (i64 1 to %struct.thread*)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = call i32 @gdb_tx_begin(i8 signext 108)
  %16 = load %struct.thread**, %struct.thread*** %2, align 8
  store %struct.thread* null, %struct.thread** %16, align 8
  br label %56

17:                                               ; preds = %10
  %18 = call i32 @gdb_tx_begin(i8 signext 109)
  store i64 0, i64* %3, align 8
  br label %19

19:                                               ; preds = %39, %17
  %20 = load %struct.thread**, %struct.thread*** %2, align 8
  %21 = load %struct.thread*, %struct.thread** %20, align 8
  %22 = icmp ne %struct.thread* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = call i64 @gdb_txbuf_has_capacity(i64 9)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i1 [ false, %19 ], [ %25, %23 ]
  br i1 %27, label %28, label %46

28:                                               ; preds = %26
  %29 = load i64, i64* %3, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @gdb_tx_char(i8 signext 44)
  br label %33

33:                                               ; preds = %31, %28
  %34 = load %struct.thread**, %struct.thread*** %2, align 8
  %35 = load %struct.thread*, %struct.thread** %34, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gdb_tx_varhex(i32 %37)
  br label %39

39:                                               ; preds = %33
  %40 = load %struct.thread**, %struct.thread*** %2, align 8
  %41 = load %struct.thread*, %struct.thread** %40, align 8
  %42 = call %struct.thread* @kdb_thr_next(%struct.thread* %41)
  %43 = load %struct.thread**, %struct.thread*** %2, align 8
  store %struct.thread* %42, %struct.thread** %43, align 8
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %3, align 8
  br label %19

46:                                               ; preds = %26
  %47 = load %struct.thread**, %struct.thread*** %2, align 8
  %48 = load %struct.thread*, %struct.thread** %47, align 8
  %49 = icmp eq %struct.thread* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i64, i64* %3, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load %struct.thread**, %struct.thread*** %2, align 8
  store %struct.thread* inttoptr (i64 1 to %struct.thread*), %struct.thread** %54, align 8
  br label %55

55:                                               ; preds = %53, %50, %46
  br label %56

56:                                               ; preds = %55, %14
  %57 = call i32 (...) @gdb_tx_end()
  br label %58

58:                                               ; preds = %56, %7
  ret void
}

declare dso_local i32 @gdb_tx_err(i32) #1

declare dso_local i32 @gdb_tx_begin(i8 signext) #1

declare dso_local i64 @gdb_txbuf_has_capacity(i64) #1

declare dso_local i32 @gdb_tx_char(i8 signext) #1

declare dso_local i32 @gdb_tx_varhex(i32) #1

declare dso_local %struct.thread* @kdb_thr_next(%struct.thread*) #1

declare dso_local i32 @gdb_tx_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
