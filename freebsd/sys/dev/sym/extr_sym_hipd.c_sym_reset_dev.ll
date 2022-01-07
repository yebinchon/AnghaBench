; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_reset_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_reset_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%union.ccb = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i64, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@SYM_CONF_MAX_TARGET = common dso_local global i64 0, align 8
@SYM_CONF_MAX_LUN = common dso_local global i64 0, align 8
@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@SEM = common dso_local global i32 0, align 4
@nc_istat = common dso_local global i32 0, align 4
@SIGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %union.ccb*)* @sym_reset_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_reset_dev(%struct.TYPE_6__* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.ccb_hdr*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load %union.ccb*, %union.ccb** %4, align 8
  %8 = bitcast %union.ccb* %7 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %8, %struct.ccb_hdr** %6, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @SYM_LOCK_ASSERT(i32 %9)
  %11 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %12 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %2
  %19 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %20 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SYM_CONF_MAX_TARGET, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SYM_CONF_MAX_LUN, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24, %18, %2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = load %union.ccb*, %union.ccb** %4, align 8
  %33 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %34 = call i32 @sym_xpt_done2(%struct.TYPE_6__* %31, %union.ccb* %32, i32 %33)
  br label %57

35:                                               ; preds = %24
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %41
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %5, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = load %union.ccb*, %union.ccb** %4, align 8
  %47 = load i32, i32* @CAM_REQ_CMP, align 4
  %48 = call i32 @sym_xpt_done2(%struct.TYPE_6__* %45, %union.ccb* %46, i32 %47)
  %49 = load i32, i32* @SEM, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @nc_istat, align 4
  %53 = load i32, i32* @SIGP, align 4
  %54 = load i32, i32* @SEM, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @OUTB(i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %35, %30
  ret void
}

declare dso_local i32 @SYM_LOCK_ASSERT(i32) #1

declare dso_local i32 @sym_xpt_done2(%struct.TYPE_6__*, %union.ccb*, i32) #1

declare dso_local i32 @OUTB(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
