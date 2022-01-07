; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_collect.c_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_collect.c_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ignoretab = type { i32 }
%struct.message = type { i32 }

@msgCount = common dso_local global i32 0, align 4
@MMNORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No appropriate messages\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"indentprefix\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@ignore = common dso_local global %struct.ignoretab* null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Interpolating:\00", align 1
@message = common dso_local global %struct.message* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @forward(i8* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ignoretab*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.message*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @msgCount, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i64 @salloc(i32 %18)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %100

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i64 @getmsglist(i8* %25, i32* %26, i32 0)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %100

30:                                               ; preds = %24
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32, i32* @MMNORM, align 4
  %36 = call i32 @first(i32 0, i32 %35)
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %100

43:                                               ; preds = %34
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %30
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 102
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 70
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %46
  store i8* null, i8** %12, align 8
  br label %58

53:                                               ; preds = %49
  %54 = call i8* @value(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %54, i8** %12, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %57

57:                                               ; preds = %56, %53
  br label %58

58:                                               ; preds = %57, %52
  %59 = load i32, i32* %9, align 4
  %60 = trunc i32 %59 to i8
  %61 = call i64 @isupper(i8 zeroext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %66

64:                                               ; preds = %58
  %65 = load %struct.ignoretab*, %struct.ignoretab** @ignore, align 8
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi %struct.ignoretab* [ null, %63 ], [ %65, %64 ]
  store %struct.ignoretab* %67, %struct.ignoretab** %11, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %95, %66
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %69
  %74 = load %struct.message*, %struct.message** @message, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.message, %struct.message* %74, i64 %77
  %79 = getelementptr inbounds %struct.message, %struct.message* %78, i64 -1
  store %struct.message* %79, %struct.message** %13, align 8
  %80 = load %struct.message*, %struct.message** %13, align 8
  %81 = call i32 @touch(%struct.message* %80)
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load %struct.message*, %struct.message** %13, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.ignoretab*, %struct.ignoretab** %11, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = call i64 @sendmessage(%struct.message* %85, i32* %86, %struct.ignoretab* %87, i8* %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %73
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %92)
  store i32 -1, i32* %5, align 4
  br label %100

94:                                               ; preds = %73
  br label %95

95:                                               ; preds = %94
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %10, align 8
  br label %69

98:                                               ; preds = %69
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %91, %41, %29, %23
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @salloc(i32) #1

declare dso_local i64 @getmsglist(i8*, i32*, i32) #1

declare dso_local i32 @first(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @value(i8*) #1

declare dso_local i64 @isupper(i8 zeroext) #1

declare dso_local i32 @touch(%struct.message*) #1

declare dso_local i64 @sendmessage(%struct.message*, i32*, %struct.ignoretab*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
