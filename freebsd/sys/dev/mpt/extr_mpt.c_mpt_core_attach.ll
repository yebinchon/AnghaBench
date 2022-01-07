; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_core_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_core_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MPT_MAX_LUNS = common dso_local global i32 0, align 4
@MPT_HANDLER_ID_NONE = common dso_local global i32 0, align 4
@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"doorbell req = %s\0A\00", align 1
@MPT_OFFSET_DOORBELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_core_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_core_attach(%struct.mpt_softc* %0) #0 {
  %2 = alloca %struct.mpt_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %2, align 8
  %5 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %6 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %5, i32 0, i32 7
  %7 = call i32 @LIST_INIT(i32* %6)
  %8 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %8, i32 0, i32 6
  %10 = call i32 @TAILQ_INIT(i32* %9)
  %11 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %12 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %11, i32 0, i32 5
  %13 = call i32 @TAILQ_INIT(i32* %12)
  %14 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %14, i32 0, i32 4
  %16 = call i32 @TAILQ_INIT(i32* %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %38, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @MPT_MAX_LUNS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = call i32 @STAILQ_INIT(i32* %28)
  %30 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %31 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @STAILQ_INIT(i32* %36)
  br label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %17

41:                                               ; preds = %17
  %42 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %43 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = call i32 @STAILQ_INIT(i32* %44)
  %46 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %47 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @STAILQ_INIT(i32* %48)
  %50 = load i32, i32* @MPT_HANDLER_ID_NONE, align 4
  %51 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %52 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %54 = call i32 @mpt_sysctl_attach(%struct.mpt_softc* %53)
  %55 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %56 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %57 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %58 = load i32, i32* @MPT_OFFSET_DOORBELL, align 4
  %59 = call i32 @mpt_read(%struct.mpt_softc* %57, i32 %58)
  %60 = call i32 @mpt_ioc_diag(i32 %59)
  %61 = call i32 @mpt_lprt(%struct.mpt_softc* %55, i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %63 = call i32 @MPT_LOCK(%struct.mpt_softc* %62)
  %64 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %65 = call i32 @mpt_configure_ioc(%struct.mpt_softc* %64, i32 0, i32 0)
  store i32 %65, i32* %4, align 4
  %66 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %67 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %66)
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @mpt_sysctl_attach(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, i32) #1

declare dso_local i32 @mpt_ioc_diag(i32) #1

declare dso_local i32 @mpt_read(%struct.mpt_softc*, i32) #1

declare dso_local i32 @MPT_LOCK(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_configure_ioc(%struct.mpt_softc*, i32, i32) #1

declare dso_local i32 @MPT_UNLOCK(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
