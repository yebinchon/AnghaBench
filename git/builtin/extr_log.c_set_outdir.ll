; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_set_outdir.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_set_outdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outdir_offset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"./\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @set_outdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @set_outdir(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @is_absolute_path(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %3, align 8
  br label %38

14:                                               ; preds = %8, %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17, %14
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %3, align 8
  br label %38

26:                                               ; preds = %21
  store i32 2, i32* @outdir_offset, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %38

27:                                               ; preds = %17
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* @outdir_offset, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  store i8* %33, i8** %3, align 8
  br label %38

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @prefix_filename(i8* %35, i8* %36)
  store i8* %37, i8** %3, align 8
  br label %38

38:                                               ; preds = %34, %32, %26, %24, %12
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i64 @is_absolute_path(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @prefix_filename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
