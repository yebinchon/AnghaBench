; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_make_gone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_make_gone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.isp_fc = type { i32 }

@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @isp_make_gone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_make_gone(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cam_path*, align 8
  %10 = alloca %struct.isp_fc*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.isp_fc* @ISP_FC_PC(i32* %11, i32 %12)
  store %struct.isp_fc* %13, %struct.isp_fc** %10, align 8
  %14 = load %struct.isp_fc*, %struct.isp_fc** %10, align 8
  %15 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cam_sim_path(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %20 = call i64 @xpt_create_path(%struct.cam_path** %9, i32* null, i32 %17, i32 %18, i32 %19)
  %21 = load i64, i64* @CAM_REQ_CMP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* @AC_LOST_DEVICE, align 4
  %25 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %26 = call i32 @xpt_async(i32 %24, %struct.cam_path* %25, i32* null)
  %27 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %28 = call i32 @xpt_free_path(%struct.cam_path* %27)
  br label %29

29:                                               ; preds = %23, %4
  ret void
}

declare dso_local %struct.isp_fc* @ISP_FC_PC(i32*, i32) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_async(i32, %struct.cam_path*, i32*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
