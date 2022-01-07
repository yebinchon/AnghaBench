; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_module.c_preload_delete_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_module.c_preload_delete_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@preload_metadata = common dso_local global i32* null, align 8
@MODINFO_NAME = common dso_local global i64 0, align 8
@MODINFO_ADDR = common dso_local global i64 0, align 8
@MODINFO_SIZE = common dso_local global i64 0, align 8
@MODINFO_EMPTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preload_delete_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %6, align 8
  %9 = load i32*, i32** @preload_metadata, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %105

11:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %12 = load i32*, i32** @preload_metadata, align 8
  %13 = ptrtoint i32* %12 to i64
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %92, %11
  %15 = load i64, i64* %4, align 8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %5, align 8
  %17 = load i64*, i64** %5, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MODINFO_NAME, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %14
  %23 = load i64*, i64** %5, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %22
  %28 = load i64*, i64** %5, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %27, %14
  %33 = load i64, i64* %3, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i64, i64* %3, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @kmem_bootstrap_free(i32 %40, i64 %41)
  br label %43

43:                                               ; preds = %38, %35, %32
  store i64 0, i64* %3, align 8
  store i64 0, i64* %6, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %104

49:                                               ; preds = %43
  %50 = load i8*, i8** %2, align 8
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 16
  %53 = call i32 @strcmp(i8* %50, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  store i32 1, i32* %8, align 4
  br label %61

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %56
  br label %61

61:                                               ; preds = %60, %55
  br label %62

62:                                               ; preds = %61, %27, %22
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %62
  %66 = load i64*, i64** %5, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MODINFO_ADDR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i64, i64* %4, align 8
  %73 = add i64 %72, 16
  %74 = inttoptr i64 %73 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %3, align 8
  br label %88

76:                                               ; preds = %65
  %77 = load i64*, i64** %5, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MODINFO_SIZE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i64, i64* %4, align 8
  %84 = add i64 %83, 16
  %85 = inttoptr i64 %84 to i64*
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %6, align 8
  br label %87

87:                                               ; preds = %82, %76
  br label %88

88:                                               ; preds = %87, %71
  %89 = load i64, i64* @MODINFO_EMPTY, align 8
  %90 = load i64*, i64** %5, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %62
  %93 = load i64*, i64** %5, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  %96 = add i64 16, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @roundup(i32 %98, i32 4)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %4, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* %4, align 8
  br label %14

104:                                              ; preds = %48
  br label %105

105:                                              ; preds = %104, %1
  ret void
}

declare dso_local i32 @kmem_bootstrap_free(i32, i64) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
