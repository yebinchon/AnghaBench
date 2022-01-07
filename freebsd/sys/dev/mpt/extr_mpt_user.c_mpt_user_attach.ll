; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.mpt_softc* }
%struct.TYPE_5__ = type { i32 }

@mpt_user_reply_handler = common dso_local global i32 0, align 4
@MPT_HANDLER_REPLY = common dso_local global i32 0, align 4
@user_handler_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to register user handler!\0A\00", align 1
@mpt_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"mpt%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_user_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_user_attach(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %7 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %8 = call i32 @MPT_LOCK(%struct.mpt_softc* %7)
  %9 = load i32, i32* @mpt_user_reply_handler, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %12 = load i32, i32* @MPT_HANDLER_REPLY, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mpt_register_handler(%struct.mpt_softc* %11, i32 %12, i32 %14, i32* @user_handler_id)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %17 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %22 = call i32 @mpt_prt(%struct.mpt_softc* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %58

24:                                               ; preds = %1
  %25 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @device_get_unit(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @UID_ROOT, align 4
  %31 = load i32, i32* @GID_OPERATOR, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.TYPE_6__* @make_dev(i32* @mpt_cdevsw, i32 %29, i32 %30, i32 %31, i32 416, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %34, i32 0, i32 0
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %35, align 8
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp eq %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %24
  %41 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %42 = call i32 @MPT_LOCK(%struct.mpt_softc* %41)
  %43 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %44 = load i32, i32* @MPT_HANDLER_REPLY, align 4
  %45 = load i32, i32* @user_handler_id, align 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mpt_deregister_handler(%struct.mpt_softc* %43, i32 %44, i32 %47, i32 %45)
  %49 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %50 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %2, align 4
  br label %58

52:                                               ; preds = %24
  %53 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %54 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %55 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store %struct.mpt_softc* %53, %struct.mpt_softc** %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %40, %20
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @MPT_LOCK(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_register_handler(%struct.mpt_softc*, i32, i32, i32*) #1

declare dso_local i32 @MPT_UNLOCK(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_6__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @mpt_deregister_handler(%struct.mpt_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
