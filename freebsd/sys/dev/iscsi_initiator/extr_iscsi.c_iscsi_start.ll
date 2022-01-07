; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi.c_iscsi_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi.c_iscsi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }

@M_ISCSI = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@isc = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"iscsi-isc\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"pdu\00", align 1
@max_pdus = common dso_local global i32 0, align 4
@max_sessions = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"iscsi sx\00", align 1
@_net = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"iscsi_initiator\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"iSCSI Subsystem\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"driver_version\00", align 1
@iscsi_driver_version = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"iscsi driver version\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"isid\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@isid = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [41 x i8] c"initiator part of the Session Identifier\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"sessions\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"number of active session\00", align 1
@MAKEDEV_CHECKNAME = common dso_local global i32 0, align 4
@iscsi_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"iscsi\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"iscsi_initiator: make_dev_credf failed\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"iscsi: version %s\0A\00", align 1
@SHUTDOWN_PRI_DEFAULT = common dso_local global i64 0, align 8
@iscsi_dbg_mtx = common dso_local global i32 0, align 4
@iscsi_shutdown = common dso_local global i32 0, align 4
@sc = common dso_local global i32 0, align 4
@shutdown_pre_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @iscsi_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_start() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @debug_called(i32 8)
  %3 = load i32, i32* @M_ISCSI, align 4
  %4 = load i32, i32* @M_ZERO, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = or i32 %4, %5
  %7 = call %struct.TYPE_4__* @malloc(i32 4, i32 %3, i32 %6)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** @isc, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 9
  %10 = load i32, i32* @MTX_DEF, align 4
  %11 = call i32 @mtx_init(i32* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 8
  %14 = call i32 @TAILQ_INIT(i32* %13)
  %15 = call i32 @uma_zcreate(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 0, i32 0)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @max_pdus, align 4
  %22 = call i32 @uma_zone_set_max(i32 %20, i32 %21)
  %23 = load i64, i64* @max_sessions, align 8
  %24 = sub nsw i64 %23, 1
  %25 = call i32 @new_unrhdr(i32 0, i64 %24, i32* null)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 5
  %30 = call i32 @sx_init(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = call i32 @sysctl_ctx_init(i32* %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i32, i32* @_net, align 4
  %37 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %36)
  %38 = load i32, i32* @OID_AUTO, align 4
  %39 = load i32, i32* @CTLFLAG_RD, align 4
  %40 = call i32 @SYSCTL_ADD_NODE(i32* %35, i32 %37, i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @SYSCTL_CHILDREN(i32 %47)
  %49 = load i32, i32* @OID_AUTO, align 4
  %50 = load i32, i32* @CTLFLAG_RD, align 4
  %51 = load i8*, i8** @iscsi_driver_version, align 8
  %52 = call i32 @SYSCTL_ADD_STRING(i32* %44, i32 %48, i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %50, i8* %51, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @SYSCTL_CHILDREN(i32 %57)
  %59 = load i32, i32* @OID_AUTO, align 4
  %60 = load i32, i32* @CTLFLAG_RW, align 4
  %61 = load i8*, i8** @isid, align 8
  %62 = call i32 @SYSCTL_ADD_STRING(i32* %54, i32 %58, i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %60, i8* %61, i32 7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SYSCTL_CHILDREN(i32 %67)
  %69 = load i32, i32* @OID_AUTO, align 4
  %70 = load i32, i32* @CTLFLAG_RD, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = call i32 @SYSCTL_ADD_INT(i32* %64, i32 %68, i32 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %70, i32* %72, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %74 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %75 = load i64, i64* @max_sessions, align 8
  %76 = load i32, i32* @UID_ROOT, align 4
  %77 = load i32, i32* @GID_WHEEL, align 4
  %78 = call %struct.TYPE_5__* @make_dev_credf(i32 %74, i32* @iscsi_cdevsw, i64 %75, i32* null, i32 %76, i32 %77, i32 384, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %80, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = icmp eq %struct.TYPE_5__* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %0
  %86 = call i32 @xdebug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %87 = load i32, i32* @EEXIST, align 4
  store i32 %87, i32* %1, align 4
  br label %96

88:                                               ; preds = %0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isc, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** %93, align 8
  %94 = load i8*, i8** @iscsi_driver_version, align 8
  %95 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* %94)
  store i32 0, i32* %1, align 4
  br label %96

96:                                               ; preds = %88, %85
  %97 = load i32, i32* %1, align 4
  ret i32 %97
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.TYPE_4__* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uma_zone_set_max(i32, i32) #1

declare dso_local i32 @new_unrhdr(i32, i64, i32*) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i32 @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_STRING(i32*, i32, i32, i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local %struct.TYPE_5__* @make_dev_credf(i32, i32*, i64, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @xdebug(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
