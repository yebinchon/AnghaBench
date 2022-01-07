; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_enable_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_enable_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CAM_TARGET_WILDCARD = common dso_local global i64 0, align 8
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@MPT_MAX_LUNS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, i64, i64)* @mpt_enable_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_enable_lun(%struct.mpt_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %17 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  br label %35

18:                                               ; preds = %11, %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @MPT_MAX_LUNS, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %67

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %4, align 4
  br label %67

33:                                               ; preds = %28, %24
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34, %15
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %37 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %42 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %47 = call i32 @mpt_fc_reset_link(%struct.mpt_softc* %46, i32 0)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %50 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %35
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %57 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %66

59:                                               ; preds = %51
  %60 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %61 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %55
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %31, %22
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @mpt_fc_reset_link(%struct.mpt_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
