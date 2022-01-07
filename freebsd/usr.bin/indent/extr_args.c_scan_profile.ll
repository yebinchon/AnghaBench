; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_args.c_scan_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_args.c_scan_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@BUFSIZ = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@opt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"profile: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @scan_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_profile(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @BUFSIZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  br label %12

12:                                               ; preds = %104, %1
  br label %13

13:                                               ; preds = %12
  store i8* %11, i8** %5, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %84, %13
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @getc(i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @EOF, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %85

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 42
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ugt i8* %26, %11
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 -1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 47
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = ptrtoint i8* %11 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  store i8 %41, i8* %42, align 1
  br label %84

44:                                               ; preds = %28, %25, %22, %19
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 47
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i8*, i8** %5, align 8
  %52 = icmp ugt i8* %51, %11
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 -1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 42
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %11, i64 %61
  %63 = getelementptr inbounds i8, i8* %62, i64 -1
  store i8* %63, i8** %5, align 8
  store i32 0, i32* %3, align 4
  br label %83

64:                                               ; preds = %53, %50, %47, %44
  %65 = load i32, i32* %4, align 4
  %66 = trunc i32 %65 to i8
  %67 = call i64 @isspace(i8 zeroext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i8*, i8** %5, align 8
  %71 = icmp ugt i8* %70, %11
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  br label %85

76:                                               ; preds = %72, %69
  br label %82

77:                                               ; preds = %64
  %78 = load i32, i32* %4, align 4
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %5, align 8
  store i8 %79, i8* %80, align 1
  br label %82

82:                                               ; preds = %77, %76
  br label %83

83:                                               ; preds = %82, %59
  br label %84

84:                                               ; preds = %83, %34
  br label %14

85:                                               ; preds = %75, %14
  %86 = load i8*, i8** %5, align 8
  %87 = icmp ne i8* %86, %11
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %5, align 8
  store i8 0, i8* %89, align 1
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 0), align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %95

95:                                               ; preds = %93, %88
  %96 = call i32 @set_option(i8* %11)
  br label %104

97:                                               ; preds = %85
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @EOF, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %95
  br label %12
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getc(i32*) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @set_option(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
