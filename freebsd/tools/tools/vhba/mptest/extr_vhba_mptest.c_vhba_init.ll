; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vhba/mptest/extr_vhba_mptest.c_vhba_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vhba/mptest/extr_vhba_mptest.c_vhba_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }

@vhba_init.vhbastatic = internal global %struct.TYPE_7__ zeroinitializer, align 8
@DISK_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@VMP_TIME = common dso_local global i32 0, align 4
@vhba_timer = common dso_local global i32 0, align 4
@vhba_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vhba_init(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vhba_init.vhbastatic, i32 0, i32 6), align 8
  %4 = load i32, i32* @DISK_SIZE, align 4
  %5 = shl i32 %4, 20
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vhba_init.vhbastatic, i32 0, i32 0), align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vhba_init.vhbastatic, i32 0, i32 0), align 8
  %7 = load i32, i32* @M_DEVBUF, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @malloc(i32 %6, i32 %7, i32 %10)
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vhba_init.vhbastatic, i32 0, i32 5), align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store %struct.TYPE_7__* @vhba_init.vhbastatic, %struct.TYPE_7__** %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @callout_init_mtx(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vhba_init.vhbastatic, i32 0, i32 4), i32* %15, i32 0)
  %17 = load i32, i32* @VMP_TIME, align 4
  %18 = load i32, i32* @vhba_timer, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = call i32 @callout_reset(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vhba_init.vhbastatic, i32 0, i32 4), i32 %17, i32 %18, %struct.TYPE_6__* %19)
  %21 = call i32 @TAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vhba_init.vhbastatic, i32 0, i32 3))
  %22 = load i32, i32* @vhba_task, align 4
  %23 = call i32 @TASK_INIT(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vhba_init.vhbastatic, i32 0, i32 2), i32 0, i32 %22, %struct.TYPE_7__* @vhba_init.vhbastatic)
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vhba_init.vhbastatic, i32 0, i32 1), align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 1, i32* %25, align 4
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vhba_init.vhbastatic, i32 0, i32 1), align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 1, i32* %27, align 4
  ret void
}

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
