; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_make_here.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_make_here.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.isp_fc = type { i32 }

@ISP_LOGWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Chan %d unable to alloc CCB for rescan\00", align 1
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to create path for rescan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @isp_make_here to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_make_here(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.ccb*, align 8
  %10 = alloca %struct.isp_fc*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.isp_fc* @ISP_FC_PC(i32* %11, i32 %12)
  store %struct.isp_fc* %13, %struct.isp_fc** %10, align 8
  %14 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %14, %union.ccb** %9, align 8
  %15 = load %union.ccb*, %union.ccb** %9, align 8
  %16 = icmp eq %union.ccb* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @ISP_LOGWARN, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %18, i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %44

22:                                               ; preds = %4
  %23 = load %union.ccb*, %union.ccb** %9, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.isp_fc*, %struct.isp_fc** %10, align 8
  %27 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cam_sim_path(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %32 = call i64 @xpt_create_path(i32* %25, i32* null, i32 %29, i32 %30, i32 %31)
  %33 = load i64, i64* @CAM_REQ_CMP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %22
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @ISP_LOGWARN, align 4
  %38 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %36, i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %union.ccb*, %union.ccb** %9, align 8
  %40 = call i32 @xpt_free_ccb(%union.ccb* %39)
  br label %44

41:                                               ; preds = %22
  %42 = load %union.ccb*, %union.ccb** %9, align 8
  %43 = call i32 @xpt_rescan(%union.ccb* %42)
  br label %44

44:                                               ; preds = %41, %35, %17
  ret void
}

declare dso_local %struct.isp_fc* @ISP_FC_PC(i32*, i32) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, ...) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
