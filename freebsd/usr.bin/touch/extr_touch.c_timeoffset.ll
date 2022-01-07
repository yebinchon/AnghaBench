; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/touch/extr_touch.c_timeoffset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/touch/extr_touch.c_timeoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"Invalid offset spec, must be [-][[HH]MM]SS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timeoffset(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 45
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %3, align 8
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strlen(i8* %17)
  switch i32 %18, label %19 [
    i32 6, label %21
    i32 4, label %24
    i32 2, label %30
  ]

19:                                               ; preds = %16
  %20 = call i32 @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %19
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @ATOI2(i8* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %16, %21
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 60
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @ATOI2(i8* %27)
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %16, %24
  %31 = load i32, i32* %4, align 4
  %32 = mul nsw i32 %31, 60
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @ATOI2(i8* %33)
  %35 = add nsw i32 %32, %34
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @ATOI2(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
