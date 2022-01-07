; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_nvme_read_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_nvme_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_nvmeio = type { %struct.nvme_command }
%struct.nvme_command = type { i32, i32, i32, i32, i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@NVME_OPC_READ = common dso_local global i32 0, align 4
@NVME_OPC_WRITE = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_read_write(%struct.ccb_nvmeio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.ccb_nvmeio*, align 8
  %12 = alloca i32, align 4
  %13 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.nvme_command*, align 8
  store %struct.ccb_nvmeio* %0, %struct.ccb_nvmeio** %11, align 8
  store i32 %1, i32* %12, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %22 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %11, align 8
  %23 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %22, i32 0, i32 0
  store %struct.nvme_command* %23, %struct.nvme_command** %21, align 8
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %10
  %27 = load i32, i32* @NVME_OPC_READ, align 4
  br label %30

28:                                               ; preds = %10
  %29 = load i32, i32* @NVME_OPC_WRITE, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load %struct.nvme_command*, %struct.nvme_command** %21, align 8
  %33 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.nvme_command*, %struct.nvme_command** %21, align 8
  %36 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* @UINT32_MAX, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.nvme_command*, %struct.nvme_command** %21, align 8
  %41 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %16, align 4
  %43 = ashr i32 %42, 32
  %44 = load %struct.nvme_command*, %struct.nvme_command** %21, align 8
  %45 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %17, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* @UINT16_MAX, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.nvme_command*, %struct.nvme_command** %21, align 8
  %51 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  %55 = bitcast void (%struct.cam_periph*, %union.ccb*)* %54 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %30
  %59 = load i32, i32* @CAM_DIR_IN, align 4
  br label %62

60:                                               ; preds = %30
  %61 = load i32, i32* @CAM_DIR_OUT, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load i32*, i32** %18, align 8
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %20, align 4
  %67 = call i32 @cam_fill_nvmeio(%struct.ccb_nvmeio* %52, i32 %53, void (%struct.cam_periph.0*, %union.ccb.1*)* %55, i32 %63, i32* %64, i32 %65, i32 %66)
  ret void
}

declare dso_local i32 @cam_fill_nvmeio(%struct.ccb_nvmeio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
