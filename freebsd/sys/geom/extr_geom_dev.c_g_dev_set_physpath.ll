; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_set_physpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_set_physpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_dev_softc* }
%struct.g_dev_softc = type { %struct.cdev*, %struct.cdev* }
%struct.cdev = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"GEOM::physpath\00", align 1
@MAKEDEV_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*)* @g_dev_set_physpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_dev_set_physpath(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_dev_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca %struct.cdev*, align 8
  %9 = alloca %struct.cdev**, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %10 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %11 = call i64 @g_access(%struct.g_consumer* %10, i32 1, i32 0, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %16 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %15, i32 0, i32 0
  %17 = load %struct.g_dev_softc*, %struct.g_dev_softc** %16, align 8
  store %struct.g_dev_softc* %17, %struct.g_dev_softc** %3, align 8
  %18 = load i32, i32* @MAXPATHLEN, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call i8* @g_malloc(i32 %19, i32 %22)
  store i8* %23, i8** %4, align 8
  %24 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @g_io_getattr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %24, i32* %6, i8* %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %28 = call i64 @g_access(%struct.g_consumer* %27, i32 -1, i32 0, i32 0)
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %14
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %struct.g_dev_softc*, %struct.g_dev_softc** %3, align 8
  %37 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %36, i32 0, i32 1
  %38 = load %struct.cdev*, %struct.cdev** %37, align 8
  store %struct.cdev* %38, %struct.cdev** %7, align 8
  %39 = load %struct.g_dev_softc*, %struct.g_dev_softc** %3, align 8
  %40 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %39, i32 0, i32 0
  %41 = load %struct.cdev*, %struct.cdev** %40, align 8
  store %struct.cdev* %41, %struct.cdev** %8, align 8
  %42 = load %struct.g_dev_softc*, %struct.g_dev_softc** %3, align 8
  %43 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %42, i32 0, i32 0
  store %struct.cdev** %43, %struct.cdev*** %9, align 8
  %44 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %45 = load %struct.cdev**, %struct.cdev*** %9, align 8
  %46 = load %struct.cdev*, %struct.cdev** %7, align 8
  %47 = load %struct.cdev*, %struct.cdev** %8, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @make_dev_physpath_alias(i32 %44, %struct.cdev** %45, %struct.cdev* %46, %struct.cdev* %47, i8* %48)
  br label %63

50:                                               ; preds = %31, %14
  %51 = load %struct.g_dev_softc*, %struct.g_dev_softc** %3, align 8
  %52 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %51, i32 0, i32 0
  %53 = load %struct.cdev*, %struct.cdev** %52, align 8
  %54 = icmp ne %struct.cdev* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.g_dev_softc*, %struct.g_dev_softc** %3, align 8
  %57 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %56, i32 0, i32 0
  %58 = load %struct.cdev*, %struct.cdev** %57, align 8
  %59 = call i32 @destroy_dev(%struct.cdev* %58)
  %60 = load %struct.g_dev_softc*, %struct.g_dev_softc** %3, align 8
  %61 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %60, i32 0, i32 0
  store %struct.cdev* null, %struct.cdev** %61, align 8
  br label %62

62:                                               ; preds = %55, %50
  br label %63

63:                                               ; preds = %62, %35
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @g_free(i8* %64)
  br label %66

66:                                               ; preds = %63, %13
  ret void
}

declare dso_local i64 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i8* @g_malloc(i32, i32) #1

declare dso_local i32 @g_io_getattr(i8*, %struct.g_consumer*, i32*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @make_dev_physpath_alias(i32, %struct.cdev**, %struct.cdev*, %struct.cdev*, i8*) #1

declare dso_local i32 @destroy_dev(%struct.cdev*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
