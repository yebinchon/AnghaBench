; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.storvsc_softc = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32*, i32, i32, i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"data_bio_cnt\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"# of bio data block\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"data_vaddr_cnt\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"# of vaddr data block\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"data_sg_cnt\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"# of sg data block\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"send_req\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"# of request sending from this channel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @storvsc_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storvsc_sysctl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysctl_oid_list*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.storvsc_softc*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.storvsc_softc* @device_get_softc(i32 %11)
  store %struct.storvsc_softc* %12, %struct.storvsc_softc** %7, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %13)
  store %struct.sysctl_ctx_list* %14, %struct.sysctl_ctx_list** %4, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %15)
  %17 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %16)
  store %struct.sysctl_oid_list* %17, %struct.sysctl_oid_list** %3, align 8
  %18 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %19 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %20 = load i32, i32* @OID_AUTO, align 4
  %21 = load i32, i32* @CTLFLAG_RW, align 4
  %22 = load %struct.storvsc_softc*, %struct.storvsc_softc** %7, align 8
  %23 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = call i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list* %18, %struct.sysctl_oid_list* %19, i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %21, i32* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %27 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLFLAG_RW, align 4
  %30 = load %struct.storvsc_softc*, %struct.storvsc_softc** %7, align 8
  %31 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = call i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list* %26, %struct.sysctl_oid_list* %27, i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %35 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = load i32, i32* @CTLFLAG_RW, align 4
  %38 = load %struct.storvsc_softc*, %struct.storvsc_softc** %7, align 8
  %39 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list* %34, %struct.sysctl_oid_list* %35, i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %37, i32* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %42 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %43 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %44 = load i32, i32* @OID_AUTO, align 4
  %45 = load i32, i32* @CTLFLAG_RD, align 4
  %46 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %47 = or i32 %45, %46
  %48 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %42, %struct.sysctl_oid_list* %43, i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %47, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  store %struct.sysctl_oid* %48, %struct.sysctl_oid** %5, align 8
  %49 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %50 = icmp eq %struct.sysctl_oid* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %1
  br label %100

52:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %97, %52
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.storvsc_softc*, %struct.storvsc_softc** %7, align 8
  %56 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %100

59:                                               ; preds = %53
  %60 = load %struct.storvsc_softc*, %struct.storvsc_softc** %7, align 8
  %61 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @vmbus_chan_id(i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @snprintf(i8* %68, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %69)
  %71 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %72 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %73 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %72)
  %74 = load i32, i32* @OID_AUTO, align 4
  %75 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %76 = load i32, i32* @CTLFLAG_RD, align 4
  %77 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %78 = or i32 %76, %77
  %79 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %71, %struct.sysctl_oid_list* %73, i32 %74, i8* %75, i32 %78, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  store %struct.sysctl_oid* %79, %struct.sysctl_oid** %6, align 8
  %80 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %81 = icmp eq %struct.sysctl_oid* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %59
  br label %100

83:                                               ; preds = %59
  %84 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %85 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %86 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %85)
  %87 = load i32, i32* @OID_AUTO, align 4
  %88 = load i32, i32* @CTLFLAG_RD, align 4
  %89 = load %struct.storvsc_softc*, %struct.storvsc_softc** %7, align 8
  %90 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = call i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list* %84, %struct.sysctl_oid_list* %86, i32 %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %88, i32* %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  br label %97

97:                                               ; preds = %83
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %53

100:                                              ; preds = %51, %82, %53
  ret void
}

declare dso_local %struct.storvsc_softc* @device_get_softc(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @vmbus_chan_id(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
