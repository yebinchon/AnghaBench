; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_show_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_show_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RCTL_DEFAULT_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to show resource consumption for '%s'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @show_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_usage(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %10, align 8
  %13 = load i32, i32* @RCTL_DEFAULT_BUFSIZE, align 4
  %14 = sdiv i32 %13, 4
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %12, align 8
  br label %16

16:                                               ; preds = %41, %3
  %17 = load i64, i64* %12, align 8
  %18 = mul i64 %17, 4
  store i64 %18, i64* %12, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i64, i64* %12, align 8
  %21 = call i8* @realloc(i8* %19, i64 %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = add nsw i64 %29, 1
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @rctl_get_racct(i8* %27, i64 %30, i8* %31, i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %54

37:                                               ; preds = %26
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @ERANGE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %16

42:                                               ; preds = %37
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @ENOSYS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (...) @enosys()
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %79

54:                                               ; preds = %36
  %55 = load i8*, i8** %10, align 8
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %72, %54
  %57 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %57, i8** %11, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %75

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i8*, i8** %11, align 8
  %71 = call i8* @humanize_usage_amount(i8* %70)
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  br label %56

75:                                               ; preds = %65, %56
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %48
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @rctl_get_racct(i8*, i64, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @enosys(...) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @humanize_usage_amount(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
