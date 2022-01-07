; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_disable_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_disable_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i64, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@CAM_TARGET_WILDCARD = common dso_local global i64 0, align 8
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@MPT_MAX_LUNS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, i64, i64)* @mpt_disable_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_disable_lun(%struct.mpt_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %18 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  br label %36

19:                                               ; preds = %12, %3
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @MPT_MAX_LUNS, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %94

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %4, align 4
  br label %94

34:                                               ; preds = %29, %25
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35, %16
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %42 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %51

44:                                               ; preds = %36
  %45 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %46 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %44, %40
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %69, %51
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @MPT_MAX_LUNS, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %59 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %72

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %52

72:                                               ; preds = %67, %52
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @MPT_MAX_LUNS, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %79 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %84 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %89 = call i32 @mpt_fc_reset_link(%struct.mpt_softc* %88, i32 0)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %92 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %77, %72
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %32, %23
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @mpt_fc_reset_link(%struct.mpt_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
