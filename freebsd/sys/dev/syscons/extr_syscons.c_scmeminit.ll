; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_scmeminit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_scmeminit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VTY_SC = common dso_local global i32 0, align 4
@sc_malloc = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@sc_console_unit = common dso_local global i64 0, align 8
@sc_console = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @scmeminit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scmeminit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @VTY_SC, align 4
  %4 = call i32 @vty_enabled(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %27

7:                                                ; preds = %1
  %8 = load i64, i64* @sc_malloc, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %27

11:                                               ; preds = %7
  %12 = load i64, i64* @TRUE, align 8
  store i64 %12, i64* @sc_malloc, align 8
  %13 = load i64, i64* @sc_console_unit, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %27

16:                                               ; preds = %11
  %17 = load i32, i32* @sc_console, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @sc_alloc_scr_buffer(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @sc_console, align 4
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i32 @sc_alloc_cut_buffer(i32 %21, i32 %22)
  %24 = load i32, i32* @sc_console, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @sc_alloc_history_buffer(i32 %24, i32 0, i32 0, i32 %25)
  br label %27

27:                                               ; preds = %16, %15, %10, %6
  ret void
}

declare dso_local i32 @vty_enabled(i32) #1

declare dso_local i32 @sc_alloc_scr_buffer(i32, i32, i32) #1

declare dso_local i32 @sc_alloc_cut_buffer(i32, i32) #1

declare dso_local i32 @sc_alloc_history_buffer(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
