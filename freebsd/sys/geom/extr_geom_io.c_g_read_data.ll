; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.bio = type { i8*, i64, i64, i32*, i32 }

@MAXPHYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"g_read_data(): invalid length %jd\00", align 1
@BIO_READ = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"gread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @g_read_data(%struct.g_consumer* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %17 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %15, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @MAXPHYS, align 8
  %25 = icmp sle i64 %23, %24
  br label %26

26:                                               ; preds = %22, %14, %4
  %27 = phi i1 [ false, %14 ], [ false, %4 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %7, align 8
  %30 = trunc i64 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %28, i8* %32)
  %34 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %34, %struct.bio** %9, align 8
  %35 = load i32, i32* @BIO_READ, align 4
  %36 = load %struct.bio*, %struct.bio** %9, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.bio*, %struct.bio** %9, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.bio*, %struct.bio** %9, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.bio*, %struct.bio** %9, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* @M_WAITOK, align 4
  %48 = call i8* @g_malloc(i64 %46, i32 %47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.bio*, %struct.bio** %9, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.bio*, %struct.bio** %9, align 8
  %53 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %54 = call i32 @g_io_request(%struct.bio* %52, %struct.g_consumer* %53)
  %55 = load %struct.bio*, %struct.bio** %9, align 8
  %56 = call i32 @biowait(%struct.bio* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %56, i32* %11, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %26
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %26
  %63 = load %struct.bio*, %struct.bio** %9, align 8
  %64 = call i32 @g_destroy_bio(%struct.bio* %63)
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @g_free(i8* %68)
  store i8* null, i8** %10, align 8
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i8*, i8** %10, align 8
  ret i8* %71
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bio* @g_alloc_bio(...) #1

declare dso_local i8* @g_malloc(i64, i32) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

declare dso_local i32 @biowait(%struct.bio*, i8*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
