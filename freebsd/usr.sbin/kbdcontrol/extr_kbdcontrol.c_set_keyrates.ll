; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_set_keyrates.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_set_keyrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"argument to -r must be delay.repeat or slow|normal|fast\00", align 1
@ndelays = common dso_local global i32 0, align 4
@delays = common dso_local global i32* null, align 8
@nrepeats = common dso_local global i32 0, align 4
@repeats = common dso_local global i32* null, align 8
@KDSETREPEAT = common dso_local global i32 0, align 4
@KDSETRAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"setting keyboard rate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_keyrates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_keyrates(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 1000, i32* %5, align 4
  store i32 500, i32* %4, align 4
  store i32 3, i32* %7, align 4
  store i32 31, i32* %6, align 4
  br label %98

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 500, i32* %5, align 4
  store i32 125, i32* %4, align 4
  store i32 1, i32* %7, align 4
  store i32 15, i32* %6, align 4
  br label %97

19:                                               ; preds = %14
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %96

24:                                               ; preds = %19
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @strtol(i8* %25, i8** %9, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 46
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24
  br label %53

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %9, align 8
  store i8* %37, i8** %2, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @strtol(i8* %38, i8** %9, i32 0)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %35
  %43 = load i8*, i8** %2, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47, %42, %35
  br label %53

53:                                               ; preds = %52, %34
  %54 = call i32 @warnx(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %118

55:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %71, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @ndelays, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** @delays, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp sle i32 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %74

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %56

74:                                               ; preds = %69, %56
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %91, %74
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @nrepeats, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load i32, i32* %4, align 4
  %83 = load i32*, i32** @repeats, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp sle i32 %82, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %94

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %76

94:                                               ; preds = %89, %76
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %23
  br label %97

97:                                               ; preds = %96, %18
  br label %98

98:                                               ; preds = %97, %13
  %99 = load i32, i32* %5, align 4
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %4, align 4
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @KDSETREPEAT, align 4
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %105 = call i64 (i32, i32, ...) @ioctl(i32 0, i32 %103, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %98
  %108 = load i32, i32* @KDSETRAD, align 4
  %109 = load i32, i32* %7, align 4
  %110 = shl i32 %109, 5
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %110, %111
  %113 = call i64 (i32, i32, ...) @ioctl(i32 0, i32 %108, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = call i32 @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %107
  br label %118

118:                                              ; preds = %53, %117, %98
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
