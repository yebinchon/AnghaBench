; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/number/extr_number.c_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/number/extr_number.c_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c" %s%s\00", align 1
@name3 = common dso_local global i8** null, align 8
@lflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unit(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp sgt i32 %7, 3
  br i1 %8, label %9, label %67

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = srem i32 %10, 3
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = srem i32 %14, 3
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @number(i8* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %13
  store i32 1, i32* %6, align 4
  %24 = load i8**, i8*** @name3, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sdiv i32 %25, 3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %24, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load i64, i64* @lflag, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %33)
  br label %35

35:                                               ; preds = %23, %13
  %36 = load i32, i32* %5, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %4, align 8
  br label %40

40:                                               ; preds = %35, %9
  br label %41

41:                                               ; preds = %63, %40
  %42 = load i32, i32* %3, align 4
  %43 = icmp sgt i32 %42, 3
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = sub nsw i32 %45, 3
  store i32 %46, i32* %3, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @number(i8* %47, i32 3)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  store i32 1, i32* %6, align 4
  %51 = load i8**, i8*** @name3, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sdiv i32 %52, 3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* @lflag, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %56, i8* %60)
  br label %62

62:                                               ; preds = %50, %44
  br label %63

63:                                               ; preds = %62
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  store i8* %65, i8** %4, align 8
  br label %41

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66, %2
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @number(i8* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i64, i64* @lflag, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %72
  store i32 1, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %67
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i64 @number(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
