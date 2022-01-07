; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_target_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_target_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_dev = type { i64, i32, i32, %struct.sbp_target* }
%struct.sbp_target = type { i32, %struct.sbp_dev**, i32 }

@SBP_DEV_DEAD = common dso_local global i64 0, align 8
@SBP_DEV_RESET = common dso_local global i64 0, align 8
@CAM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@SBP_DEV_LOGIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"target reset\0A\00", align 1
@ORB_FUN_RST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"reset start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_dev*, i32)* @sbp_target_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_target_reset(%struct.sbp_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.sbp_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbp_target*, align 8
  %7 = alloca %struct.sbp_dev*, align 8
  store %struct.sbp_dev* %0, %struct.sbp_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %9 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %8, i32 0, i32 3
  %10 = load %struct.sbp_target*, %struct.sbp_target** %9, align 8
  store %struct.sbp_target* %10, %struct.sbp_target** %6, align 8
  %11 = load %struct.sbp_target*, %struct.sbp_target** %6, align 8
  %12 = getelementptr inbounds %struct.sbp_target, %struct.sbp_target* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @SBP_LOCK_ASSERT(i32 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %65, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.sbp_target*, %struct.sbp_target** %6, align 8
  %18 = getelementptr inbounds %struct.sbp_target, %struct.sbp_target* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %15
  %22 = load %struct.sbp_target*, %struct.sbp_target** %6, align 8
  %23 = getelementptr inbounds %struct.sbp_target, %struct.sbp_target* %22, i32 0, i32 1
  %24 = load %struct.sbp_dev**, %struct.sbp_dev*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sbp_dev*, %struct.sbp_dev** %24, i64 %26
  %28 = load %struct.sbp_dev*, %struct.sbp_dev** %27, align 8
  store %struct.sbp_dev* %28, %struct.sbp_dev** %7, align 8
  %29 = load %struct.sbp_dev*, %struct.sbp_dev** %7, align 8
  %30 = icmp eq %struct.sbp_dev* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %65

32:                                               ; preds = %21
  %33 = load %struct.sbp_dev*, %struct.sbp_dev** %7, align 8
  %34 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SBP_DEV_DEAD, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %65

39:                                               ; preds = %32
  %40 = load %struct.sbp_dev*, %struct.sbp_dev** %7, align 8
  %41 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SBP_DEV_RESET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %65

46:                                               ; preds = %39
  %47 = load %struct.sbp_dev*, %struct.sbp_dev** %7, align 8
  %48 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @xpt_freeze_devq(i32 %49, i32 1)
  %51 = load %struct.sbp_dev*, %struct.sbp_dev** %7, align 8
  %52 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.sbp_dev*, %struct.sbp_dev** %7, align 8
  %56 = load i32, i32* @CAM_CMD_TIMEOUT, align 4
  %57 = call i32 @sbp_abort_all_ocbs(%struct.sbp_dev* %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = load i64, i64* @SBP_DEV_LOGIN, align 8
  %62 = load %struct.sbp_dev*, %struct.sbp_dev** %7, align 8
  %63 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %46
  br label %65

65:                                               ; preds = %64, %45, %38, %31
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %15

68:                                               ; preds = %15
  %69 = load i32, i32* %4, align 4
  switch i32 %69, label %79 [
    i32 1, label %70
    i32 2, label %75
  ]

70:                                               ; preds = %68
  %71 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %73 = load i32, i32* @ORB_FUN_RST, align 4
  %74 = call i32 @sbp_mgm_orb(%struct.sbp_dev* %72, i32 %73, i32* null)
  br label %79

75:                                               ; preds = %68
  %76 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %78 = call i32 @sbp_reset_start(%struct.sbp_dev* %77)
  br label %79

79:                                               ; preds = %68, %75, %70
  ret void
}

declare dso_local i32 @SBP_LOCK_ASSERT(i32) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @sbp_abort_all_ocbs(%struct.sbp_dev*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sbp_mgm_orb(%struct.sbp_dev*, i32, i32*) #1

declare dso_local i32 @sbp_reset_start(%struct.sbp_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
