; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkstr/extr_mkstr.c_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkstr/extr_mkstr.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"error(\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %28, %11, %0
  %3 = call i32 (...) @getchar()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @EOF, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 101
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @putchar(i32 %12)
  br label %2

14:                                               ; preds = %8
  %15 = call i64 @match(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 (...) @getchar()
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 34
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @putchar(i32 %23)
  br label %27

25:                                               ; preds = %17
  %26 = call i32 (...) @copystr()
  br label %27

27:                                               ; preds = %25, %22
  br label %28

28:                                               ; preds = %27, %14
  br label %2
}

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i64 @match(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @copystr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
