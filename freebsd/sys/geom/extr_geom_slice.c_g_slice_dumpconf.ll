; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_geom = type { %struct.g_slicer* }
%struct.g_slicer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.g_consumer = type { i32 }
%struct.g_provider = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c" i %u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" o %ju\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s<index>%u</index>\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s<length>%ju</length>\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s<seclength>%ju</seclength>\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%s<offset>%ju</offset>\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%s<secoffset>%ju</secoffset>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_slice_dumpconf(%struct.sbuf* %0, i8* %1, %struct.g_geom* %2, %struct.g_consumer* %3, %struct.g_provider* %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.g_slicer*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.g_geom* %2, %struct.g_geom** %8, align 8
  store %struct.g_consumer* %3, %struct.g_consumer** %9, align 8
  store %struct.g_provider* %4, %struct.g_provider** %10, align 8
  %12 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %13 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %12, i32 0, i32 0
  %14 = load %struct.g_slicer*, %struct.g_slicer** %13, align 8
  store %struct.g_slicer* %14, %struct.g_slicer** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %5
  %18 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %19 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %20 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %24 = load %struct.g_slicer*, %struct.g_slicer** %11, align 8
  %25 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %28 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %99

35:                                               ; preds = %5
  %36 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %37 = icmp ne %struct.g_provider* %36, null
  br i1 %37, label %38, label %99

38:                                               ; preds = %35
  %39 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %42 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %40, i64 %43)
  %45 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.g_slicer*, %struct.g_slicer** %11, align 8
  %48 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %51 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %46, i32 %56)
  %58 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.g_slicer*, %struct.g_slicer** %11, align 8
  %61 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %64 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = sdiv i32 %69, 512
  %71 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %59, i32 %70)
  %72 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.g_slicer*, %struct.g_slicer** %11, align 8
  %75 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %78 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %73, i32 %83)
  %85 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load %struct.g_slicer*, %struct.g_slicer** %11, align 8
  %88 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %91 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = sdiv i32 %96, 512
  %98 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %86, i32 %97)
  br label %99

99:                                               ; preds = %17, %38, %35
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
