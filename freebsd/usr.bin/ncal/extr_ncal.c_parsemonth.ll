; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ncal/extr_ncal.c_parsemonth.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ncal/extr_ncal.c_parsemonth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%B\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%b\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @parsemonth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parsemonth(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tm, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strtol(i8* %12, i8** %10, i32 10)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %15, %16
  br i1 %17, label %18, label %79

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %67

26:                                               ; preds = %18
  %27 = load i8*, i8** %10, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 102
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 70
  br i1 %35, label %36, label %45

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %36
  br label %66

45:                                               ; preds = %31
  %46 = load i8*, i8** %10, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 112
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 80
  br i1 %54, label %55, label %64

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %55
  br label %65

64:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %93

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65, %44
  br label %67

67:                                               ; preds = %66, %25
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = icmp sgt i32 %71, 12
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %67
  store i32 1, i32* %4, align 4
  br label %93

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = load i32*, i32** %6, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  store i32 0, i32* %4, align 4
  br label %93

79:                                               ; preds = %3
  %80 = load i8*, i8** %5, align 8
  %81 = call i32* @strptime(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.tm* %11)
  %82 = icmp ne i32* %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %5, align 8
  %85 = call i32* @strptime(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %11)
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %83, %79
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %4, align 4
  br label %93

92:                                               ; preds = %83
  store i32 1, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %87, %74, %73, %64
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32* @strptime(i8*, i8*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
