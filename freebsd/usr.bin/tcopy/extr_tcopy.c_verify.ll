; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tcopy/extr_tcopy.c_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tcopy/extr_tcopy.c_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maxblk = common dso_local global i32 0, align 4
@guesslen = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@msg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: tapes have different block sizes; %d != %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tcopy\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"tcopy: tapes are identical.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"tcopy: tapes have different data.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i32, i32* @maxblk, align 4
  %14 = call i8* @getspace(i32 %13)
  store i8* %14, i8** %12, align 8
  %15 = load i32, i32* @maxblk, align 4
  store i32 %15, i32* %10, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %115, %3
  %17 = load i32, i32* %4, align 4
  %18 = load i8*, i8** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @read(i32 %17, i8* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load i64, i64* @guesslen, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @EINVAL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 1024
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %45

36:                                               ; preds = %34
  %37 = load i32, i32* %4, align 4
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @read(i32 %37, i8* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %49

44:                                               ; preds = %36
  br label %26

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %22
  %47 = call i32 @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %116

48:                                               ; preds = %16
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %5, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @read(i32 %50, i8* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load i64, i64* @guesslen, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %77, %58
  %60 = load i64, i64* @errno, align 8
  %61 = load i64, i64* @EINVAL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %64, 1024
  store i32 %65, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  br i1 %68, label %69, label %78

69:                                               ; preds = %67
  %70 = load i32, i32* %5, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @read(i32 %70, i8* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %82

77:                                               ; preds = %69
  br label %59

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %55
  %80 = call i32 @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %116

81:                                               ; preds = %49
  br label %82

82:                                               ; preds = %81, %76
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* @msg, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %89)
  br label %116

91:                                               ; preds = %82
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  %97 = icmp ne i32 %95, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, i32* @msg, align 4
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @free(i8* %101)
  ret void

103:                                              ; preds = %94
  br label %114

104:                                              ; preds = %91
  %105 = load i8*, i8** %12, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i64 @bcmp(i8* %105, i8* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @msg, align 4
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %116

113:                                              ; preds = %104
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %113, %103
  br label %115

115:                                              ; preds = %114
  store i64 0, i64* @guesslen, align 8
  br label %16

116:                                              ; preds = %110, %86, %79, %46
  %117 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i8* @getspace(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @bcmp(i8*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
