; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/renice/extr_renice.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/renice/extr_renice.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@PRIO_PROCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@PRIO_PGRP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@PRIO_USER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%s: bad value\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @PRIO_PROCESS, align 4
  store i32 %12, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %16, i8*** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (...) @usage()
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %30, i8*** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %26
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @getnum(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32* %9)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  ret i32 1

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %4, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %46, i8*** %5, align 8
  br label %47

47:                                               ; preds = %132, %42
  %48 = load i32, i32* %4, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %137

50:                                               ; preds = %47
  %51 = load i8**, i8*** %5, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @PRIO_PGRP, align 4
  store i32 %56, i32* %10, align 4
  br label %132

57:                                               ; preds = %50
  %58 = load i8**, i8*** %5, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @PRIO_USER, align 4
  store i32 %63, i32* %10, align 4
  br label %132

64:                                               ; preds = %57
  %65 = load i8**, i8*** %5, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @PRIO_PROCESS, align 4
  store i32 %70, i32* %10, align 4
  br label %132

71:                                               ; preds = %64
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @PRIO_USER, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %71
  %76 = load i8**, i8*** %5, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = call %struct.passwd* @getpwnam(i8* %77)
  store %struct.passwd* %78, %struct.passwd** %6, align 8
  %79 = icmp ne %struct.passwd* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.passwd*, %struct.passwd** %6, align 8
  %82 = getelementptr inbounds %struct.passwd, %struct.passwd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %11, align 4
  br label %103

84:                                               ; preds = %75
  %85 = load i8**, i8*** %5, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @getnum(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %86, i32* %11)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %132

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i8**, i8*** %5, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %132

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102, %80
  br label %122

104:                                              ; preds = %71
  %105 = load i8**, i8*** %5, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @getnum(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %106, i32* %11)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %132

112:                                              ; preds = %104
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i8**, i8*** %5, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %132

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %103
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i64 @donice(i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %122, %115, %109, %95, %89, %69, %62, %55
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %4, align 4
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i32 1
  store i8** %136, i8*** %5, align 8
  br label %47

137:                                              ; preds = %47
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @exit(i32 %140) #3
  unreachable
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @getnum(i8*, i8*, i32*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @donice(i32, i32, i32, i32) #1

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
