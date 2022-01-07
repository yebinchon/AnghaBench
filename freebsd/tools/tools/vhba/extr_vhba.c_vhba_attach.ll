; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vhba/extr_vhba.c_vhba_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vhba/extr_vhba.c_vhba_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32, i32 }

@VHBA_MAXCMDS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vhba_action = common dso_local global i32 0, align 4
@vhba_poll = common dso_local global i32 0, align 4
@VHBA_MOD = common dso_local global i32 0, align 4
@CAM_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @vhba_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhba_attach(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  %6 = call i32 @TAILQ_INIT(i32* %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %9 = call i32 @TAILQ_INIT(i32* %8)
  %10 = load i32, i32* @VHBA_MAXCMDS, align 4
  %11 = call i32* @cam_simq_alloc(i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i32* %11, i32** %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %2, align 4
  br label %71

20:                                               ; preds = %1
  %21 = load i32, i32* @vhba_action, align 4
  %22 = load i32, i32* @vhba_poll, align 4
  %23 = load i32, i32* @VHBA_MOD, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* @VHBA_MAXCMDS, align 4
  %28 = load i32, i32* @VHBA_MAXCMDS, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32* @cam_sim_alloc(i32 %21, i32 %22, i32 %23, %struct.TYPE_5__* %24, i32 0, i32* %26, i32 %27, i32 %28, i32* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %20
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @cam_simq_free(i32* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %2, align 4
  br label %71

45:                                               ; preds = %20
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = call i32 @vhba_init(%struct.TYPE_5__* %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @mtx_lock(i32* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @xpt_bus_register(i32* %53, i32 0, i32 0)
  %55 = load i64, i64* @CAM_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %45
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @cam_sim_free(i32* %60, i32 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @mtx_unlock(i32* %64)
  %66 = load i32, i32* @EIO, align 4
  store i32 %66, i32* %2, align 4
  br label %71

67:                                               ; preds = %45
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = call i32 @mtx_unlock(i32* %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %57, %39, %18
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32* @cam_simq_alloc(i32) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i32, %struct.TYPE_5__*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @cam_simq_free(i32*) #1

declare dso_local i32 @vhba_init(%struct.TYPE_5__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
