; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_video.c_vo_get_brightness_levels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_video.c_vo_get_brightness_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_BCL\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"can't evaluate %s._BCL - %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"evaluation of %s._BCL makes no sense\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @vo_get_brightness_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vo_get_brightness_levels(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %13 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @AcpiEvaluateObject(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.TYPE_9__* %7)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @ACPI_FAILURE(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @AE_NOT_FOUND, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = call i8* @acpi_name(i32 %26)
  %28 = load i64, i64* %6, align 8
  %29 = call i8* @AcpiFormatException(i64 %28)
  %30 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %29)
  br label %31

31:                                               ; preds = %25, %21
  br label %94

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %8, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = call i32 @ACPI_PKG_VALID(%struct.TYPE_8__* %36, i32 2)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = call i8* @acpi_name(i32 %40)
  %42 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  br label %94

43:                                               ; preds = %32
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32**, i32*** %5, align 8
  %52 = icmp eq i32** %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %43
  br label %94

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i32* @AcpiOsAllocate(i32 %58)
  store i32* %59, i32** %12, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %94

63:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %81, %63
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i64 @acpi_PkgInt32(%struct.TYPE_8__* %69, i32 %70, i32* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %77, %68
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %64

84:                                               ; preds = %64
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 2
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @AcpiOsFree(i32* %88)
  br label %94

90:                                               ; preds = %84
  %91 = load i32*, i32** %12, align 8
  %92 = load i32**, i32*** %5, align 8
  store i32* %91, i32** %92, align 8
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %3, align 4
  br label %103

94:                                               ; preds = %87, %62, %53, %39, %31
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @AcpiOsFree(i32* %100)
  br label %102

102:                                              ; preds = %98, %94
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %90
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @AcpiEvaluateObject(i32, i8*, i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @acpi_name(i32) #1

declare dso_local i8* @AcpiFormatException(i64) #1

declare dso_local i32 @ACPI_PKG_VALID(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @AcpiOsAllocate(i32) #1

declare dso_local i64 @acpi_PkgInt32(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @AcpiOsFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
