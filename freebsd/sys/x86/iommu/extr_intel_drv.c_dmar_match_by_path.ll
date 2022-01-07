; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_match_by_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_match_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ACPI_DMAR_INCLUDE_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"INCLUDE_ALL\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"specific match\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_unit*, i32, i32, i32*, i32, i8**)* @dmar_match_by_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_match_by_path(%struct.dmar_unit* %0, i32 %1, i32 %2, i32* %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dmar_unit*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  %19 = load %struct.dmar_unit*, %struct.dmar_unit** %8, align 8
  %20 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_7__* @dmar_find_by_index(i32 %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %14, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %24 = icmp eq %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %90

26:                                               ; preds = %6
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %90

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ACPI_DMAR_INCLUDE_ALL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i8**, i8*** %13, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %44, align 8
  br label %45

45:                                               ; preds = %43, %40
  store i32 1, i32* %7, align 4
  br label %90

46:                                               ; preds = %33
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %48 = bitcast %struct.TYPE_7__* %47 to i8*
  %49 = getelementptr inbounds i8, i8* %48, i64 12
  store i8* %49, i8** %16, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %51 = bitcast %struct.TYPE_7__* %50 to i8*
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %51, i64 %56
  store i8* %57, i8** %17, align 8
  br label %58

58:                                               ; preds = %88, %46
  %59 = load i8*, i8** %16, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = icmp ult i8* %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  %63 = load i8*, i8** %16, align 8
  %64 = bitcast i8* %63 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %15, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %16, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %16, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @dmar_match_devscope(%struct.TYPE_8__* %71, i32 %72, i32* %73, i32 %74)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %90

79:                                               ; preds = %62
  %80 = load i32, i32* %18, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i8**, i8*** %13, align 8
  %84 = icmp ne i8** %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %86, align 8
  br label %87

87:                                               ; preds = %85, %82
  store i32 1, i32* %7, align 4
  br label %90

88:                                               ; preds = %79
  br label %58

89:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %89, %87, %78, %45, %32, %25
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_7__* @dmar_find_by_index(i32) #1

declare dso_local i32 @dmar_match_devscope(%struct.TYPE_8__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
