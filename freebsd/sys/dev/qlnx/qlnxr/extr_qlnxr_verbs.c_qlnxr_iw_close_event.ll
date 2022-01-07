; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_close_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_close_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_iwarp_cm_event_params = type { i32 }
%struct.qlnxr_iw_ep = type { %struct.TYPE_2__*, %struct.qlnxr_dev* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }
%struct.qlnxr_dev = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IW_CM_EVENT_CLOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"IW_CM_EVENT_EVENT_CLOSE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ecore_iwarp_cm_event_params*)* @qlnxr_iw_close_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_iw_close_event(i8* %0, %struct.ecore_iwarp_cm_event_params* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ecore_iwarp_cm_event_params*, align 8
  %5 = alloca %struct.qlnxr_iw_ep*, align 8
  %6 = alloca %struct.qlnxr_dev*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ecore_iwarp_cm_event_params* %1, %struct.ecore_iwarp_cm_event_params** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.qlnxr_iw_ep*
  store %struct.qlnxr_iw_ep* %9, %struct.qlnxr_iw_ep** %5, align 8
  %10 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %5, align 8
  %11 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %10, i32 0, i32 1
  %12 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %11, align 8
  store %struct.qlnxr_dev* %12, %struct.qlnxr_dev** %6, align 8
  %13 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %14 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @QL_DPRINT12(i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %5, align 8
  %19 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %4, align 8
  %25 = load i32, i32* @IW_CM_EVENT_CLOSE, align 4
  %26 = call i32 @qlnxr_iw_issue_event(i8* %23, %struct.ecore_iwarp_cm_event_params* %24, i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %5, align 8
  %28 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %30, align 8
  %32 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %5, align 8
  %33 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 %31(%struct.TYPE_2__* %34)
  %36 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %5, align 8
  %37 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %36, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %37, align 8
  br label %38

38:                                               ; preds = %22, %2
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @QL_DPRINT12(i32* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*) #1

declare dso_local i32 @qlnxr_iw_issue_event(i8*, %struct.ecore_iwarp_cm_event_params*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
