; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_br.c_vmbus_br_sysctl_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_br.c_vmbus_br_sysctl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.vmbus_br = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s state\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@vmbus_br_sysctl_state = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%s binary state\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"state_bin\00", align 1
@CTLTYPE_OPAQUE = common dso_local global i32 0, align 4
@vmbus_br_sysctl_state_bin = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"IU\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_br_sysctl_create(%struct.sysctl_ctx_list* %0, %struct.sysctl_oid* %1, %struct.vmbus_br* %2, i8* %3) #0 {
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.vmbus_br*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sysctl_oid*, align 8
  %10 = alloca [64 x i8], align 16
  store %struct.sysctl_ctx_list* %0, %struct.sysctl_ctx_list** %5, align 8
  store %struct.sysctl_oid* %1, %struct.sysctl_oid** %6, align 8
  store %struct.vmbus_br* %2, %struct.vmbus_br** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %12 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %13 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %12)
  %14 = load i32, i32* @OID_AUTO, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* @CTLFLAG_RD, align 4
  %17 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %11, i32 %13, i32 %14, i8* %15, i32 %18, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.sysctl_oid* %19, %struct.sysctl_oid** %9, align 8
  %20 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %21 = icmp eq %struct.sysctl_oid* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %56

23:                                               ; preds = %4
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @snprintf(i8* %24, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %28 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %29 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %28)
  %30 = load i32, i32* @OID_AUTO, align 4
  %31 = load i32, i32* @CTLTYPE_STRING, align 4
  %32 = load i32, i32* @CTLFLAG_RD, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.vmbus_br*, %struct.vmbus_br** %7, align 8
  %37 = load i32, i32* @vmbus_br_sysctl_state, align 4
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %39 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %27, i32 %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %35, %struct.vmbus_br* %36, i32 0, i32 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @snprintf(i8* %40, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  %43 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %44 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %45 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %44)
  %46 = load i32, i32* @OID_AUTO, align 4
  %47 = load i32, i32* @CTLTYPE_OPAQUE, align 4
  %48 = load i32, i32* @CTLFLAG_RD, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.vmbus_br*, %struct.vmbus_br** %7, align 8
  %53 = load i32, i32* @vmbus_br_sysctl_state_bin, align 4
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %55 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %43, i32 %45, i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %51, %struct.vmbus_br* %52, i32 0, i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.vmbus_br*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
