; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/colrm/extr_colrm.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/colrm/extr_colrm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"illegal column -- %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"illegal start and stop columns\00", align 1
@stdin = common dso_local global i32 0, align 4
@TAB = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @LC_ALL, align 4
  %13 = call i32 @setlocale(i32 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %24, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %22 [
    i32 63, label %21
  ]

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %19, %21
  %23 = call i32 (...) @usage()
  br label %24

24:                                               ; preds = %22
  br label %14

25:                                               ; preds = %14
  %26 = load i64, i64* @optind, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load i64, i64* @optind, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 %31
  store i8** %33, i8*** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %34 = load i32, i32* %4, align 4
  switch i32 %34, label %72 [
    i32 2, label %35
    i32 1, label %53
    i32 0, label %71
  ]

35:                                               ; preds = %25
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strtol(i8* %38, i8** %11, i32 10)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load i8*, i8** %11, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42, %35
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %25, %52
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strtol(i8* %56, i8** %11, i32 10)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp sle i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load i8*, i8** %11, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60, %53
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %65, %60
  br label %74

71:                                               ; preds = %25
  br label %74

72:                                               ; preds = %25
  %73 = call i32 (...) @usage()
  br label %74

74:                                               ; preds = %72, %71, %70
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %77, %74
  store i64 0, i64* %6, align 8
  br label %84

84:                                               ; preds = %136, %83
  %85 = call i32 (...) @getwchar()
  store i32 %85, i32* %9, align 4
  switch i32 %85, label %105 [
    i32 128, label %86
    i32 8, label %89
    i32 10, label %96
    i32 9, label %97
  ]

86:                                               ; preds = %84
  %87 = load i32, i32* @stdin, align 4
  %88 = call i32 @check(i32 %87)
  br label %115

89:                                               ; preds = %84
  %90 = load i64, i64* %6, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i64, i64* %6, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %6, align 8
  br label %95

95:                                               ; preds = %92, %89
  br label %115

96:                                               ; preds = %84
  store i64 0, i64* %6, align 8
  br label %115

97:                                               ; preds = %84
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @TAB, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i64, i64* @TAB, align 8
  %102 = sub nsw i64 %101, 1
  %103 = xor i64 %102, -1
  %104 = and i64 %100, %103
  store i64 %104, i64* %6, align 8
  br label %115

105:                                              ; preds = %84
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @wcwidth(i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %6, align 8
  %113 = add nsw i64 %112, %111
  store i64 %113, i64* %6, align 8
  br label %114

114:                                              ; preds = %109, %105
  br label %115

115:                                              ; preds = %114, %97, %96, %95, %86
  %116 = load i64, i64* %7, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* %7, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %129, label %122

122:                                              ; preds = %118
  %123 = load i64, i64* %8, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load i64, i64* %6, align 8
  %127 = load i64, i64* %8, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %125, %118, %115
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @putwchar(i32 %130)
  %132 = icmp eq i32 %131, 128
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* @stdout, align 4
  %135 = call i32 @check(i32 %134)
  br label %136

136:                                              ; preds = %133, %129, %125, %122
  br label %84
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @getwchar(...) #1

declare dso_local i32 @check(i32) #1

declare dso_local i32 @wcwidth(i32) #1

declare dso_local i32 @putwchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
