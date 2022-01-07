; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_doread.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_doread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@readbdy = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@testcalls = common dso_local global i32 0, align 4
@simulatedopcount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"skipping zero size read\0A\00", align 1
@OP_SKIPPED = common dso_local global i32 0, align 4
@OP_READ = common dso_local global i32 0, align 4
@file_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"skipping seek/read past end of file\0A\00", align 1
@progressinterval = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@monitorstart = common dso_local global i32 0, align 4
@monitorend = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%lu read\090x%x thru\090x%x\09(0x%x bytes)\0A\00", align 1
@fd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"doread: lseek\00", align 1
@temp_buf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"doread: read\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"short read: 0x%x bytes instead of 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doread(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @readbdy, align 4
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
  %22 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17, %14
  %24 = load i32, i32* @OP_SKIPPED, align 4
  %25 = load i32, i32* @OP_READ, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @log4(i32 %24, i32 %25, i32 %26, i32 %27)
  br label %132

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %30, %31
  %33 = load i32, i32* @file_size, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load i32, i32* @quiet, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @testcalls, align 4
  %40 = load i32, i32* @simulatedopcount, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38, %35
  %45 = load i32, i32* @OP_SKIPPED, align 4
  %46 = load i32, i32* @OP_READ, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @log4(i32 %45, i32 %46, i32 %47, i32 %48)
  br label %132

50:                                               ; preds = %29
  %51 = load i32, i32* @OP_READ, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @log4(i32 %51, i32 %52, i32 %53, i32 0)
  %55 = load i32, i32* @testcalls, align 4
  %56 = load i32, i32* @simulatedopcount, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %132

59:                                               ; preds = %50
  %60 = load i32, i32* @quiet, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %98, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @progressinterval, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* @testcalls, align 4
  %67 = load i32, i32* @progressinterval, align 4
  %68 = srem i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %65, %62
  %71 = load i64, i64* @debug, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load i32, i32* @monitorstart, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %89, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %4, align 4
  %79 = add i32 %77, %78
  %80 = load i32, i32* @monitorstart, align 4
  %81 = icmp ugt i32 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %76
  %83 = load i32, i32* @monitorend, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @monitorend, align 4
  %88 = icmp ule i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85, %82, %73, %65
  %90 = load i32, i32* @testcalls, align 4
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %4, align 4
  %94 = add i32 %92, %93
  %95 = sub i32 %94, 1
  %96 = load i32, i32* %4, align 4
  %97 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %89, %85, %76, %70, %59
  %99 = load i32, i32* @fd, align 4
  %100 = load i32, i32* %3, align 4
  %101 = zext i32 %100 to i64
  %102 = load i32, i32* @SEEK_SET, align 4
  %103 = call i64 @lseek(i32 %99, i64 %101, i32 %102)
  store i64 %103, i64* %5, align 8
  %104 = load i64, i64* %5, align 8
  %105 = icmp eq i64 %104, -1
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = call i32 @prterr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %108 = call i32 @report_failure(i32 140)
  br label %109

109:                                              ; preds = %106, %98
  %110 = load i32, i32* @fd, align 4
  %111 = load i32, i32* @temp_buf, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @read(i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %109
  %118 = load i32, i32* %6, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = call i32 @prterr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %126

122:                                              ; preds = %117
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %4, align 4
  %125 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %120
  %127 = call i32 @report_failure(i32 141)
  br label %128

128:                                              ; preds = %126, %109
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @check_buffers(i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %58, %44, %23
  ret void
}

declare dso_local i32 @prt(i8*, ...) #1

declare dso_local i32 @log4(i32, i32, i32, i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @prterr(i8*) #1

declare dso_local i32 @report_failure(i32) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @check_buffers(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
