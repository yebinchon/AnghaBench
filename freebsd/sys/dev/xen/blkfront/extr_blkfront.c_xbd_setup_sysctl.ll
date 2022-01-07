; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_setup_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_setup_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbd_softc = type { i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"max_requests\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"maximum outstanding requests (negotiated)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"max_request_segments\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"maximum number of pages per requests (negotiated)\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"max_request_size\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"maximum size in bytes of a request (negotiated)\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ring_pages\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"communication channel pages (negotiated)\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@xbd_sysctl_features = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"protocol features (negotiated)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbd_softc*)* @xbd_setup_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbd_setup_sysctl(%struct.xbd_softc* %0) #0 {
  %2 = alloca %struct.xbd_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.xbd_softc* %0, %struct.xbd_softc** %2, align 8
  store %struct.sysctl_ctx_list* null, %struct.sysctl_ctx_list** %3, align 8
  store %struct.sysctl_oid* null, %struct.sysctl_oid** %4, align 8
  %6 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %7 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %3, align 8
  %10 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %11 = icmp eq %struct.sysctl_ctx_list* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %61

13:                                               ; preds = %1
  %14 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %15 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %16)
  store %struct.sysctl_oid* %17, %struct.sysctl_oid** %4, align 8
  %18 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %19 = icmp eq %struct.sysctl_oid* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %61

21:                                               ; preds = %13
  %22 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %23 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %22)
  store %struct.sysctl_oid_list* %23, %struct.sysctl_oid_list** %5, align 8
  %24 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %25 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %26 = load i32, i32* @OID_AUTO, align 4
  %27 = load i32, i32* @CTLFLAG_RD, align 4
  %28 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %29 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %28, i32 0, i32 3
  %30 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %24, %struct.sysctl_oid_list* %25, i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %27, i32* %29, i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %32 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %33 = load i32, i32* @OID_AUTO, align 4
  %34 = load i32, i32* @CTLFLAG_RD, align 4
  %35 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %36 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %35, i32 0, i32 2
  %37 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %31, %struct.sysctl_oid_list* %32, i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32* %36, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %39 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %40 = load i32, i32* @OID_AUTO, align 4
  %41 = load i32, i32* @CTLFLAG_RD, align 4
  %42 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %43 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %42, i32 0, i32 1
  %44 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %38, %struct.sysctl_oid_list* %39, i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %41, i32* %43, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %45 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %46 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %47 = load i32, i32* @OID_AUTO, align 4
  %48 = load i32, i32* @CTLFLAG_RD, align 4
  %49 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %50 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %49, i32 0, i32 0
  %51 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %45, %struct.sysctl_oid_list* %46, i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %48, i32* %50, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %52 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %53 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLTYPE_STRING, align 4
  %56 = load i32, i32* @CTLFLAG_RD, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %59 = load i32, i32* @xbd_sysctl_features, align 4
  %60 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %52, %struct.sysctl_oid_list* %53, i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %57, %struct.xbd_softc* %58, i32 0, i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %61

61:                                               ; preds = %21, %20, %12
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.xbd_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
