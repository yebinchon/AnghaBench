; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_device_sysctl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_device_sysctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"xenstore_path\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@XENBUS_IVAR_NODE = common dso_local global i32 0, align 4
@xenbusb_device_sysctl_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"XenStore path to device\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"xenbus_dev_type\00", align 1
@XENBUS_IVAR_TYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"XenBus device type\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"xenbus_connection_state\00", align 1
@XENBUS_IVAR_STATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"XenBus state of peer connection\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"xenbus_peer_domid\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@XENBUS_IVAR_OTHEREND_ID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Xen domain ID of peer\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"xenstore_peer_path\00", align 1
@XENBUS_IVAR_OTHEREND_PATH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"XenStore path to peer device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @xenbusb_device_sysctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenbusb_device_sysctl_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %5)
  store %struct.sysctl_ctx_list* %6, %struct.sysctl_ctx_list** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %7)
  store %struct.sysctl_oid* %8, %struct.sysctl_oid** %4, align 8
  %9 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %10 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %11 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %10)
  %12 = load i32, i32* @OID_AUTO, align 4
  %13 = load i32, i32* @CTLTYPE_STRING, align 4
  %14 = load i32, i32* @CTLFLAG_RD, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @XENBUS_IVAR_NODE, align 4
  %18 = load i32, i32* @xenbusb_device_sysctl_handler, align 4
  %19 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %9, i32 %11, i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17, i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %21 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %22 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %21)
  %23 = load i32, i32* @OID_AUTO, align 4
  %24 = load i32, i32* @CTLTYPE_STRING, align 4
  %25 = load i32, i32* @CTLFLAG_RD, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @XENBUS_IVAR_TYPE, align 4
  %29 = load i32, i32* @xenbusb_device_sysctl_handler, align 4
  %30 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %20, i32 %22, i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32 %27, i32 %28, i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %31 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %32 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %33 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %32)
  %34 = load i32, i32* @OID_AUTO, align 4
  %35 = load i32, i32* @CTLTYPE_STRING, align 4
  %36 = load i32, i32* @CTLFLAG_RD, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @XENBUS_IVAR_STATE, align 4
  %40 = load i32, i32* @xenbusb_device_sysctl_handler, align 4
  %41 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %31, i32 %33, i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %42 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %43 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %44 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %43)
  %45 = load i32, i32* @OID_AUTO, align 4
  %46 = load i32, i32* @CTLTYPE_INT, align 4
  %47 = load i32, i32* @CTLFLAG_RD, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @XENBUS_IVAR_OTHEREND_ID, align 4
  %51 = load i32, i32* @xenbusb_device_sysctl_handler, align 4
  %52 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %42, i32 %44, i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %48, i32 %49, i32 %50, i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %53 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %54 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %55 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %54)
  %56 = load i32, i32* @OID_AUTO, align 4
  %57 = load i32, i32* @CTLTYPE_STRING, align 4
  %58 = load i32, i32* @CTLFLAG_RD, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @XENBUS_IVAR_OTHEREND_PATH, align 4
  %62 = load i32, i32* @xenbusb_device_sysctl_handler, align 4
  %63 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %53, i32 %55, i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %59, i32 %60, i32 %61, i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
