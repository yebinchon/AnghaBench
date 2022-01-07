; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_str2rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_str2rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"unknown transmit rate %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @str2rate(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @atoi(i8* %4)
  switch i32 %5, label %18 [
    i32 54, label %6
    i32 48, label %7
    i32 36, label %8
    i32 24, label %9
    i32 18, label %10
    i32 12, label %11
    i32 9, label %12
    i32 6, label %13
    i32 11, label %14
    i32 5, label %15
    i32 2, label %16
    i32 1, label %17
  ]

6:                                                ; preds = %1
  store i32 108, i32* %2, align 4
  br label %21

7:                                                ; preds = %1
  store i32 96, i32* %2, align 4
  br label %21

8:                                                ; preds = %1
  store i32 72, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  store i32 48, i32* %2, align 4
  br label %21

10:                                               ; preds = %1
  store i32 36, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  store i32 24, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  store i32 18, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  store i32 12, i32* %2, align 4
  br label %21

14:                                               ; preds = %1
  store i32 22, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  store i32 11, i32* %2, align 4
  br label %21

16:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %21

17:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
