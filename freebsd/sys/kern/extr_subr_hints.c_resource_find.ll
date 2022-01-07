; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_hints.c_resource_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_hints.c_resource_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32*, i8*, i8*, i8**, i32*, i32*, i8**, i32*, i8**)* @resource_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resource_find(i32* %0, i32* %1, i8* %2, i32* %3, i8* %4, i8* %5, i8** %6, i32* %7, i32* %8, i8** %9, i32* %10, i8** %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8**, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  store i32* %0, i32** %14, align 8
  store i32* %1, i32** %15, align 8
  store i8* %2, i8** %16, align 8
  store i32* %3, i32** %17, align 8
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i8** %6, i8*** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32* %8, i32** %22, align 8
  store i8** %9, i8*** %23, align 8
  store i32* %10, i32** %24, align 8
  store i8** %11, i8*** %25, align 8
  %29 = load i32*, i32** %14, align 8
  store i32 0, i32* %29, align 4
  store i8* null, i8** %28, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = load i8*, i8** %18, align 8
  %35 = load i8*, i8** %19, align 8
  %36 = load i8**, i8*** %20, align 8
  %37 = load i32*, i32** %21, align 8
  %38 = load i32*, i32** %22, align 8
  %39 = load i8**, i8*** %23, align 8
  %40 = load i32*, i32** %24, align 8
  %41 = load i8**, i8*** %25, align 8
  %42 = call i32 @res_find(i8** %28, i32* %30, i32* %31, i8* %32, i32* %33, i8* %34, i8* %35, i8** %36, i32* %37, i32* %38, i8** %39, i32* %40, i8** %41)
  store i32 %42, i32* %26, align 4
  %43 = load i32, i32* %26, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %12
  store i32 0, i32* %13, align 4
  br label %69

46:                                               ; preds = %12
  %47 = load i32*, i32** %17, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @ENOENT, align 4
  store i32 %50, i32* %13, align 4
  br label %69

51:                                               ; preds = %46
  store i32 -1, i32* %27, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = load i8*, i8** %16, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = load i8*, i8** %19, align 8
  %57 = load i8**, i8*** %20, align 8
  %58 = load i32*, i32** %21, align 8
  %59 = load i32*, i32** %22, align 8
  %60 = load i8**, i8*** %23, align 8
  %61 = load i32*, i32** %24, align 8
  %62 = load i8**, i8*** %25, align 8
  %63 = call i32 @res_find(i8** %28, i32* %52, i32* %53, i8* %54, i32* %27, i8* %55, i8* %56, i8** %57, i32* %58, i32* %59, i8** %60, i32* %61, i8** %62)
  store i32 %63, i32* %26, align 4
  %64 = load i32, i32* %26, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  br label %69

67:                                               ; preds = %51
  %68 = load i32, i32* @ENOENT, align 4
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %67, %66, %49, %45
  %70 = load i32, i32* %13, align 4
  ret i32 %70
}

declare dso_local i32 @res_find(i8**, i32*, i32*, i8*, i32*, i8*, i8*, i8**, i32*, i32*, i8**, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
