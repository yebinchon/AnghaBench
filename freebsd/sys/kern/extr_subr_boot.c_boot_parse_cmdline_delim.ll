; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_boot.c_boot_parse_cmdline_delim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_boot.c_boot_parse_cmdline_delim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @boot_parse_cmdline_delim(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %17, %16, %2
  %8 = load i8*, i8** %4, align 8
  %9 = call i8* @strsep(i8** %3, i8* %8)
  store i8* %9, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %7

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @boot_parse_arg(i8* %18)
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %7

22:                                               ; preds = %7
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @boot_parse_arg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
