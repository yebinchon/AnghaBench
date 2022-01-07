; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_cd9660.c_cd9660_arguments_set_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_cd9660.c_cd9660_arguments_set_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"error: The %s requires a string argument\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"error: The %s must be composed of %c-characters\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"error: The %s must be at most 32 characters long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8, i8*)* @cd9660_arguments_set_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd9660_arguments_set_string(i8* %0, i8* %1, i32 %2, i8 signext %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8 %3, i8* %10, align 1
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %59

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load i8, i8* %10, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 100
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @cd9660_valid_d_chars(i8* %29)
  store i32 %30, i32* %13, align 4
  br label %34

31:                                               ; preds = %24
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @cd9660_valid_a_chars(i8* %32)
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @memcpy(i8* %38, i8* %39, i32 %40)
  %42 = load i32, i32* %13, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @cd9660_uppercase_characters(i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %37
  store i32 1, i32* %6, align 4
  br label %60

49:                                               ; preds = %34
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %10, align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %50, i32 %52)
  br label %54

54:                                               ; preds = %49
  br label %58

55:                                               ; preds = %19
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %54
  br label %59

59:                                               ; preds = %58, %16
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cd9660_valid_d_chars(i8*) #1

declare dso_local i32 @cd9660_valid_a_chars(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cd9660_uppercase_characters(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
