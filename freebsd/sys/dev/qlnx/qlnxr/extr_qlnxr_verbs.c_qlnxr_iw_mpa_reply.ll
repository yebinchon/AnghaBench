; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_mpa_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_mpa_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_iwarp_cm_event_params = type { i32 }
%struct.qlnxr_iw_ep = type { %struct.qlnxr_dev* }
%struct.qlnxr_dev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_iwarp_send_rtr_in = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"exit rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ecore_iwarp_cm_event_params*)* @qlnxr_iw_mpa_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_iw_mpa_reply(i8* %0, %struct.ecore_iwarp_cm_event_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ecore_iwarp_cm_event_params*, align 8
  %6 = alloca %struct.qlnxr_iw_ep*, align 8
  %7 = alloca %struct.qlnxr_dev*, align 8
  %8 = alloca %struct.ecore_iwarp_send_rtr_in, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ecore_iwarp_cm_event_params* %1, %struct.ecore_iwarp_cm_event_params** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.qlnxr_iw_ep*
  store %struct.qlnxr_iw_ep* %12, %struct.qlnxr_iw_ep** %6, align 8
  %13 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %6, align 8
  %14 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %13, i32 0, i32 0
  %15 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %14, align 8
  store %struct.qlnxr_dev* %15, %struct.qlnxr_dev** %7, align 8
  %16 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %17 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %10, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_5__* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %46

32:                                               ; preds = %2
  %33 = call i32 @bzero(%struct.ecore_iwarp_send_rtr_in* %8, i32 4)
  %34 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %5, align 8
  %35 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ecore_iwarp_send_rtr_in, %struct.ecore_iwarp_send_rtr_in* %8, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %39 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ecore_iwarp_send_rtr(i32 %40, %struct.ecore_iwarp_send_rtr_in* %8)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_5__* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %32, %29
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @bzero(%struct.ecore_iwarp_send_rtr_in*, i32) #1

declare dso_local i32 @ecore_iwarp_send_rtr(i32, %struct.ecore_iwarp_send_rtr_in*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
