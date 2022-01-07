; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/atsectl/extr_atsectl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/atsectl/extr_atsectl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"ghlus:\00", align 1
@gflag = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call signext i8 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8 %11, i8* %6, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load i8, i8* %6, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %28 [
    i32 103, label %17
    i32 104, label %18
    i32 108, label %20
    i32 117, label %22
    i32 115, label %24
    i32 63, label %27
  ]

17:                                               ; preds = %14
  store i32 1, i32* @gflag, align 4
  br label %30

18:                                               ; preds = %14
  %19 = call i32 @usage(i32 0)
  br label %30

20:                                               ; preds = %14
  %21 = call i32 (...) @list()
  br label %30

22:                                               ; preds = %14
  %23 = call i32 (...) @update()
  br label %30

24:                                               ; preds = %14
  %25 = load i32, i32* @optarg, align 4
  %26 = call i32 @set(i32 %25)
  br label %30

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %14, %27
  %29 = call i32 @usage(i32 1)
  br label %30

30:                                               ; preds = %28, %24, %22, %20, %18, %17
  br label %8

31:                                               ; preds = %8
  %32 = call i32 @usage(i32 1)
  ret i32 0
}

declare dso_local signext i8 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @list(...) #1

declare dso_local i32 @update(...) #1

declare dso_local i32 @set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
