; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_scsiio_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_scsiio_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_mpt_cmd = type { %struct.TYPE_6__*, i32, %struct.mrsas_softc* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.mrsas_softc = type { i32, %struct.mrsas_mpt_cmd** }

@.str = private unnamed_addr constant [31 x i8] c"command timeout with NULL ccb\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@MRSAS_MAX_PD = common dso_local global i32 0, align 4
@SBT_1S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mrsas_scsiio_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrsas_scsiio_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mrsas_mpt_cmd*, align 8
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %73

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.mrsas_mpt_cmd*
  store %struct.mrsas_mpt_cmd* %11, %struct.mrsas_mpt_cmd** %3, align 8
  %12 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %12, i32 0, i32 2
  %14 = load %struct.mrsas_softc*, %struct.mrsas_softc** %13, align 8
  store %struct.mrsas_softc* %14, %struct.mrsas_softc** %4, align 8
  %15 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %73

21:                                               ; preds = %9
  %22 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %22, i32 0, i32 1
  %24 = load i32, i32* @hz, align 4
  %25 = mul nsw i32 180000, %24
  %26 = sdiv i32 %25, 1000
  %27 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %28 = call i32 @callout_reset(i32* %23, i32 %26, void (i8*)* @mrsas_scsiio_timeout, %struct.mrsas_mpt_cmd* %27)
  %29 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %30 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %21
  %37 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %38 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %5, align 8
  br label %54

43:                                               ; preds = %21
  %44 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @MRSAS_MAX_PD, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = add i64 %49, %52
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %43, %36
  %55 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %56 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %55, i32 0, i32 1
  %57 = load %struct.mrsas_mpt_cmd**, %struct.mrsas_mpt_cmd*** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %57, i64 %58
  %60 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %59, align 8
  %61 = icmp eq %struct.mrsas_mpt_cmd* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %64 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %65 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %64, i32 0, i32 1
  %66 = load %struct.mrsas_mpt_cmd**, %struct.mrsas_mpt_cmd*** %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %66, i64 %67
  store %struct.mrsas_mpt_cmd* %63, %struct.mrsas_mpt_cmd** %68, align 8
  %69 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %70 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %69, i32 0, i32 0
  %71 = call i32 @mrsas_atomic_inc(i32* %70)
  br label %72

72:                                               ; preds = %62, %54
  br label %73

73:                                               ; preds = %72, %19, %8
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.mrsas_mpt_cmd*) #1

declare dso_local i32 @mrsas_atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
