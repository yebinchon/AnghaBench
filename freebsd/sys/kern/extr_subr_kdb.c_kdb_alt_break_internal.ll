; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kdb.c_kdb_alt_break_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kdb.c_kdb_alt_break_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kdb_alt_break_to_debugger = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"gdb\00", align 1
@KDB_WHY_BREAK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Break to debugger\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Panic sequence on console\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @kdb_alt_break_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdb_alt_break_internal(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @kdb_alt_break_to_debugger, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @kdb_alt_break_state(i32 %13, i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %34 [
    i32 130, label %17
    i32 129, label %25
    i32 128, label %32
  ]

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @kdb_dbbe_select(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, i32* @KDB_WHY_BREAK, align 4
  %24 = call i32 @kdb_enter(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %34

25:                                               ; preds = %12
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @kdb_dbbe_select(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25
  %31 = call i32 @kdb_panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %34

32:                                               ; preds = %12
  %33 = call i32 (...) @kdb_reboot()
  br label %34

34:                                               ; preds = %12, %32, %30, %22
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %11
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @kdb_alt_break_state(i32, i32*) #1

declare dso_local i32 @kdb_dbbe_select(i8*) #1

declare dso_local i32 @kdb_enter(i32, i8*) #1

declare dso_local i32 @kdb_panic(i8*) #1

declare dso_local i32 @kdb_reboot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
