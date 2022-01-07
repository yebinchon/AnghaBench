; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_finger.c_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_finger.c_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"46gklmpsho\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@family = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@gflag = common dso_local global i32 0, align 4
@kflag = common dso_local global i32 0, align 4
@lflag = common dso_local global i32 0, align 4
@mflag = common dso_local global i32 0, align 4
@pplan = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@oflag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* @optind, align 4
  br label %6

6:                                                ; preds = %28, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt(i32 %7, i8** %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %26 [
    i32 52, label %13
    i32 54, label %15
    i32 103, label %17
    i32 107, label %18
    i32 108, label %19
    i32 109, label %20
    i32 112, label %21
    i32 115, label %22
    i32 104, label %23
    i32 111, label %24
    i32 63, label %25
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @AF_INET, align 4
  store i32 %14, i32* @family, align 4
  br label %28

15:                                               ; preds = %11
  %16 = load i32, i32* @AF_INET6, align 4
  store i32 %16, i32* @family, align 4
  br label %28

17:                                               ; preds = %11
  store i32 1, i32* @gflag, align 4
  br label %28

18:                                               ; preds = %11
  store i32 1, i32* @kflag, align 4
  br label %28

19:                                               ; preds = %11
  store i32 1, i32* @lflag, align 4
  br label %28

20:                                               ; preds = %11
  store i32 1, i32* @mflag, align 4
  br label %28

21:                                               ; preds = %11
  store i32 1, i32* @pplan, align 4
  br label %28

22:                                               ; preds = %11
  store i32 1, i32* @sflag, align 4
  br label %28

23:                                               ; preds = %11
  store i32 0, i32* @oflag, align 4
  br label %28

24:                                               ; preds = %11
  store i32 1, i32* @oflag, align 4
  br label %28

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %11, %25
  %27 = call i32 (...) @usage()
  br label %28

28:                                               ; preds = %26, %24, %23, %22, %21, %20, %19, %18, %17, %15, %13
  br label %6

29:                                               ; preds = %6
  %30 = load i32, i32* @optind, align 4
  ret i32 %30
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
