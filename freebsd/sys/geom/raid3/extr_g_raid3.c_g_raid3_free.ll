; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@g_raid3_use_malloc = common dso_local global i64 0, align 8
@G_RAID3_NUM_ZONES = common dso_local global i32 0, align 4
@M_RAID3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid3_softc*, i8*, i64)* @g_raid3_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_free(%struct.g_raid3_softc* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.g_raid3_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* @g_raid3_use_malloc, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @g_raid3_zone(i64 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @G_RAID3_NUM_ZONES, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %10, %3
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @M_RAID3, align 4
  %18 = call i32 @free(i8* %16, i32 %17)
  br label %36

19:                                               ; preds = %10
  %20 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %21 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %30 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = call i32 @uma_zfree_arg(i32 %27, i8* %28, %struct.TYPE_2__* %34)
  br label %36

36:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @g_raid3_zone(i64) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @uma_zfree_arg(i32, i8*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
