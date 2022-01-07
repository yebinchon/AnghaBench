; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_ch_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_ch_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mvs_ch_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_ch_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.mvs_channel* @device_get_softc(i32 %4)
  store %struct.mvs_channel* %5, %struct.mvs_channel** %3, align 8
  %6 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %7 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %6, i32 0, i32 1
  %8 = call i32 @mtx_lock(i32* %7)
  %9 = load i32, i32* @AC_LOST_DEVICE, align 4
  %10 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %11 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @xpt_async(i32 %9, i32 %12, i32* null)
  %14 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %15 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %14, i32 0, i32 10
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %20 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %19, i32 0, i32 10
  store i64 0, i64* %20, align 8
  %21 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %22 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @xpt_release_simq(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %28 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @xpt_free_path(i32 %29)
  %31 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %32 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cam_sim_path(i32 %33)
  %35 = call i32 @xpt_bus_deregister(i32 %34)
  %36 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %37 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @cam_sim_free(i32 %38, i32 %39)
  %41 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %42 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %41, i32 0, i32 1
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %45 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 3
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %50 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %49, i32 0, i32 7
  %51 = call i32 @callout_drain(i32* %50)
  br label %52

52:                                               ; preds = %48, %26
  %53 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %54 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %53, i32 0, i32 6
  %55 = call i32 @callout_drain(i32* %54)
  %56 = load i32, i32* %2, align 4
  %57 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %58 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %61 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bus_teardown_intr(i32 %56, i32 %59, i32 %62)
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @SYS_RES_IRQ, align 4
  %66 = load i32, i32* @ATA_IRQ_RID, align 4
  %67 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %68 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @bus_release_resource(i32 %64, i32 %65, i32 %66, i32 %69)
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @mvs_ch_deinit(i32 %71)
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @mvs_slotsfree(i32 %73)
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @mvs_dmafini(i32 %75)
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @SYS_RES_MEMORY, align 4
  %79 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %80 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %83 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @bus_release_resource(i32 %77, i32 %78, i32 %81, i32 %84)
  %86 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %87 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %86, i32 0, i32 1
  %88 = call i32 @mtx_destroy(i32* %87)
  ret i32 0
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @cam_sim_free(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @mvs_ch_deinit(i32) #1

declare dso_local i32 @mvs_slotsfree(i32) #1

declare dso_local i32 @mvs_dmafini(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
