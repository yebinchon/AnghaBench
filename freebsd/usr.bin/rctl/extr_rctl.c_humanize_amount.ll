; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_humanize_amount.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_humanize_amount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"=/\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_DECIMAL = common dso_local global i32 0, align 4
@HN_NOSPACE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"humanize_number\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"%s:%s:%s:%s=%s\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%s:%s:%s:%s=%s/%s\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @humanize_amount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @humanize_amount(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [6 x i8], align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @strdup(i8* %16)
  store i8* %17, i8** %11, align 8
  store i8* %17, i8** %14, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %1
  %23 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %23, i8** %5, align 8
  %24 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %6, align 8
  %25 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %7, align 8
  %26 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %26, i8** %8, align 8
  %27 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %11, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %22
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 @str2int64(i8* %36, i32* %4)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %31, %22
  %40 = load i8*, i8** %14, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i8*, i8** %3, align 8
  store i8* %42, i8** %2, align 8
  br label %97

43:                                               ; preds = %35
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ne i8* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @HN_AUTOSCALE, align 4
  %63 = load i32, i32* @HN_DECIMAL, align 4
  %64 = load i32, i32* @HN_NOSPACE, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @humanize_number(i8* %60, i32 6, i32 %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %65)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %43
  %69 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %43
  %71 = load i8*, i8** %10, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %79 = call i32 (i8**, i8*, i8*, i8*, i8*, i8*, i8*, ...) @asprintf(i8** %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %74, i8* %75, i8* %76, i8* %77, i8* %78)
  store i32 %79, i32* %15, align 4
  br label %88

80:                                               ; preds = %70
  %81 = load i8*, i8** %5, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 (i8**, i8*, i8*, i8*, i8*, i8*, i8*, ...) @asprintf(i8** %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %81, i8* %82, i8* %83, i8* %84, i8* %85, i8* %86)
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %80, %73
  %89 = load i32, i32* %15, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i8*, i8** %14, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i8*, i8** %12, align 8
  store i8* %96, i8** %2, align 8
  br label %97

97:                                               ; preds = %93, %39
  %98 = load i8*, i8** %2, align 8
  ret i8* %98
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @str2int64(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @humanize_number(i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
