; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i32, i32**, i32*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arcmsr_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @device_get_softc(i32 %5)
  %7 = inttoptr i64 %6 to %struct.AdapterControlBlock*
  store %struct.AdapterControlBlock* %7, %struct.AdapterControlBlock** %3, align 8
  %8 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %9 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %8, i32 0, i32 5
  %10 = call i32 @callout_stop(i32* %9)
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %13 = call i32 @arcmsr_teardown_intr(i32 %11, %struct.AdapterControlBlock* %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @arcmsr_shutdown(i32 %14)
  %16 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %17 = call i32 @arcmsr_free_resource(%struct.AdapterControlBlock* %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %50, %1
  %19 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %20 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %19, i32 0, i32 3
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 2
  br label %30

30:                                               ; preds = %27, %18
  %31 = phi i1 [ false, %18 ], [ %29, %27 ]
  br i1 %31, label %32, label %53

32:                                               ; preds = %30
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @SYS_RES_MEMORY, align 4
  %35 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %36 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %43 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %42, i32 0, i32 3
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @bus_release_resource(i32 %33, i32 %34, i32 %41, i32* %48)
  br label %50

50:                                               ; preds = %32
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %18

53:                                               ; preds = %30
  %54 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %55 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %54, i32 0, i32 0
  %56 = call i32 @ARCMSR_LOCK_ACQUIRE(i32* %55)
  %57 = load i32, i32* @AC_LOST_DEVICE, align 4
  %58 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %59 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @xpt_async(i32 %57, i32 %60, i32* null)
  %62 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %63 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @xpt_free_path(i32 %64)
  %66 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %67 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cam_sim_path(i32 %68)
  %70 = call i32 @xpt_bus_deregister(i32 %69)
  %71 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %72 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @TRUE, align 4
  %75 = call i32 @cam_sim_free(i32 %73, i32 %74)
  %76 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %77 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %76, i32 0, i32 0
  %78 = call i32 @ARCMSR_LOCK_RELEASE(i32* %77)
  %79 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %80 = call i32 @arcmsr_mutex_destroy(%struct.AdapterControlBlock* %79)
  ret i32 0
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @arcmsr_teardown_intr(i32, %struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_shutdown(i32) #1

declare dso_local i32 @arcmsr_free_resource(%struct.AdapterControlBlock*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @ARCMSR_LOCK_ACQUIRE(i32*) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @cam_sim_free(i32, i32) #1

declare dso_local i32 @ARCMSR_LOCK_RELEASE(i32*) #1

declare dso_local i32 @arcmsr_mutex_destroy(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
