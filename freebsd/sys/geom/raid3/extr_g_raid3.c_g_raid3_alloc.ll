; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@g_raid3_use_malloc = common dso_local global i64 0, align 8
@G_RAID3_NUM_ZONES = common dso_local global i32 0, align 4
@M_RAID3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.g_raid3_softc*, i64, i32)* @g_raid3_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @g_raid3_alloc(%struct.g_raid3_softc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.g_raid3_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @g_raid3_use_malloc, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @g_raid3_zone(i64 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @G_RAID3_NUM_ZONES, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %3
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* @M_RAID3, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @malloc(i64 %17, i32 %18, i32 %19)
  store i8* %20, i8** %7, align 8
  br label %60

21:                                               ; preds = %11
  %22 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %23 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %31 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = load i32, i32* %6, align 4
  %37 = call i8* @uma_zalloc_arg(i32 %29, %struct.TYPE_2__* %35, i32 %36)
  store i8* %37, i8** %7, align 8
  %38 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %39 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %21
  %50 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %51 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %49, %21
  br label %60

60:                                               ; preds = %59, %16
  %61 = load i8*, i8** %7, align 8
  ret i8* %61
}

declare dso_local i32 @g_raid3_zone(i64) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i8* @uma_zalloc_arg(i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
