; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_name_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_name_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { %struct.TYPE_2__**, i32* }
%struct.TYPE_2__ = type { i64* }
%struct.cam_periph = type { i8*, i32 }
%struct.cam_path = type { i32 }

@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*, i32, i32)* @ciss_name_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_name_device(%struct.ciss_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ciss_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cam_periph*, align 8
  %9 = alloca %struct.cam_path*, align 8
  %10 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @CISS_IS_PHYSICAL(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

15:                                               ; preds = %3
  %16 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %17 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cam_sim_path(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @xpt_create_path(%struct.cam_path** %9, i32* null, i32 %23, i32 %24, i32 0)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @CAM_REQ_CMP, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %15
  %30 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %31 = call i32 @xpt_path_lock(%struct.cam_path* %30)
  %32 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %33 = call %struct.cam_periph* @cam_periph_find(%struct.cam_path* %32, i32* null)
  store %struct.cam_periph* %33, %struct.cam_periph** %8, align 8
  %34 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %35 = call i32 @xpt_path_unlock(%struct.cam_path* %34)
  %36 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %37 = call i32 @xpt_free_path(%struct.cam_path* %36)
  %38 = load %struct.cam_periph*, %struct.cam_periph** %8, align 8
  %39 = icmp ne %struct.cam_periph* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %29
  %41 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 %45
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.cam_periph*, %struct.cam_periph** %8, align 8
  %54 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.cam_periph*, %struct.cam_periph** %8, align 8
  %57 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @sprintf(i64* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %55, i32 %58)
  store i32 0, i32* %4, align 4
  br label %76

60:                                               ; preds = %29
  br label %61

61:                                               ; preds = %60, %15
  %62 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %63 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @ENOENT, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %61, %40, %14
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @CISS_IS_PHYSICAL(i32) #1

declare dso_local i32 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_path_lock(%struct.cam_path*) #1

declare dso_local %struct.cam_periph* @cam_periph_find(%struct.cam_path*, i32*) #1

declare dso_local i32 @xpt_path_unlock(%struct.cam_path*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local i32 @sprintf(i64*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
