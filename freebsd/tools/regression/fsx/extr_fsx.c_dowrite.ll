; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_dowrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_dowrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@writebdy = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@testcalls = common dso_local global i32 0, align 4
@simulatedopcount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"skipping zero size write\0A\00", align 1
@OP_SKIPPED = common dso_local global i32 0, align 4
@OP_WRITE = common dso_local global i32 0, align 4
@file_size = common dso_local global i32 0, align 4
@original_buf = common dso_local global i32 0, align 4
@good_buf = common dso_local global i64 0, align 8
@lite = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Lite file size bug in fsx!\00", align 1
@progressinterval = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@monitorstart = common dso_local global i32 0, align 4
@monitorend = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"%lu write\090x%x thru\090x%x\09(0x%x bytes)\0A\00", align 1
@fd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"dowrite: lseek\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"dowrite: write\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"short write: 0x%x bytes instead of 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dowrite(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @writebdy, align 4
  %9 = urem i32 %7, %8
  %10 = load i32, i32* %3, align 4
  %11 = sub i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load i32, i32* @quiet, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @testcalls, align 4
  %19 = load i32, i32* @simulatedopcount, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17, %14
  %24 = load i32, i32* @OP_SKIPPED, align 4
  %25 = load i32, i32* @OP_WRITE, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @log4(i32 %24, i32 %25, i32 %26, i32 %27)
  br label %145

29:                                               ; preds = %2
  %30 = load i32, i32* @OP_WRITE, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @file_size, align 4
  %34 = call i32 @log4(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @original_buf, align 4
  %36 = load i64, i64* @good_buf, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @gendata(i32 %35, i64 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @file_size, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %41, %42
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %29
  %46 = load i32, i32* @file_size, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i64, i64* @good_buf, align 8
  %51 = load i32, i32* @file_size, align 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @file_size, align 4
  %56 = sub i32 %54, %55
  %57 = call i32 @memset(i64 %53, i8 signext 0, i32 %56)
  br label %58

58:                                               ; preds = %49, %45
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = add i32 %59, %60
  store i32 %61, i32* @file_size, align 4
  %62 = load i64, i64* @lite, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %66 = call i32 @report_failure(i32 149)
  br label %67

67:                                               ; preds = %64, %58
  br label %68

68:                                               ; preds = %67, %29
  %69 = load i32, i32* @testcalls, align 4
  %70 = load i32, i32* @simulatedopcount, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %145

73:                                               ; preds = %68
  %74 = load i32, i32* @quiet, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %112, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @progressinterval, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* @testcalls, align 4
  %81 = load i32, i32* @progressinterval, align 4
  %82 = srem i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %103, label %84

84:                                               ; preds = %79, %76
  %85 = load i64, i64* @debug, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %84
  %88 = load i32, i32* @monitorstart, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %103, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %4, align 4
  %93 = add i32 %91, %92
  %94 = load i32, i32* @monitorstart, align 4
  %95 = icmp ugt i32 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %90
  %97 = load i32, i32* @monitorend, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @monitorend, align 4
  %102 = icmp ule i32 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %99, %96, %87, %79
  %104 = load i32, i32* @testcalls, align 4
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %4, align 4
  %108 = add i32 %106, %107
  %109 = sub i32 %108, 1
  %110 = load i32, i32* %4, align 4
  %111 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %103, %99, %90, %84, %73
  %113 = load i32, i32* @fd, align 4
  %114 = load i32, i32* %3, align 4
  %115 = zext i32 %114 to i64
  %116 = load i32, i32* @SEEK_SET, align 4
  %117 = call i64 @lseek(i32 %113, i64 %115, i32 %116)
  store i64 %117, i64* %5, align 8
  %118 = load i64, i64* %5, align 8
  %119 = icmp eq i64 %118, -1
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = call i32 @prterr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %122 = call i32 @report_failure(i32 150)
  br label %123

123:                                              ; preds = %120, %112
  %124 = load i32, i32* @fd, align 4
  %125 = load i64, i64* @good_buf, align 8
  %126 = load i32, i32* %3, align 4
  %127 = zext i32 %126 to i64
  %128 = add nsw i64 %125, %127
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @write(i32 %124, i64 %128, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %123
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i32 @prterr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %143

139:                                              ; preds = %134
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %4, align 4
  %142 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %137
  %144 = call i32 @report_failure(i32 151)
  br label %145

145:                                              ; preds = %23, %72, %143, %123
  ret void
}

declare dso_local i32 @prt(i8*, ...) #1

declare dso_local i32 @log4(i32, i32, i32, i32) #1

declare dso_local i32 @gendata(i32, i64, i32, i32) #1

declare dso_local i32 @memset(i64, i8 signext, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @report_failure(i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @prterr(i8*) #1

declare dso_local i32 @write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
