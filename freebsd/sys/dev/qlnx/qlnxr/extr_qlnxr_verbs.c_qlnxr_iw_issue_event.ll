; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_issue_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_issue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_iwarp_cm_event_params = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.qlnxr_iw_ep = type { %struct.TYPE_4__*, %struct.qlnxr_dev* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)* }
%struct.iw_cm_event = type { i32, i32, i32, i8*, i32, i32 }
%struct.qlnxr_dev = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"private_data_len=[%d] \0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"event=[%d] %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"status=[%d] \0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ep->cm_id == NULL \0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ep == NULL \0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ecore_iwarp_cm_event_params*, i32, i8*)* @qlnxr_iw_issue_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_iw_issue_event(i8* %0, %struct.ecore_iwarp_cm_event_params* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ecore_iwarp_cm_event_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qlnxr_iw_ep*, align 8
  %10 = alloca %struct.qlnxr_dev*, align 8
  %11 = alloca %struct.iw_cm_event, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.ecore_iwarp_cm_event_params* %1, %struct.ecore_iwarp_cm_event_params** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.qlnxr_iw_ep*
  store %struct.qlnxr_iw_ep* %14, %struct.qlnxr_iw_ep** %9, align 8
  %15 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %9, align 8
  %16 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %15, i32 0, i32 1
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %16, align 8
  store %struct.qlnxr_dev* %17, %struct.qlnxr_dev** %10, align 8
  %18 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %19 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @memset(%struct.iw_cm_event* %11, i32 0, i32 32)
  %24 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %6, align 8
  %25 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %11, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %11, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %6, align 8
  %31 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %4
  %35 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %6, align 8
  %36 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %11, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %6, align 8
  %42 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %11, i32 0, i32 3
  store i8* %46, i8** %47, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %11, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %34, %4
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %11, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %55, i8* %56)
  %58 = load i32*, i32** %12, align 8
  %59 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %11, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %9, align 8
  %63 = icmp ne %struct.qlnxr_iw_ep* %62, null
  br i1 %63, label %64, label %83

64:                                               ; preds = %52
  %65 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %9, align 8
  %66 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = icmp ne %struct.TYPE_4__* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %9, align 8
  %71 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)** %73, align 8
  %75 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %9, align 8
  %76 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = call i32 %74(%struct.TYPE_4__* %77, %struct.iw_cm_event* %11)
  br label %82

79:                                               ; preds = %64
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @QL_DPRINT11(i32* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %69
  br label %86

83:                                               ; preds = %52
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @QL_DPRINT11(i32* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %82
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @memset(%struct.iw_cm_event*, i32, i32) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
