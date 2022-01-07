; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/wtap/wtap/extr_wtap.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/wtap/wtap/extr_wtap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"usage: %s [c | d] wtap_id\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"wtap_id must be between 0 and 7\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"/dev/wtapctl\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@dev = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"error opening wtapctl cdev\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"wtap ioctl: unknown command '%c'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 3
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 -1, i32* %3, align 4
  br label %53

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 2
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @atoi(i8* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 64
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %14
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %53

26:                                               ; preds = %21
  %27 = load i32, i32* @O_RDONLY, align 4
  %28 = call i64 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  store i64 %28, i64* @dev, align 8
  %29 = load i64, i64* @dev, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %53

33:                                               ; preds = %26
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %45 [
    i32 99, label %39
    i32 100, label %42
  ]

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @create(i32 %40)
  br label %52

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @delete(i32 %43)
  br label %52

45:                                               ; preds = %33
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  store i32 -1, i32* %3, align 4
  br label %53

52:                                               ; preds = %42, %39
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %45, %31, %24, %9
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @create(i32) #1

declare dso_local i32 @delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
