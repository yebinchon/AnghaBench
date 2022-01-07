; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_setstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_setstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.g_disk_softc = type { i32, i64* }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"f5\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"f1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, %struct.g_disk_softc*)* @g_disk_setstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_disk_setstate(%struct.bio* %0, %struct.g_disk_softc* %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.g_disk_softc*, align 8
  %5 = alloca i8*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store %struct.g_disk_softc* %1, %struct.g_disk_softc** %4, align 8
  %6 = load %struct.g_disk_softc*, %struct.g_disk_softc** %4, align 8
  %7 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %6, i32 0, i32 0
  %8 = load %struct.bio*, %struct.bio** %3, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @memcpy(i32* %7, i32 %10, i32 4)
  %12 = load %struct.g_disk_softc*, %struct.g_disk_softc** %4, align 8
  %13 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load %struct.g_disk_softc*, %struct.g_disk_softc** %4, align 8
  %20 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %25 [
    i32 130, label %22
    i32 129, label %23
    i32 128, label %24
  ]

22:                                               ; preds = %18
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %26

23:                                               ; preds = %18
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %26

24:                                               ; preds = %18
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %26

25:                                               ; preds = %18
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %26

26:                                               ; preds = %25, %24, %23, %22
  %27 = load %struct.g_disk_softc*, %struct.g_disk_softc** %4, align 8
  %28 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @led_set(i64* %29, i8* %30)
  br label %32

32:                                               ; preds = %26, %2
  %33 = load %struct.bio*, %struct.bio** %3, align 8
  %34 = call i32 @g_io_deliver(%struct.bio* %33, i32 0)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @led_set(i64*, i8*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
