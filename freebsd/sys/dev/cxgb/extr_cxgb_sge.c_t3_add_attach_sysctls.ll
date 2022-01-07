; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_add_attach_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_add_attach_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"firmware_version\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"firmware version\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"hw_revision\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"chip model\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"port_types\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"type of ports\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"enable_debug\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@cxgb_debug = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"enable verbose debugging output\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"tunq_coalesce\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"#tunneled packets freed\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"txq_overrun\00", align 1
@txq_fills = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"#times txq overrun\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"core_clock\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"core clock frequency (in KHz)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_add_attach_sysctls(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %7)
  store %struct.sysctl_ctx_list* %8, %struct.sysctl_ctx_list** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @device_get_sysctl_tree(i32 %11)
  %13 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %12)
  store %struct.sysctl_oid_list* %13, %struct.sysctl_oid_list** %4, align 8
  %14 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %15 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %16 = load i32, i32* @OID_AUTO, align 4
  %17 = load i32, i32* @CTLFLAG_RD, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %14, %struct.sysctl_oid_list* %15, i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %23 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %24 = load i32, i32* @OID_AUTO, align 4
  %25 = load i32, i32* @CTLFLAG_RD, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %22, %struct.sysctl_oid_list* %23, i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32* %28, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %31 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = load i32, i32* @CTLFLAG_RD, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %30, %struct.sysctl_oid_list* %31, i32 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %33, i32 %36, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %38 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %39 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %40 = load i32, i32* @OID_AUTO, align 4
  %41 = load i32, i32* @CTLFLAG_RW, align 4
  %42 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %38, %struct.sysctl_oid_list* %39, i32 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %41, i32* @cxgb_debug, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %43 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %44 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %45 = load i32, i32* @OID_AUTO, align 4
  %46 = load i32, i32* @CTLFLAG_RD, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %43, %struct.sysctl_oid_list* %44, i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %46, i32* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %50 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %51 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %52 = load i32, i32* @OID_AUTO, align 4
  %53 = load i32, i32* @CTLFLAG_RD, align 4
  %54 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %50, %struct.sysctl_oid_list* %51, i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %53, i32* @txq_fills, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %55 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %56 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %57 = load i32, i32* @OID_AUTO, align 4
  %58 = load i32, i32* @CTLFLAG_RD, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %55, %struct.sysctl_oid_list* %56, i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %58, i32* %62, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
