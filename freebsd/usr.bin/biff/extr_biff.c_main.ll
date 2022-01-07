; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/biff/extr_biff.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/biff/extr_biff.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optind = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"unknown tty\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"is %s\0A\00", align 1
@S_IXUSR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@S_IXGRP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %9

9:                                                ; preds = %19, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %17 [
    i32 63, label %16
  ]

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %14, %16
  %18 = call i32 (...) @usage()
  br label %19

19:                                               ; preds = %17
  br label %9

20:                                               ; preds = %9
  %21 = load i64, i64* @optind, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load i64, i64* @optind, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 %26
  store i8** %28, i8*** %5, align 8
  %29 = load i32, i32* @STDIN_FILENO, align 4
  %30 = call i8* @ttyname(i32 %29)
  store i8* %30, i8** %8, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %20
  %33 = load i32, i32* @STDOUT_FILENO, align 4
  %34 = call i8* @ttyname(i32 %33)
  store i8* %34, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* @STDERR_FILENO, align 4
  %38 = call i8* @ttyname(i32 %37)
  store i8* %38, i8** %8, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36, %32, %20
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @stat(i8* %43, %struct.stat* %6)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %79

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @S_IXUSR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %67

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @S_IXGRP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  br label %67

67:                                               ; preds = %59, %58
  %68 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %58 ], [ %66, %59 ]
  %69 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @S_IXUSR, align 4
  %73 = load i32, i32* @S_IXGRP, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 0, i32 1
  store i32 %78, i32* %3, align 4
  br label %147

79:                                               ; preds = %48
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  switch i32 %85, label %135 [
    i32 110, label %86
    i32 121, label %101
    i32 98, label %118
  ]

86:                                               ; preds = %79
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @S_IXUSR, align 4
  %91 = load i32, i32* @S_IXGRP, align 4
  %92 = or i32 %90, %91
  %93 = xor i32 %92, -1
  %94 = and i32 %89, %93
  %95 = call i32 @chmod(i8* %87, i32 %94)
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %97, %86
  br label %137

101:                                              ; preds = %79
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @S_IXUSR, align 4
  %106 = load i32, i32* @S_IXGRP, align 4
  %107 = or i32 %105, %106
  %108 = xor i32 %107, -1
  %109 = and i32 %104, %108
  %110 = load i32, i32* @S_IXUSR, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @chmod(i8* %102, i32 %111)
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %101
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %114, %101
  br label %137

118:                                              ; preds = %79
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @S_IXUSR, align 4
  %123 = load i32, i32* @S_IXGRP, align 4
  %124 = or i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = and i32 %121, %125
  %127 = load i32, i32* @S_IXGRP, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @chmod(i8* %119, i32 %128)
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %118
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %131, %118
  br label %137

135:                                              ; preds = %79
  %136 = call i32 (...) @usage()
  br label %137

137:                                              ; preds = %135, %134, %117, %100
  %138 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @S_IXUSR, align 4
  %141 = load i32, i32* @S_IXGRP, align 4
  %142 = or i32 %140, %141
  %143 = and i32 %139, %142
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 0, i32 1
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %137, %67
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @ttyname(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @chmod(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
