; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_check_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_check_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@good_buf = common dso_local global i8** null, align 8
@temp_buf = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [43 x i8] c"READ BAD DATA: offset = 0x%x, size = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"OFFSET\09GOOD\09BAD\09RANGE\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"0x%5x\090x%04x\090x%04x\00", align 1
@badoff = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"\090x%5x\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"operation# (mod 256) for the bad data may be %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"operation# (mod 256) for the bad data unknown, check HOLE and EXTEND ops\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"????????????????\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_buffers(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8**, i8*** @good_buf, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %11, i64 %13
  %15 = load i8**, i8*** @temp_buf, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @memcmp(i8** %14, i8** %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %107

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %81, %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp ugt i32 %25, 0
  br i1 %26, label %27, label %88

27:                                               ; preds = %24
  %28 = load i8**, i8*** @good_buf, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = ptrtoint i8* %32 to i8
  store i8 %33, i8* %5, align 1
  %34 = load i8**, i8*** @temp_buf, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %38 to i8
  store i8 %39, i8* %6, align 1
  %40 = load i8, i8* %5, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %6, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %81

45:                                               ; preds = %27
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %45
  %49 = load i8**, i8*** @temp_buf, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = call i32 @short_at(i8** %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i8**, i8*** @good_buf, align 8
  %56 = load i32, i32* %3, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = call i32 @short_at(i8** %58)
  %60 = load i32, i32* %10, align 4
  %61 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %59, i32 %60)
  %62 = load i8**, i8*** @temp_buf, align 8
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %48
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  br label %71

69:                                               ; preds = %48
  %70 = load i32, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi i32 [ %68, %66 ], [ %70, %69 ]
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %62, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %71, %45
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %3, align 4
  store i32 %80, i32* @badoff, align 4
  br label %81

81:                                               ; preds = %77, %27
  %82 = load i32, i32* %3, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %4, align 4
  %87 = add i32 %86, -1
  store i32 %87, i32* %4, align 4
  br label %24

88:                                               ; preds = %24
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, 255
  %99 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %102

100:                                              ; preds = %91
  %101 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %96
  br label %105

103:                                              ; preds = %88
  %104 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %102
  %106 = call i32 @report_failure(i32 110)
  br label %107

107:                                              ; preds = %105, %2
  ret void
}

declare dso_local i64 @memcmp(i8**, i8**, i32) #1

declare dso_local i32 @prt(i8*, ...) #1

declare dso_local i32 @short_at(i8**) #1

declare dso_local i32 @report_failure(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
