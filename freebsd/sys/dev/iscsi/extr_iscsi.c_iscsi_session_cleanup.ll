; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_session_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_session_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32, i32*, i32*, i32*, i32 }
%struct.icl_pdu = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"freezing\00", align 1
@ip_next = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"deregistering SIM\00", align 1
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_session*, i32)* @iscsi_session_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_session_cleanup(%struct.iscsi_session* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.icl_pdu*, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %7 = call i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session* %6)
  %8 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %9 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %14 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %19 = call i32 @ISCSI_SESSION_DEBUG(%struct.iscsi_session* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %21 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @xpt_freeze_simq(i32* %22, i32 1)
  %24 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %25 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %17, %12, %2
  %27 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %28 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %27, i32 0, i32 4
  %29 = call i32 @STAILQ_EMPTY(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %33 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @xpt_release_simq(i32* %34, i32 1)
  br label %36

36:                                               ; preds = %31, %26
  br label %37

37:                                               ; preds = %42, %36
  %38 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %39 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %38, i32 0, i32 4
  %40 = call %struct.icl_pdu* @STAILQ_FIRST(i32* %39)
  store %struct.icl_pdu* %40, %struct.icl_pdu** %5, align 8
  %41 = icmp ne %struct.icl_pdu* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %44 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %43, i32 0, i32 4
  %45 = load i32, i32* @ip_next, align 4
  %46 = call i32 @STAILQ_REMOVE_HEAD(i32* %44, i32 %45)
  %47 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %48 = call i32 @icl_pdu_free(%struct.icl_pdu* %47)
  br label %37

49:                                               ; preds = %37
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %54 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %55 = call i32 @iscsi_session_terminate_tasks(%struct.iscsi_session* %53, i32 %54)
  br label %105

56:                                               ; preds = %49
  %57 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %58 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %59 = call i32 @iscsi_session_terminate_tasks(%struct.iscsi_session* %57, i32 %58)
  %60 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %61 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %105

65:                                               ; preds = %56
  %66 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %67 = call i32 @ISCSI_SESSION_DEBUG(%struct.iscsi_session* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @AC_LOST_DEVICE, align 4
  %69 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %70 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @xpt_async(i32 %68, i32* %71, i32* null)
  %73 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %74 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %65
  %78 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %79 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @xpt_release_simq(i32* %80, i32 1)
  %82 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %83 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %77, %65
  %85 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %86 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @xpt_free_path(i32* %87)
  %89 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %90 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %89, i32 0, i32 3
  store i32* null, i32** %90, align 8
  %91 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %92 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @cam_sim_path(i32* %93)
  %95 = call i32 @xpt_bus_deregister(i32 %94)
  %96 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %97 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @TRUE, align 4
  %100 = call i32 @cam_sim_free(i32* %98, i32 %99)
  %101 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %102 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %101, i32 0, i32 2
  store i32* null, i32** %102, align 8
  %103 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %104 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %103, i32 0, i32 1
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %84, %64, %52
  ret void
}

declare dso_local i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session*) #1

declare dso_local i32 @ISCSI_SESSION_DEBUG(%struct.iscsi_session*, i8*) #1

declare dso_local i32 @xpt_freeze_simq(i32*, i32) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @xpt_release_simq(i32*, i32) #1

declare dso_local %struct.icl_pdu* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @icl_pdu_free(%struct.icl_pdu*) #1

declare dso_local i32 @iscsi_session_terminate_tasks(%struct.iscsi_session*, i32) #1

declare dso_local i32 @xpt_async(i32, i32*, i32*) #1

declare dso_local i32 @xpt_free_path(i32*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
