; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_binmisc.c_imgact_binmisc_remove_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_binmisc.c_imgact_binmisc_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@interp_list_sx = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@interpreter_list = common dso_local global i32 0, align 4
@imgact_binmisc_entry = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@interp_list_entry_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @imgact_binmisc_remove_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgact_binmisc_remove_entry(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call i32 @sx_xlock(i32* @interp_list_sx)
  %6 = load i8*, i8** %3, align 8
  %7 = call i32* @imgact_binmisc_find_entry(i8* %6)
  store i32* %7, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 @sx_xunlock(i32* @interp_list_sx)
  %11 = load i32, i32* @ENOENT, align 4
  store i32 %11, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @imgact_binmisc_entry, align 4
  %15 = load i32, i32* @link, align 4
  %16 = call i32 @SLIST_REMOVE(i32* @interpreter_list, i32* %13, i32 %14, i32 %15)
  %17 = load i32, i32* @interp_list_entry_count, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* @interp_list_entry_count, align 4
  %19 = call i32 @sx_xunlock(i32* @interp_list_sx)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @imgact_binmisc_destroy_entry(i32* %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %12, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32* @imgact_binmisc_find_entry(i8*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @SLIST_REMOVE(i32*, i32*, i32, i32) #1

declare dso_local i32 @imgact_binmisc_destroy_entry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
