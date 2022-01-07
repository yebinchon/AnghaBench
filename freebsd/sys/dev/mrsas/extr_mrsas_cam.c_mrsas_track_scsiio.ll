; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_track_scsiio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_track_scsiio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, %struct.mrsas_mpt_cmd** }
%struct.mrsas_mpt_cmd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MRSAS_MAX_PD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"IO commands pending to target id %d\0A\00", align 1
@FAIL = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrsas_softc*, i64, i32)* @mrsas_track_scsiio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_track_scsiio(%struct.mrsas_softc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrsas_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mrsas_mpt_cmd*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mrsas_mpt_cmd* null, %struct.mrsas_mpt_cmd** %9, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %70, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %13 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %73

16:                                               ; preds = %10
  %17 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %18 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %17, i32 0, i32 2
  %19 = load %struct.mrsas_mpt_cmd**, %struct.mrsas_mpt_cmd*** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %19, i64 %21
  %23 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %22, align 8
  store %struct.mrsas_mpt_cmd* %23, %struct.mrsas_mpt_cmd** %9, align 8
  %24 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %25 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %69

28:                                               ; preds = %16
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %33 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MRSAS_MAX_PD, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sub nsw i32 %37, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %31, %28
  %43 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %44 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %42
  %52 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %53 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %6, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %63 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %65)
  %67 = load i32, i32* @FAIL, align 4
  store i32 %67, i32* %4, align 4
  br label %75

68:                                               ; preds = %51, %42
  br label %69

69:                                               ; preds = %68, %16
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %10

73:                                               ; preds = %10
  %74 = load i32, i32* @SUCCESS, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %61
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @device_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
