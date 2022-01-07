; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd1.c_top.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd1.c_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }

@LINESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"toplines\00", align 1
@msgCount = common dso_local global i32 0, align 4
@message = common dso_local global %struct.message* null, align 8
@dot = common dso_local global %struct.message* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Message %d:\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" \09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @top(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %3, align 8
  %16 = load i32, i32* @LINESIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  store i32 5, i32* %7, align 4
  %20 = call i8* @value(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @atoi(i8* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 10000
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %23
  store i32 5, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %32, %1
  store i32 1, i32* %9, align 4
  %34 = load i32*, i32** %3, align 8
  store i32* %34, i32** %4, align 8
  br label %35

35:                                               ; preds = %104, %33
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = load i32, i32* @msgCount, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %45, %47
  br label %49

49:                                               ; preds = %39, %35
  %50 = phi i1 [ false, %35 ], [ %48, %39 ]
  br i1 %50, label %51, label %107

51:                                               ; preds = %49
  %52 = load %struct.message*, %struct.message** @message, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.message, %struct.message* %52, i64 %56
  store %struct.message* %57, %struct.message** %5, align 8
  %58 = load %struct.message*, %struct.message** %5, align 8
  %59 = call i32 @touch(%struct.message* %58)
  %60 = load %struct.message*, %struct.message** %5, align 8
  store %struct.message* %60, %struct.message** @dot, align 8
  %61 = call i8* @value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %51
  %68 = load %struct.message*, %struct.message** %5, align 8
  %69 = call i32* @setinput(%struct.message* %68)
  store i32* %69, i32** %13, align 8
  %70 = load %struct.message*, %struct.message** %5, align 8
  %71 = getelementptr inbounds %struct.message, %struct.message* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %67
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %67
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %100, %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp sle i32 %83, %84
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i1 [ false, %78 ], [ %85, %82 ]
  br i1 %87, label %88, label %103

88:                                               ; preds = %86
  %89 = load i32*, i32** %13, align 8
  %90 = trunc i64 %17 to i32
  %91 = call i64 @readline(i32* %89, i8* %19, i32 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %103

94:                                               ; preds = %88
  %95 = call i32 @puts(i8* %19)
  %96 = call i64 @strspn(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i64 @strlen(i8* %19)
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %78

103:                                              ; preds = %93, %86
  br label %104

104:                                              ; preds = %103
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %4, align 8
  br label %35

107:                                              ; preds = %49
  %108 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %108)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @value(i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @touch(%struct.message*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32* @setinput(%struct.message*) #2

declare dso_local i64 @readline(i32*, i8*, i32) #2

declare dso_local i32 @puts(i8*) #2

declare dso_local i64 @strspn(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
