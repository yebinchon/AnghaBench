; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_show_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_show_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RCTL_DEFAULT_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to show rules for '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @show_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_rules(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %14 = load i32, i32* @RCTL_DEFAULT_BUFSIZE, align 4
  %15 = sdiv i32 %14, 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %13, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %12, align 8
  br label %25

24:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  br label %25

25:                                               ; preds = %24, %19
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i64, i64* %13, align 8
  %28 = mul i64 %27, 4
  store i64 %28, i64* %13, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i8* @realloc(i8* %29, i64 %30)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %26
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @rctl_get_rules(i8* %37, i64 %38, i8* %39, i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %62

45:                                               ; preds = %36
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @ERANGE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %26

50:                                               ; preds = %45
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @ENOSYS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 (...) @enosys()
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %70

62:                                               ; preds = %44
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @print_rules(i8* %63, i32 %64, i32 %65)
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %62, %56
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @rctl_get_rules(i8*, i64, i8*, i64) #1

declare dso_local i32 @enosys(...) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @print_rules(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
