; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp_targ.c_sbp_targ_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp_targ.c_sbp_targ_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_targ_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.sbp_targ_lstate*, %struct.sbp_targ_lstate**, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.sbp_targ_lstate = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@MAX_LUN = common dso_local global i32 0, align 4
@M_SBP_TARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sbp_targ_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp_targ_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbp_targ_softc*, align 8
  %4 = alloca %struct.sbp_targ_lstate*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @device_get_softc(i32 %6)
  %8 = inttoptr i64 %7 to %struct.sbp_targ_softc*
  store %struct.sbp_targ_softc* %8, %struct.sbp_targ_softc** %3, align 8
  %9 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %3, align 8
  %10 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %3, align 8
  %13 = call i32 @SBP_LOCK(%struct.sbp_targ_softc* %12)
  %14 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %3, align 8
  %15 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @xpt_free_path(i32 %16)
  %18 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %3, align 8
  %19 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @cam_sim_path(i32 %20)
  %22 = call i32 @xpt_bus_deregister(i32 %21)
  %23 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %3, align 8
  %24 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @cam_sim_free(i32 %25, i32 %26)
  %28 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %3, align 8
  %29 = call i32 @SBP_UNLOCK(%struct.sbp_targ_softc* %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %53, %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MAX_LUN, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %3, align 8
  %36 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %35, i32 0, i32 4
  %37 = load %struct.sbp_targ_lstate**, %struct.sbp_targ_lstate*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sbp_targ_lstate*, %struct.sbp_targ_lstate** %37, i64 %39
  %41 = load %struct.sbp_targ_lstate*, %struct.sbp_targ_lstate** %40, align 8
  store %struct.sbp_targ_lstate* %41, %struct.sbp_targ_lstate** %4, align 8
  %42 = load %struct.sbp_targ_lstate*, %struct.sbp_targ_lstate** %4, align 8
  %43 = icmp ne %struct.sbp_targ_lstate* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load %struct.sbp_targ_lstate*, %struct.sbp_targ_lstate** %4, align 8
  %46 = getelementptr inbounds %struct.sbp_targ_lstate, %struct.sbp_targ_lstate* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @xpt_free_path(i32 %47)
  %49 = load %struct.sbp_targ_lstate*, %struct.sbp_targ_lstate** %4, align 8
  %50 = load i32, i32* @M_SBP_TARG, align 4
  %51 = call i32 @free(%struct.sbp_targ_lstate* %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %34
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %30

56:                                               ; preds = %30
  %57 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %3, align 8
  %58 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %57, i32 0, i32 3
  %59 = load %struct.sbp_targ_lstate*, %struct.sbp_targ_lstate** %58, align 8
  %60 = icmp ne %struct.sbp_targ_lstate* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %3, align 8
  %63 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %62, i32 0, i32 3
  %64 = load %struct.sbp_targ_lstate*, %struct.sbp_targ_lstate** %63, align 8
  %65 = getelementptr inbounds %struct.sbp_targ_lstate, %struct.sbp_targ_lstate* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @xpt_free_path(i32 %66)
  %68 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %3, align 8
  %69 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %68, i32 0, i32 3
  %70 = load %struct.sbp_targ_lstate*, %struct.sbp_targ_lstate** %69, align 8
  %71 = load i32, i32* @M_SBP_TARG, align 4
  %72 = call i32 @free(%struct.sbp_targ_lstate* %70, i32 %71)
  br label %73

73:                                               ; preds = %61, %56
  %74 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %3, align 8
  %75 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %3, align 8
  %79 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %78, i32 0, i32 1
  %80 = call i32 @fw_bindremove(i32 %77, %struct.TYPE_4__* %79)
  %81 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %3, align 8
  %82 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i32 @fw_xferlist_remove(i32* %83)
  %85 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %3, align 8
  %86 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %85, i32 0, i32 0
  %87 = call i32 @mtx_destroy(i32* %86)
  ret i32 0
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @SBP_LOCK(%struct.sbp_targ_softc*) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @cam_sim_free(i32, i32) #1

declare dso_local i32 @SBP_UNLOCK(%struct.sbp_targ_softc*) #1

declare dso_local i32 @free(%struct.sbp_targ_lstate*, i32) #1

declare dso_local i32 @fw_bindremove(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @fw_xferlist_remove(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
