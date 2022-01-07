; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_hv_kvp.c_hv_kvp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_hv_kvp.c_hv_kvp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }

@.str = private unnamed_addr constant [24 x i8] c"hv_kvp device semaphore\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"hv-kvp pending mutex\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"hv_kvp_log\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@hv_kvp_log = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Hyperv KVP service log level\00", align 1
@hv_kvp_process_request = common dso_local global i32 0, align 4
@MAKEDEV_CHECKNAME = common dso_local global i32 0, align 4
@MAKEDEV_WAITOK = common dso_local global i32 0, align 4
@hv_kvp_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"hv_kvp_dev\00", align 1
@hv_kvp_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hv_kvp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_kvp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_ctx_list*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @device_get_softc(i32 %8)
  %10 = inttoptr i64 %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %7, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = call i32 @sema_init(i32* %15, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = call i32 @mtx_init(i32* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %21)
  store %struct.sysctl_ctx_list* %22, %struct.sysctl_ctx_list** %6, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_get_sysctl_tree(i32 %23)
  %25 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %24)
  store %struct.sysctl_oid_list* %25, %struct.sysctl_oid_list** %5, align 8
  %26 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %27 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %30 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %26, %struct.sysctl_oid_list* %27, i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32* @hv_kvp_log, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* @hv_kvp_process_request, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = call i32 @TASK_INIT(i32* %32, i32 0, i32 %33, %struct.TYPE_4__* %34)
  %36 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %37 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* @UID_ROOT, align 4
  %42 = load i32, i32* @GID_WHEEL, align 4
  %43 = call i32 @make_dev_p(i32 %38, %struct.TYPE_5__** %40, i32* @hv_kvp_cdevsw, i32 0, i32 %41, i32 %42, i32 416, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %1
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %57

48:                                               ; preds = %1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %53, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @hv_kvp_callback, align 4
  %56 = call i32 @vmbus_ic_attach(i32 %54, i32 %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %48, %46
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @sema_init(i32*, i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @make_dev_p(i32, %struct.TYPE_5__**, i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @vmbus_ic_attach(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
