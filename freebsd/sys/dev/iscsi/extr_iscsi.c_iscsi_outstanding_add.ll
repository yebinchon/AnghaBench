; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_outstanding_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_outstanding_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_outstanding = type { %union.ccb*, i32, i32 }
%struct.iscsi_session = type { i32, i32 }
%struct.icl_pdu = type { i32 }
%union.ccb = type { i32 }

@iscsi_outstanding_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to allocate %zd bytes\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"icl_conn_task_setup() failed with error %d\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"initiator_task_tag 0x%x already added\00", align 1
@io_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_outstanding* (%struct.iscsi_session*, %struct.icl_pdu*, %union.ccb*, i32*)* @iscsi_outstanding_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_outstanding* @iscsi_outstanding_add(%struct.iscsi_session* %0, %struct.icl_pdu* %1, %union.ccb* %2, i32* %3) #0 {
  %5 = alloca %struct.iscsi_outstanding*, align 8
  %6 = alloca %struct.iscsi_session*, align 8
  %7 = alloca %struct.icl_pdu*, align 8
  %8 = alloca %union.ccb*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iscsi_outstanding*, align 8
  %11 = alloca i32, align 4
  store %struct.iscsi_session* %0, %struct.iscsi_session** %6, align 8
  store %struct.icl_pdu* %1, %struct.icl_pdu** %7, align 8
  store %union.ccb* %2, %union.ccb** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %13 = call i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session* %12)
  %14 = load i32, i32* @iscsi_outstanding_zone, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.iscsi_outstanding* @uma_zalloc(i32 %14, i32 %17)
  store %struct.iscsi_outstanding* %18, %struct.iscsi_outstanding** %10, align 8
  %19 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %10, align 8
  %20 = icmp eq %struct.iscsi_outstanding* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %23 = call i32 @ISCSI_SESSION_WARN(%struct.iscsi_session* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 16)
  store %struct.iscsi_outstanding* null, %struct.iscsi_outstanding** %5, align 8
  br label %69

24:                                               ; preds = %4
  %25 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %26 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.icl_pdu*, %struct.icl_pdu** %7, align 8
  %29 = load %union.ccb*, %union.ccb** %8, align 8
  %30 = bitcast %union.ccb* %29 to i32*
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %10, align 8
  %33 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %32, i32 0, i32 2
  %34 = call i32 @icl_conn_task_setup(i32 %27, %struct.icl_pdu* %28, i32* %30, i32* %31, i32* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %24
  %38 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @ISCSI_SESSION_WARN(%struct.iscsi_session* %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @iscsi_outstanding_zone, align 4
  %42 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %10, align 8
  %43 = call i32 @uma_zfree(i32 %41, %struct.iscsi_outstanding* %42)
  store %struct.iscsi_outstanding* null, %struct.iscsi_outstanding** %5, align 8
  br label %69

44:                                               ; preds = %24
  %45 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @iscsi_outstanding_find(%struct.iscsi_session* %45, i32 %47)
  %49 = icmp eq i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @KASSERT(i32 %50, i8* %54)
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %10, align 8
  %59 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %union.ccb*, %union.ccb** %8, align 8
  %61 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %10, align 8
  %62 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %61, i32 0, i32 0
  store %union.ccb* %60, %union.ccb** %62, align 8
  %63 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %64 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %63, i32 0, i32 0
  %65 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %10, align 8
  %66 = load i32, i32* @io_next, align 4
  %67 = call i32 @TAILQ_INSERT_TAIL(i32* %64, %struct.iscsi_outstanding* %65, i32 %66)
  %68 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %10, align 8
  store %struct.iscsi_outstanding* %68, %struct.iscsi_outstanding** %5, align 8
  br label %69

69:                                               ; preds = %44, %37, %21
  %70 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %5, align 8
  ret %struct.iscsi_outstanding* %70
}

declare dso_local i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session*) #1

declare dso_local %struct.iscsi_outstanding* @uma_zalloc(i32, i32) #1

declare dso_local i32 @ISCSI_SESSION_WARN(%struct.iscsi_session*, i8*, i32) #1

declare dso_local i32 @icl_conn_task_setup(i32, %struct.icl_pdu*, i32*, i32*, i32*) #1

declare dso_local i32 @uma_zfree(i32, %struct.iscsi_outstanding*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @iscsi_outstanding_find(%struct.iscsi_session*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.iscsi_outstanding*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
