; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tput/extr_tput.c_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tput/extr_tput.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@process.errfew = internal constant [46 x i8] c"not enough arguments (%d) for capability `%s'\00", align 16
@process.errmany = internal constant [44 x i8] c"too many arguments (%d) for capability `%s'\00", align 16
@process.erresc = internal constant [43 x i8] c"unknown %% escape `%c' for capability `%s'\00", align 16
@outc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i8*, i8**)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @process(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %47, %3
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %12
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %40 [
    i32 100, label %27
    i32 50, label %27
    i32 51, label %27
    i32 46, label %27
    i32 43, label %27
    i32 37, label %30
    i32 62, label %30
    i32 105, label %30
    i32 114, label %30
    i32 110, label %30
    i32 66, label %30
    i32 68, label %30
    i32 112, label %31
  ]

27:                                               ; preds = %22, %22, %22, %22, %22
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %45

30:                                               ; preds = %22, %22, %22, %22, %22, %22, %22
  br label %45

31:                                               ; preds = %22
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  br label %45

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %22, %39
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @process.erresc, i64 0, i64 0), i8 signext %42, i8* %43)
  br label %45

45:                                               ; preds = %40, %36, %30, %27
  br label %46

46:                                               ; preds = %45, %17
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  br label %12

50:                                               ; preds = %12
  %51 = load i32, i32* %8, align 4
  switch i32 %51, label %125 [
    i32 0, label %52
    i32 1, label %56
    i32 2, label %81
  ]

52:                                               ; preds = %50
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @outc, align 4
  %55 = call i32 @tputs(i8* %53, i32 1, i32 %54)
  br label %129

56:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  %57 = load i8**, i8*** %6, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %6, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = load i8**, i8*** %6, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61, %56
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @errx(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @process.errfew, i64 0, i64 0), i32 1, i8* %69)
  br label %71

71:                                               ; preds = %68, %61
  %72 = load i8**, i8*** %6, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @atoi(i8* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i8* @tgoto(i8* %75, i32 %76, i32 %77)
  %79 = load i32, i32* @outc, align 4
  %80 = call i32 @tputs(i8* %78, i32 1, i32 %79)
  br label %129

81:                                               ; preds = %50
  %82 = load i8**, i8*** %6, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i32 1
  store i8** %83, i8*** %6, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %93, label %86

86:                                               ; preds = %81
  %87 = load i8**, i8*** %6, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86, %81
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @errx(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @process.errfew, i64 0, i64 0), i32 2, i8* %94)
  br label %96

96:                                               ; preds = %93, %86
  %97 = load i8**, i8*** %6, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @atoi(i8* %98)
  store i32 %99, i32* %10, align 4
  %100 = load i8**, i8*** %6, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i32 1
  store i8** %101, i8*** %6, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %96
  %105 = load i8**, i8*** %6, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104, %96
  %112 = load i8*, i8** %4, align 8
  %113 = call i32 @errx(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @process.errfew, i64 0, i64 0), i32 2, i8* %112)
  br label %114

114:                                              ; preds = %111, %104
  %115 = load i8**, i8*** %6, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @atoi(i8* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i8*, i8** %5, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i8* @tgoto(i8* %118, i32 %119, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @outc, align 4
  %124 = call i32 @tputs(i8* %121, i32 %122, i32 %123)
  br label %129

125:                                              ; preds = %50
  %126 = load i32, i32* %8, align 4
  %127 = load i8*, i8** %4, align 8
  %128 = call i32 @errx(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @process.errmany, i64 0, i64 0), i32 %126, i8* %127)
  br label %129

129:                                              ; preds = %125, %114, %71, %52
  %130 = load i8**, i8*** %6, align 8
  ret i8** %130
}

declare dso_local i32 @warnx(i8*, i8 signext, i8*) #1

declare dso_local i32 @tputs(i8*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @tgoto(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
