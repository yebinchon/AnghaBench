; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_video.c_vid_enum_outputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_video.c_vid_enum_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.enum_callback_arg = type { i32, void (i32, i32, i8*)*, %struct.TYPE_7__*, i8* }

@video = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_DOD\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"can't evaluate %s._DOD - %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"evaluation of %s._DOD makes no sense\0A\00", align 1
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@vid_enum_outputs_subr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed walking down %s - %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, void (i32, i32, i8*)*, i8*)* @vid_enum_outputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vid_enum_outputs(i32 %0, void (i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca void (i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.enum_callback_arg, align 8
  store i32 %0, i32* %4, align 4
  store void (i32, i32, i8*)* %1, void (i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @video, align 4
  %12 = call i32 @ACPI_SERIAL_ASSERT(i32 %11)
  %13 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @AcpiEvaluateObject(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.TYPE_8__* %8)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @ACPI_FAILURE(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @AE_NOT_FOUND, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = call i8* @acpi_name(i32 %26)
  %28 = load i64, i64* %7, align 8
  %29 = call i8* @AcpiFormatException(i64 %28)
  %30 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %29)
  br label %31

31:                                               ; preds = %25, %21
  %32 = getelementptr inbounds %struct.enum_callback_arg, %struct.enum_callback_arg* %10, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  br label %76

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = bitcast i32* %35 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %9, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = call i32 @ACPI_PKG_VALID(%struct.TYPE_7__* %37, i32 1)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = call i8* @acpi_name(i32 %41)
  %43 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = getelementptr inbounds %struct.enum_callback_arg, %struct.enum_callback_arg* %10, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  br label %76

45:                                               ; preds = %33
  %46 = load void (i32, i32, i8*)*, void (i32, i32, i8*)** %5, align 8
  %47 = icmp eq void (i32, i32, i8*)* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.enum_callback_arg, %struct.enum_callback_arg* %10, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  br label %76

54:                                               ; preds = %45
  %55 = load void (i32, i32, i8*)*, void (i32, i32, i8*)** %5, align 8
  %56 = getelementptr inbounds %struct.enum_callback_arg, %struct.enum_callback_arg* %10, i32 0, i32 1
  store void (i32, i32, i8*)* %55, void (i32, i32, i8*)** %56, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds %struct.enum_callback_arg, %struct.enum_callback_arg* %10, i32 0, i32 3
  store i8* %57, i8** %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = getelementptr inbounds %struct.enum_callback_arg, %struct.enum_callback_arg* %10, i32 0, i32 2
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %60, align 8
  %61 = getelementptr inbounds %struct.enum_callback_arg, %struct.enum_callback_arg* %10, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @vid_enum_outputs_subr, align 4
  %65 = call i64 @AcpiWalkNamespace(i32 %62, i32 %63, i32 1, i32 %64, i32* null, %struct.enum_callback_arg* %10, i32* null)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @ACPI_FAILURE(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %54
  %70 = load i32, i32* %4, align 4
  %71 = call i8* @acpi_name(i32 %70)
  %72 = load i64, i64* %7, align 8
  %73 = call i8* @AcpiFormatException(i64 %72)
  %74 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %71, i8* %73)
  br label %75

75:                                               ; preds = %69, %54
  br label %76

76:                                               ; preds = %75, %48, %40, %31
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @AcpiOsFree(i32* %82)
  br label %84

84:                                               ; preds = %80, %76
  %85 = getelementptr inbounds %struct.enum_callback_arg, %struct.enum_callback_arg* %10, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  ret i32 %86
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local i64 @AcpiEvaluateObject(i32, i8*, i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @acpi_name(i32) #1

declare dso_local i8* @AcpiFormatException(i64) #1

declare dso_local i32 @ACPI_PKG_VALID(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @AcpiWalkNamespace(i32, i32, i32, i32, i32*, %struct.enum_callback_arg*, i32*) #1

declare dso_local i32 @AcpiOsFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
