; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reflog.c_cmd_reflog.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reflog.c_cmd_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@reflog_usage = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"expire\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"exists\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_reflog(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load i8**, i8*** %6, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @reflog_usage, align 4
  %18 = call i32 @_(i32 %17)
  %19 = call i32 @usage(i32 %18)
  br label %20

20:                                               ; preds = %16, %10, %3
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %35

30:                                               ; preds = %23, %20
  %31 = load i32, i32* %5, align 4
  %32 = load i8**, i8*** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @cmd_log_reflog(i32 %31, i8** %32, i8* %33)
  store i32 %34, i32* %4, align 4
  br label %92

35:                                               ; preds = %23
  %36 = load i8**, i8*** %6, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load i8**, i8*** %6, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @cmd_log_reflog(i32 %43, i8** %45, i8* %46)
  store i32 %47, i32* %4, align 4
  br label %92

48:                                               ; preds = %35
  %49 = load i8**, i8*** %6, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load i8**, i8*** %6, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @cmd_reflog_expire(i32 %56, i8** %58, i8* %59)
  store i32 %60, i32* %4, align 4
  br label %92

61:                                               ; preds = %48
  %62 = load i8**, i8*** %6, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load i8**, i8*** %6, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @cmd_reflog_delete(i32 %69, i8** %71, i8* %72)
  store i32 %73, i32* %4, align 4
  br label %92

74:                                               ; preds = %61
  %75 = load i8**, i8*** %6, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load i8**, i8*** %6, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @cmd_reflog_exists(i32 %82, i8** %84, i8* %85)
  store i32 %86, i32* %4, align 4
  br label %92

87:                                               ; preds = %74
  %88 = load i32, i32* %5, align 4
  %89 = load i8**, i8*** %6, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @cmd_log_reflog(i32 %88, i8** %89, i8* %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %80, %67, %54, %41, %30
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @_(i32) #1

declare dso_local i32 @cmd_log_reflog(i32, i8**, i8*) #1

declare dso_local i32 @cmd_reflog_expire(i32, i8**, i8*) #1

declare dso_local i32 @cmd_reflog_delete(i32, i8**, i8*) #1

declare dso_local i32 @cmd_reflog_exists(i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
