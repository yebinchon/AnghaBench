; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }

@M_ISCSI = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@sc = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"iscsi\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"iscsi_cv\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"iscsi_outstanding\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@iscsi_outstanding_zone = common dso_local global i32 0, align 4
@MAKEDEV_CHECKNAME = common dso_local global i32 0, align 4
@iscsi_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to create device node, error %d\00", align 1
@shutdown_pre_sync = common dso_local global i32 0, align 4
@iscsi_shutdown_pre = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_FIRST = common dso_local global i64 0, align 8
@shutdown_post_sync = common dso_local global i32 0, align 4
@iscsi_shutdown_post = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @iscsi_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_load() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @M_ISCSI, align 4
  %4 = load i32, i32* @M_ZERO, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = or i32 %4, %5
  %7 = call %struct.TYPE_5__* @malloc(i32 40, i32 %3, i32 %6)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** @sc, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sc, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 5
  %10 = call i32 @sx_init(i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sc, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  %13 = call i32 @TAILQ_INIT(i32* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sc, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = call i32 @cv_init(i32* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %18 = call i32 @uma_zcreate(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %17, i32 0)
  store i32 %18, i32* @iscsi_outstanding_zone, align 4
  %19 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sc, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* @UID_ROOT, align 4
  %23 = load i32, i32* @GID_WHEEL, align 4
  %24 = call i32 @make_dev_p(i32 %19, %struct.TYPE_6__** %21, i32* @iscsi_cdevsw, i32* null, i32 %22, i32 %23, i32 384, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %0
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @ISCSI_WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %2, align 4
  store i32 %30, i32* %1, align 4
  br label %52

31:                                               ; preds = %0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sc, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sc, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %36, align 8
  %37 = load i32, i32* @shutdown_pre_sync, align 4
  %38 = load i32, i32* @iscsi_shutdown_pre, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sc, align 8
  %40 = load i64, i64* @SHUTDOWN_PRI_FIRST, align 8
  %41 = call i8* @EVENTHANDLER_REGISTER(i32 %37, i32 %38, %struct.TYPE_5__* %39, i64 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sc, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @shutdown_post_sync, align 4
  %45 = load i32, i32* @iscsi_shutdown_post, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sc, align 8
  %47 = load i64, i64* @SHUTDOWN_PRI_DEFAULT, align 8
  %48 = sub nsw i64 %47, 1
  %49 = call i8* @EVENTHANDLER_REGISTER(i32 %44, i32 %45, %struct.TYPE_5__* %46, i64 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sc, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %31, %27
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_5__* @malloc(i32, i32, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @make_dev_p(i32, %struct.TYPE_6__**, i32*, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @ISCSI_WARN(i8*, i32) #1

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, %struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
