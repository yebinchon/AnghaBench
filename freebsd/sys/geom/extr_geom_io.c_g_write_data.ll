; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_write_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.bio = type { i8*, i64, i64, i32*, i32 }

@MAXPHYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"g_write_data(): invalid length %jd\00", align 1
@BIO_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"gwrite\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_write_data(%struct.g_consumer* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %16 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %14, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @MAXPHYS, align 8
  %24 = icmp sle i64 %22, %23
  br label %25

25:                                               ; preds = %21, %13, %4
  %26 = phi i1 [ false, %13 ], [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %8, align 8
  %29 = trunc i64 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @KASSERT(i32 %27, i8* %31)
  %33 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %33, %struct.bio** %9, align 8
  %34 = load i32, i32* @BIO_WRITE, align 4
  %35 = load %struct.bio*, %struct.bio** %9, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.bio*, %struct.bio** %9, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.bio*, %struct.bio** %9, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.bio*, %struct.bio** %9, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.bio*, %struct.bio** %9, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.bio*, %struct.bio** %9, align 8
  %49 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %50 = call i32 @g_io_request(%struct.bio* %48, %struct.g_consumer* %49)
  %51 = load %struct.bio*, %struct.bio** %9, align 8
  %52 = call i32 @biowait(%struct.bio* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %52, i32* %10, align 4
  %53 = load %struct.bio*, %struct.bio** %9, align 8
  %54 = call i32 @g_destroy_bio(%struct.bio* %53)
  %55 = load i32, i32* %10, align 4
  ret i32 %55
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bio* @g_alloc_bio(...) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

declare dso_local i32 @biowait(%struct.bio*, i8*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
