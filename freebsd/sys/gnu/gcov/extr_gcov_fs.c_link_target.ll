; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_link_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_link_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_GCOV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s/%s.%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @link_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @link_target(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @M_GCOV, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = call i8* @strdup_flags(i8* %11, i32 %12, i32 %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %44

18:                                               ; preds = %3
  %19 = load i8*, i8** %10, align 8
  %20 = call i8* @strrchr(i8* %19, i8 signext 46)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i8*, i8** %9, align 8
  store i8 0, i8* %24, align 1
  br label %25

25:                                               ; preds = %23, %18
  store i8* null, i8** %8, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* @M_GCOV, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 (i8**, i32, i8*, i8*, i8*, ...) @asprintf(i8** %8, i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31, i8* %32)
  br label %39

34:                                               ; preds = %25
  %35 = load i32, i32* @M_GCOV, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 (i8**, i32, i8*, i8*, i8*, ...) @asprintf(i8** %8, i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* @M_GCOV, align 4
  %42 = call i32 @free(i8* %40, i32 %41)
  %43 = load i8*, i8** %8, align 8
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %39, %17
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

declare dso_local i8* @strdup_flags(i8*, i32, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @asprintf(i8**, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
