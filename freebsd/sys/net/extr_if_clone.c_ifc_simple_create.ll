; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_clone.c_ifc_simple_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_clone.c_ifc_simple_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i32 (%struct.if_clone*, i32, i32)* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"if_clone_create(): interface name too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i8*, i64, i32)* @ifc_simple_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifc_simple_create(%struct.if_clone* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.if_clone*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.if_clone* %0, %struct.if_clone** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @ifc_name2unit(i8* %14, i32* %12)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %5, align 4
  br label %83

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load %struct.if_clone*, %struct.if_clone** %6, align 8
  %25 = call i32 @ifc_alloc_unit(%struct.if_clone* %24, i32* %12)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %5, align 4
  br label %83

30:                                               ; preds = %20
  %31 = load %struct.if_clone*, %struct.if_clone** %6, align 8
  %32 = getelementptr inbounds %struct.if_clone, %struct.if_clone* %31, i32 0, i32 0
  %33 = load i32 (%struct.if_clone*, i32, i32)*, i32 (%struct.if_clone*, i32, i32)** %32, align 8
  %34 = load %struct.if_clone*, %struct.if_clone** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 %33(%struct.if_clone* %34, i32 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.if_clone*, %struct.if_clone** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @ifc_free_unit(%struct.if_clone* %41, i32 %42)
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %5, align 4
  br label %83

45:                                               ; preds = %30
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %45
  %49 = load i8*, i8** %7, align 8
  store i8* %49, i8** %10, align 8
  br label %50

50:                                               ; preds = %56, %48
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %10, align 8
  br label %50

59:                                               ; preds = %50
  %60 = load i8*, i8** %10, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sub i64 %61, %66
  %68 = load i32, i32* %12, align 4
  %69 = call i64 @snprintf(i8* %60, i64 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i64, i64* %8, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sub i64 %70, %75
  %77 = sub i64 %76, 1
  %78 = icmp ugt i64 %69, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %59
  %80 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %59
  br label %82

82:                                               ; preds = %81, %45
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %40, %28, %18
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @ifc_name2unit(i8*, i32*) #1

declare dso_local i32 @ifc_alloc_unit(%struct.if_clone*, i32*) #1

declare dso_local i32 @ifc_free_unit(%struct.if_clone*, i32) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
