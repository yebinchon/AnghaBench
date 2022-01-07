; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_rescan_drives.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_rescan_drives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.amr_softc = type { %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@AMR_STATE_REMAP_LD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"idle controller\0A\00", align 1
@AMR_STATE_SHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"flushing cache...\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@AMR_MAXLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdev*)* @amr_rescan_drives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amr_rescan_drives(%struct.cdev* %0) #0 {
  %2 = alloca %struct.cdev*, align 8
  %3 = alloca %struct.amr_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %2, align 8
  %6 = load %struct.cdev*, %struct.cdev** %2, align 8
  %7 = getelementptr inbounds %struct.cdev, %struct.cdev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.amr_softc*
  store %struct.amr_softc* %9, %struct.amr_softc** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @AMR_STATE_REMAP_LD, align 4
  %11 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %12 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %20, %1
  %16 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %17 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %22 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %26 = call i32 @amr_done(%struct.amr_softc* %25)
  br label %15

27:                                               ; preds = %15
  %28 = load i32, i32* @AMR_STATE_SHUTDOWN, align 4
  %29 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %30 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %34 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %38 = call i64 @amr_flush(%struct.amr_softc* %37)
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %42 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %81, %27
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @AMR_MAXLD, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %84

47:                                               ; preds = %43
  %48 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %49 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %47
  %58 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %59 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %62 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @device_delete_child(i32 %60, i64 %68)
  store i32 %69, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %85

72:                                               ; preds = %57
  %73 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %74 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %72, %47
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %43

84:                                               ; preds = %43
  br label %85

85:                                               ; preds = %84, %71
  %86 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %87 = call i32 @amr_startup(%struct.amr_softc* %86)
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @amr_done(%struct.amr_softc*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @amr_flush(%struct.amr_softc*) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @amr_startup(%struct.amr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
