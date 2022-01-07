; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_io_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_io_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bio = type { i32*, i64, i32, i32*, i32*, i32, i32 }

@G_T_BIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bio_flush(%s)\00", align 1
@BIO_FLUSH = common dso_local global i32 0, align 4
@BIO_ORDERED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"gflush\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_io_flush(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %5 = load i32, i32* @G_T_BIO, align 4
  %6 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %7 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @g_trace(i32 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %12, %struct.bio** %3, align 8
  %13 = load i32, i32* @BIO_FLUSH, align 4
  %14 = load %struct.bio*, %struct.bio** %3, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @BIO_ORDERED, align 4
  %17 = load %struct.bio*, %struct.bio** %3, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.bio*, %struct.bio** %3, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = load %struct.bio*, %struct.bio** %3, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 3
  store i32* null, i32** %24, align 8
  %25 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %26 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bio*, %struct.bio** %3, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.bio*, %struct.bio** %3, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.bio*, %struct.bio** %3, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load %struct.bio*, %struct.bio** %3, align 8
  %37 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %38 = call i32 @g_io_request(%struct.bio* %36, %struct.g_consumer* %37)
  %39 = load %struct.bio*, %struct.bio** %3, align 8
  %40 = call i32 @biowait(%struct.bio* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %40, i32* %4, align 4
  %41 = load %struct.bio*, %struct.bio** %3, align 8
  %42 = call i32 @g_destroy_bio(%struct.bio* %41)
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @g_trace(i32, i8*, i32) #1

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
