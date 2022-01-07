; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_module.c_preload_search_by_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_module.c_preload_search_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@preload_metadata = common dso_local global i32* null, align 8
@MODINFO_NAME = common dso_local global i32 0, align 4
@MODINFO_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @preload_search_by_type(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32*, i32** @preload_metadata, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %60

10:                                               ; preds = %1
  %11 = load i32*, i32** @preload_metadata, align 8
  store i32* %11, i32** %4, align 8
  store i32* null, i32** %5, align 8
  br label %12

12:                                               ; preds = %46, %10
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %59

24:                                               ; preds = %18, %12
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MODINFO_NAME, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32*, i32** %4, align 8
  store i32* %31, i32** %5, align 8
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MODINFO_TYPE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i8*, i8** %3, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  %42 = call i32 @strcmp(i8* %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = load i32*, i32** %5, align 8
  store i32* %45, i32** %2, align 8
  br label %61

46:                                               ; preds = %38, %32
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 8, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @roundup(i32 %53, i32 4)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %4, align 8
  br label %12

59:                                               ; preds = %23
  br label %60

60:                                               ; preds = %59, %1
  store i32* null, i32** %2, align 8
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i32*, i32** %2, align 8
  ret i32* %62
}

declare dso_local i32 @strcmp(i8*, i32*) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
