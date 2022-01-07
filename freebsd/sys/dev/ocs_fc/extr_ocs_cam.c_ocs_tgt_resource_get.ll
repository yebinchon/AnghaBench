; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_tgt_resource_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_tgt_resource_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }
%struct.ccb_hdr = type { i64, i64 }

@CAM_TARGET_WILDCARD = common dso_local global i64 0, align 8
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@CAM_LUN_INVALID = common dso_local global i32 0, align 4
@OCS_MAX_LUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, %struct.ccb_hdr*, i32*)* @ocs_tgt_resource_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ocs_tgt_resource_get(%struct.TYPE_3__* %0, %struct.ccb_hdr* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.ccb_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.ccb_hdr* %1, %struct.ccb_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %11 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %14 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @CAM_LUN_INVALID, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  store i32* null, i32** %4, align 8
  br label %42

26:                                               ; preds = %19
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32* %28, i32** %4, align 8
  br label %42

29:                                               ; preds = %3
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @OCS_MAX_LUN, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %4, align 8
  br label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @CAM_LUN_INVALID, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  store i32* null, i32** %4, align 8
  br label %42

42:                                               ; preds = %39, %33, %26, %23
  %43 = load i32*, i32** %4, align 8
  ret i32* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
