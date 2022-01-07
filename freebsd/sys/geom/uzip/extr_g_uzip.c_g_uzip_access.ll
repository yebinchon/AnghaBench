; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip.c_g_uzip_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip.c_g_uzip_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { %struct.g_geom* }
%struct.g_geom = type { i32 }
%struct.g_consumer = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"g_uzip_access but no consumer\00", align 1
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_provider*, i32, i32, i32)* @g_uzip_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_uzip_access(%struct.g_provider* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.g_geom*, align 8
  %11 = alloca %struct.g_consumer*, align 8
  store %struct.g_provider* %0, %struct.g_provider** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %13 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %12, i32 0, i32 0
  %14 = load %struct.g_geom*, %struct.g_geom** %13, align 8
  store %struct.g_geom* %14, %struct.g_geom** %10, align 8
  %15 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %16 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %15, i32 0, i32 0
  %17 = call %struct.g_consumer* @LIST_FIRST(i32* %16)
  store %struct.g_consumer* %17, %struct.g_consumer** %11, align 8
  %18 = load %struct.g_consumer*, %struct.g_consumer** %11, align 8
  %19 = icmp ne %struct.g_consumer* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.g_consumer*, %struct.g_consumer** %11, align 8
  %23 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @EROFS, align 4
  store i32 %30, i32* %5, align 4
  br label %37

31:                                               ; preds = %4
  %32 = load %struct.g_consumer*, %struct.g_consumer** %11, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @g_access(%struct.g_consumer* %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %31, %29
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
