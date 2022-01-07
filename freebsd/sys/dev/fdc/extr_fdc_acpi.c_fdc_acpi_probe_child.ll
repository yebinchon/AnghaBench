; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc_acpi.c_fdc_acpi_probe_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc_acpi.c_fdc_acpi_probe_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_walk_ctx = type { i32, i64*, i32, i32 }
%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }

@AE_OK = common dso_local global i64 0, align 8
@ACPI_FD_PRESENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@ACPI_FDC_BUFLEN = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_FDI\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"_FDI failed - %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"invalid _FDI package\0A\00", align 1
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid type object in _FDI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32**, i32, i8*)* @fdc_acpi_probe_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fdc_acpi_probe_child(i32 %0, i32** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fdc_walk_ctx*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.fdc_walk_ctx*
  store %struct.fdc_walk_ctx* %18, %struct.fdc_walk_ctx** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %10, align 8
  %21 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 3
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* @AE_OK, align 8
  store i64 %25, i64* %5, align 8
  br label %143

26:                                               ; preds = %4
  %27 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %10, align 8
  %28 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %10, align 8
  %31 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %29, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ACPI_FD_PRESENT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %128

39:                                               ; preds = %26
  %40 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %10, align 8
  %41 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %10, align 8
  %44 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = call i32* @fdc_add_child(i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %46)
  store i32* %47, i32** %11, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %128

51:                                               ; preds = %39
  %52 = load i32**, i32*** %7, align 8
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %12, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32**, i32*** %7, align 8
  store i32* %54, i32** %55, align 8
  %56 = load i32, i32* @ACPI_FDC_BUFLEN, align 4
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @M_TEMP, align 4
  %61 = load i32, i32* @M_NOWAIT, align 4
  %62 = load i32, i32* @M_ZERO, align 4
  %63 = or i32 %61, %62
  %64 = call i32* @malloc(i32 %59, i32 %60, i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32* %64, i32** %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %51
  br label %128

70:                                               ; preds = %51
  %71 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %10, align 8
  %72 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = call i64 @ACPI_EVALUATE_OBJECT(i32 %73, i32* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.TYPE_10__* %13)
  store i64 %75, i64* %16, align 8
  %76 = load i64, i64* %16, align 8
  %77 = call i64 @ACPI_FAILURE(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %70
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* @AE_NOT_FOUND, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %10, align 8
  %85 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %16, align 8
  %88 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  br label %89

89:                                               ; preds = %83, %79
  br label %128

90:                                               ; preds = %70
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = bitcast i32* %92 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %14, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %95 = call i32 @ACPI_PKG_VALID(%struct.TYPE_9__* %94, i32 16)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %10, align 8
  %99 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i32, i8*, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %128

102:                                              ; preds = %90
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 1
  store %struct.TYPE_9__* %107, %struct.TYPE_9__** %15, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %109 = icmp eq %struct.TYPE_9__* %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %102
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %110, %102
  %117 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %10, align 8
  %118 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %128

121:                                              ; preds = %110
  %122 = load i32*, i32** %11, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @fdc_set_fdtype(i32* %122, i32 %126)
  br label %128

128:                                              ; preds = %121, %116, %97, %89, %69, %50, %38
  %129 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %10, align 8
  %130 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @M_TEMP, align 4
  %140 = call i32 @free(i32* %138, i32 %139)
  br label %141

141:                                              ; preds = %136, %128
  %142 = load i64, i64* @AE_OK, align 8
  store i64 %142, i64* %5, align 8
  br label %143

143:                                              ; preds = %141, %24
  %144 = load i64, i64* %5, align 8
  ret i64 %144
}

declare dso_local i32* @fdc_add_child(i32, i8*, i64) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i64 @ACPI_EVALUATE_OBJECT(i32, i32*, i8*, i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ACPI_PKG_VALID(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @fdc_set_fdtype(i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
