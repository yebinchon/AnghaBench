; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_scsi_del_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_scsi_del_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.ocs_softc* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.ocs_softc = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"OCS is NULL \0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"FCP is NULL \0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"target is invalid\0A\00", align 1
@OCS_TGT_STATE_LOST = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ocs_ldt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_scsi_del_target(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocs_softc*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.ocs_softc*, %struct.ocs_softc** %11, align 8
  store %struct.ocs_softc* %12, %struct.ocs_softc** %6, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  %13 = load %struct.ocs_softc*, %struct.ocs_softc** %6, align 8
  %14 = icmp eq %struct.ocs_softc* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.ocs_softc*, %struct.ocs_softc** %6, align 8
  %17 = call i32 @ocs_log_err(%struct.ocs_softc* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %73

18:                                               ; preds = %2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %7, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = icmp eq %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.ocs_softc*, %struct.ocs_softc** %6, align 8
  %28 = call i32 @ocs_log_err(%struct.ocs_softc* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %73

29:                                               ; preds = %18
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = call i32 @ocs_tgt_find(%struct.TYPE_12__* %30, %struct.TYPE_11__* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.ocs_softc*, %struct.ocs_softc** %6, align 8
  %37 = call i32 @ocs_log_err(%struct.ocs_softc* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %73

38:                                               ; preds = %29
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i64 %43
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %8, align 8
  %45 = load %struct.ocs_softc*, %struct.ocs_softc** %6, align 8
  %46 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %38
  %50 = load %struct.ocs_softc*, %struct.ocs_softc** %6, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @ocs_delete_target(%struct.ocs_softc* %50, %struct.TYPE_12__* %51, i32 %52)
  br label %72

54:                                               ; preds = %38
  %55 = load i32, i32* @OCS_TGT_STATE_LOST, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32 30, i32* %59, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = call i32 @callout_active(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %54
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* @hz, align 4
  %68 = load i32, i32* @ocs_ldt, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = call i32 @callout_reset(i32* %66, i32 %67, i32 %68, %struct.TYPE_12__* %69)
  br label %71

71:                                               ; preds = %64, %54
  br label %72

72:                                               ; preds = %71, %49
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %35, %26, %15
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @ocs_log_err(%struct.ocs_softc*, i8*) #1

declare dso_local i32 @ocs_tgt_find(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @ocs_delete_target(%struct.ocs_softc*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @callout_active(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
