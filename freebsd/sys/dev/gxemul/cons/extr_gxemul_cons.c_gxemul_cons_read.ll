; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gxemul/cons/extr_gxemul_cons.c_gxemul_cons_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gxemul/cons/extr_gxemul_cons.c_gxemul_cons_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buffer_valid = common dso_local global i64 0, align 8
@buffer_data = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @gxemul_cons_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @gxemul_cons_read() #0 {
  %1 = call i32 (...) @GC_LOCK_ASSERT()
  br label %2

2:                                                ; preds = %6, %0
  %3 = call i32 (...) @gxemul_cons_readable()
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %2

7:                                                ; preds = %2
  store i64 0, i64* @buffer_valid, align 8
  %8 = load i8, i8* @buffer_data, align 1
  ret i8 %8
}

declare dso_local i32 @GC_LOCK_ASSERT(...) #1

declare dso_local i32 @gxemul_cons_readable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
