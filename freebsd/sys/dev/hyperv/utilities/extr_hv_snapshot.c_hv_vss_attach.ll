; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_hv_snapshot.c_hv_vss_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_hv_snapshot.c_hv_vss_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_7__*, %struct.TYPE_5__, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }

@.str = private unnamed_addr constant [21 x i8] c"hv_vss pending mutex\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"hv_vss_log\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@hv_vss_log = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Hyperv VSS service log level\00", align 1
@hv_vss_process_request = common dso_local global i32 0, align 4
@MAKEDEV_CHECKNAME = common dso_local global i32 0, align 4
@MAKEDEV_WAITOK = common dso_local global i32 0, align 4
@hv_vss_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@FS_VSS_DEV_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Fail to create '%s': %d\0A\00", align 1
@hv_appvss_cdevsw = common dso_local global i32 0, align 4
@APP_VSS_DEV_NAME = common dso_local global i32 0, align 4
@hv_vss_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hv_vss_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_vss_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_ctx_list*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @device_get_softc(i32 %8)
  %10 = inttoptr i64 %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %7, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 5
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %18)
  store %struct.sysctl_ctx_list* %19, %struct.sysctl_ctx_list** %6, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_get_sysctl_tree(i32 %20)
  %22 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %21)
  store %struct.sysctl_oid_list* %22, %struct.sysctl_oid_list** %5, align 8
  %23 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %24 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %25 = load i32, i32* @OID_AUTO, align 4
  %26 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %27 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %23, %struct.sysctl_oid_list* %24, i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32* @hv_vss_log, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load i32, i32* @hv_vss_process_request, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = call i32 @TASK_INIT(i32* %29, i32 0, i32 %30, %struct.TYPE_6__* %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @hv_vss_init_send_receive_queue(i32 %33)
  %35 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %36 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load i32, i32* @UID_ROOT, align 4
  %41 = load i32, i32* @GID_WHEEL, align 4
  %42 = load i32, i32* @FS_VSS_DEV_NAME, align 4
  %43 = call i32 @make_dev_p(i32 %37, %struct.TYPE_7__** %39, i32* @hv_vss_cdevsw, i32 0, i32 %40, i32 %41, i32 416, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %1
  %47 = load i32, i32* @FS_VSS_DEV_NAME, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @hv_vss_log_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %92

51:                                               ; preds = %1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %57, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %61, align 8
  %62 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %63 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* @UID_ROOT, align 4
  %68 = load i32, i32* @GID_WHEEL, align 4
  %69 = load i32, i32* @APP_VSS_DEV_NAME, align 4
  %70 = call i32 @make_dev_p(i32 %64, %struct.TYPE_7__** %66, i32* @hv_appvss_cdevsw, i32 0, i32 %67, i32 %68, i32 416, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %51
  %74 = load i32, i32* @APP_VSS_DEV_NAME, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @hv_vss_log_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %92

78:                                               ; preds = %51
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** %88, align 8
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @hv_vss_callback, align 4
  %91 = call i32 @vmbus_ic_attach(i32 %89, i32 %90)
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %78, %73, %46
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @hv_vss_init_send_receive_queue(i32) #1

declare dso_local i32 @make_dev_p(i32, %struct.TYPE_7__**, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hv_vss_log_info(i8*, i32, i32) #1

declare dso_local i32 @vmbus_ic_attach(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
