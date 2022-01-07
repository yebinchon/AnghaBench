; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_ocs_ddump_queue_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_ocs_ddump_queue_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"<qentries>\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"[%04x] \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"       \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"</qentries>\0A\00", align 1
@OCS_NEWLINE_MOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocs_ddump_queue_entries(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %6
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %44

31:                                               ; preds = %25
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %12, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %39, %31
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 (i32*, i8*, ...) @ocs_textbuf_printf(i32* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %105, %44
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %108

51:                                               ; preds = %47
  %52 = load i8*, i8** %8, align 8
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** %15, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32*, i32** %15, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %15, align 8
  %60 = load i32*, i32** %15, align 8
  store i32* %60, i32** %16, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (i32*, i8*, ...) @ocs_textbuf_printf(i32* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %94, %51
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %97

68:                                               ; preds = %64
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %16, align 8
  %72 = load i32, i32* %70, align 4
  %73 = call i32 (i32*, i8*, ...) @ocs_textbuf_printf(i32* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %18, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %14, align 4
  %80 = srem i32 %79, 8
  %81 = icmp eq i32 %80, 7
  br i1 %81, label %82, label %93

82:                                               ; preds = %78, %68
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 (i32*, i8*, ...) @ocs_textbuf_printf(i32* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* %18, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 (i32*, i8*, ...) @ocs_textbuf_printf(i32* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %82
  br label %93

93:                                               ; preds = %92, %78
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %64

97:                                               ; preds = %64
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %103, %97
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %47

108:                                              ; preds = %47
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 (i32*, i8*, ...) @ocs_textbuf_printf(i32* %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ocs_textbuf_printf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
