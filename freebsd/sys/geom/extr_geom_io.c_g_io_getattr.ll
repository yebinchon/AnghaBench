; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_io_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_io_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { i32 }
%struct.bio = type { i8*, i32, i32, i8*, i32*, i32 }

@G_T_BIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bio_getattr(%s)\00", align 1
@BIO_GETATTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ggetattr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_io_getattr(i8* %0, %struct.g_consumer* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @G_T_BIO, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @g_trace(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %14, %struct.bio** %9, align 8
  %15 = load i32, i32* @BIO_GETATTR, align 4
  %16 = load %struct.bio*, %struct.bio** %9, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bio*, %struct.bio** %9, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.bio*, %struct.bio** %9, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bio*, %struct.bio** %9, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.bio*, %struct.bio** %9, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load %struct.bio*, %struct.bio** %9, align 8
  %31 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %32 = call i32 @g_io_request(%struct.bio* %30, %struct.g_consumer* %31)
  %33 = load %struct.bio*, %struct.bio** %9, align 8
  %34 = call i32 @biowait(%struct.bio* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %10, align 4
  %35 = load %struct.bio*, %struct.bio** %9, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.bio*, %struct.bio** %9, align 8
  %40 = call i32 @g_destroy_bio(%struct.bio* %39)
  %41 = load i32, i32* %10, align 4
  ret i32 %41
}

declare dso_local i32 @g_trace(i32, i8*, i8*) #1

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
