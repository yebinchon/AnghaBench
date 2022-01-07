; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_check_getdents.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_check_getdents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"directory succeeded\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"file succeeded\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"directory failed\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"file failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32*, i32)* @check_getdents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_getdents(i8* %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8192 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %94, %5
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %97

19:                                               ; preds = %15
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @open(i8* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @notok_mode(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %94

34:                                               ; preds = %19
  %35 = load i32, i32* %11, align 4
  %36 = getelementptr inbounds [8192 x i8], [8192 x i8]* %14, i64 0, i64 0
  %37 = call i64 @getdents(i32 %35, i8* %36, i32 8192)
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @O_ACCMODE, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @O_RDONLY, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @ok_mode(i8* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %64

52:                                               ; preds = %42, %39
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @notok_mode(i8* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %63

59:                                               ; preds = %52
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @notok_mode(i8* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %48
  br label %91

65:                                               ; preds = %34
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @O_ACCMODE, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @O_RDONLY, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @notok_mode(i8* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %90

78:                                               ; preds = %68, %65
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @ok_mode(i8* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %89

85:                                               ; preds = %78
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @ok_mode(i8* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %81
  br label %90

90:                                               ; preds = %89, %74
  br label %91

91:                                               ; preds = %90, %64
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @close(i32 %92)
  br label %94

94:                                               ; preds = %91, %30
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %15

97:                                               ; preds = %15
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @notok_mode(i8*, i8*, i32) #1

declare dso_local i64 @getdents(i32, i8*, i32) #1

declare dso_local i32 @ok_mode(i8*, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
