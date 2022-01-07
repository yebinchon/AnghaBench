; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/file/extr_fcntlflags_test.c_subtests.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/file/extr_fcntlflags_test.c_subtests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"not ok %d - open(\22%s\22, %s) failed\0A\00", align 1
@testnum = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ok %d - open(\22%s\22, %s) succeeded\0A\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"not ok %d - fcntl(F_GETFL) failed\0A\00", align 1
@CORRECT_O_ACCMODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"ok %d - fcntl(F_GETFL) gave correct result\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"not ok %d - fcntl(F_GETFL) gave incorrect result (%#x & %#x != %#x)\0A\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"not ok %d - fcntl(F_SETFL) same flags failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"ok %d - fcntl(F_SETFL) same flags succeeded\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"ok %d - fcntl(F_GETFL) gave same result\0A\00", align 1
@.str.8 = private unnamed_addr constant [76 x i8] c"not ok %d - fcntl(F_SETFL) caused fcntl(F_GETFL) to change from %#x to %#x\0A\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"not ok %d - fcntl(F_SETFL) O_NONBLOCK failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"ok %d - fcntl(F_SETFL) O_NONBLOCK succeeded\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"ok %d - fcntl(F_GETFL) gave expected result\0A\00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"not ok %d - fcntl(F_SETFL) gave unexpected result (%#x != %#x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @subtests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subtests(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @open(i8* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @testnum, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @testnum, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %19, i8* %20)
  br label %28

22:                                               ; preds = %3
  %23 = load i32, i32* @testnum, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @testnum, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %23, i8* %25, i8* %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @F_GETFL, align 4
  %31 = call i32 (i32, i32, ...) @fcntl(i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @testnum, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @testnum, align 4
  %37 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %56

38:                                               ; preds = %28
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @CORRECT_O_ACCMODE, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @testnum, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @testnum, align 4
  %47 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  br label %55

48:                                               ; preds = %38
  %49 = load i32, i32* @testnum, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @testnum, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @CORRECT_O_ACCMODE, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %49, i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %44
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @F_SETFL, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i32, ...) @fcntl(i32 %57, i32 %58, i32 %59)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @testnum, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @testnum, align 4
  %65 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  br label %70

66:                                               ; preds = %56
  %67 = load i32, i32* @testnum, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @testnum, align 4
  %69 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @F_GETFL, align 4
  %73 = call i32 (i32, i32, ...) @fcntl(i32 %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @testnum, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @testnum, align 4
  %79 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %95

80:                                               ; preds = %70
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* @testnum, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @testnum, align 4
  %87 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  br label %94

88:                                               ; preds = %80
  %89 = load i32, i32* @testnum, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @testnum, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.8, i64 0, i64 0), i32 %89, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %84
  br label %95

95:                                               ; preds = %94, %76
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @F_SETFL, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @O_NONBLOCK, align 4
  %100 = or i32 %98, %99
  %101 = call i32 (i32, i32, ...) @fcntl(i32 %96, i32 %97, i32 %100)
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i32, i32* @testnum, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* @testnum, align 4
  %106 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %104)
  br label %111

107:                                              ; preds = %95
  %108 = load i32, i32* @testnum, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* @testnum, align 4
  %110 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %108)
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @F_GETFL, align 4
  %114 = call i32 (i32, i32, ...) @fcntl(i32 %112, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* @testnum, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @testnum, align 4
  %120 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  br label %140

121:                                              ; preds = %111
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @O_NONBLOCK, align 4
  %125 = or i32 %123, %124
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32, i32* @testnum, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* @testnum, align 4
  %130 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 %128)
  br label %139

131:                                              ; preds = %121
  %132 = load i32, i32* @testnum, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* @testnum, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @O_NONBLOCK, align 4
  %137 = or i32 %135, %136
  %138 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i64 0, i64 0), i32 %132, i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %131, %127
  br label %140

140:                                              ; preds = %139, %117
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @close(i32 %141)
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
