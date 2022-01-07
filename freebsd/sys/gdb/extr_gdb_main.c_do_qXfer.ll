; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_main.c_do_qXfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_main.c_do_qXfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"threads:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"read:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_qXfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_qXfer() #0 {
  %1 = call i32 @gdb_rx_equal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %10

4:                                                ; preds = %0
  %5 = call i32 @gdb_rx_equal(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  br label %10

8:                                                ; preds = %4
  %9 = call i32 (...) @do_qXfer_threads_read()
  br label %12

10:                                               ; preds = %7, %3
  %11 = call i32 (...) @gdb_tx_empty()
  br label %12

12:                                               ; preds = %10, %8
  ret void
}

declare dso_local i32 @gdb_rx_equal(i8*) #1

declare dso_local i32 @do_qXfer_threads_read(...) #1

declare dso_local i32 @gdb_tx_empty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
