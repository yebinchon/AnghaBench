; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cam.c_mpt_rescan_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cam.c_mpt_rescan_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@XPT_SCAN_BUS = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@XPT_SCAN_LUN = common dso_local global i32 0, align 4
@CAM_FLAG_NONE = common dso_local global i32 0, align 4
@xptfd = common dso_local global i32 0, align 4
@CAMIOCOMMAND = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"mpt_rescan_bus rescan got CAM error %#x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_rescan_bus(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.ccb, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %85

16:                                               ; preds = %11, %2
  %17 = call i64 (...) @xpt_open()
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %3, align 4
  br label %85

21:                                               ; preds = %16
  %22 = call i32 @fetch_path_id(i32* %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %85

27:                                               ; preds = %21
  %28 = call i32 @bzero(%union.ccb* %6, i32 32)
  %29 = load i32, i32* %7, align 4
  %30 = bitcast %union.ccb* %6 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load i32, i32* @XPT_SCAN_BUS, align 4
  %36 = bitcast %union.ccb* %6 to %struct.TYPE_6__*
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %39 = bitcast %union.ccb* %6 to %struct.TYPE_6__*
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %42 = bitcast %union.ccb* %6 to %struct.TYPE_6__*
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  %44 = bitcast %union.ccb* %6 to %struct.TYPE_6__*
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 5000, i32* %45, align 4
  br label %55

46:                                               ; preds = %27
  %47 = load i32, i32* @XPT_SCAN_LUN, align 4
  %48 = bitcast %union.ccb* %6 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = bitcast %union.ccb* %6 to %struct.TYPE_6__*
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = bitcast %union.ccb* %6 to %struct.TYPE_6__*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %46, %34
  %56 = load i32, i32* @CAM_FLAG_NONE, align 4
  %57 = bitcast %union.ccb* %6 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = bitcast %union.ccb* %6 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 5, i32* %61, align 4
  %62 = load i32, i32* @xptfd, align 4
  %63 = load i32, i32* @CAMIOCOMMAND, align 4
  %64 = call i32 @ioctl(i32 %62, i32 %63, %union.ccb* %6)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* @errno, align 4
  store i32 %67, i32* %3, align 4
  br label %85

68:                                               ; preds = %55
  %69 = bitcast %union.ccb* %6 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CAM_STATUS_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @CAM_REQ_CMP, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = bitcast %union.ccb* %6 to %struct.TYPE_6__*
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CAM_STATUS_MASK, align 4
  %81 = and i32 %79, %80
  %82 = call i32 @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EIO, align 4
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %76, %66, %25, %19, %14
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @xpt_open(...) #1

declare dso_local i32 @fetch_path_id(i32*) #1

declare dso_local i32 @bzero(%union.ccb*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %union.ccb*) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
