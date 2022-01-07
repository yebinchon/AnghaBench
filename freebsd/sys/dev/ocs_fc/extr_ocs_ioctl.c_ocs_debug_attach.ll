; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_ioctl.c_ocs_debug_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_ioctl.c_ocs_debug_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocs_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ocs_softc* }

@INT32_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"debug_mask\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"setting %s to %010x\0A\00", align 1
@ocs_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ocs%d\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ocs_dbg_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocs_debug_attach(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ocs_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.ocs_softc*
  store %struct.ocs_softc* %9, %struct.ocs_softc** %3, align 8
  store i32 0, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %10 = load i32, i32* @INT32_MAX, align 4
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %11 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @device_get_name(i32 %13)
  %15 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @device_get_unit(i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @resource_int_value(i32 %14, i32 %18, i8* %19, i32* %7)
  store i32 %20, i32* %4, align 4
  %21 = icmp eq i32 0, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ocs_debug_enable(i32 %29)
  br label %31

31:                                               ; preds = %22, %1
  %32 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @device_get_unit(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @UID_ROOT, align 4
  %38 = load i32, i32* @GID_OPERATOR, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.TYPE_2__* @make_dev(i32* @ocs_cdevsw, i32 %36, i32 %37, i32 %38, i32 416, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %41, i32 0, i32 1
  store %struct.TYPE_2__* %40, %struct.TYPE_2__** %42, align 8
  %43 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = icmp ne %struct.TYPE_2__* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %31
  %48 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %49 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store %struct.ocs_softc* %48, %struct.ocs_softc** %52, align 8
  br label %53

53:                                               ; preds = %47, %31
  %54 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %55 = call i32 @ocs_sysctl_init(%struct.ocs_softc* %54)
  %56 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %56, i32 0, i32 0
  %58 = load i32, i32* @MTX_DEF, align 4
  %59 = call i32 @mtx_init(i32* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %58)
  ret void
}

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, i32) #1

declare dso_local i32 @ocs_debug_enable(i32) #1

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ocs_sysctl_init(%struct.ocs_softc*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
