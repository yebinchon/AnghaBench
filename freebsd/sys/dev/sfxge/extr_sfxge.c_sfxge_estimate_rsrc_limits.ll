; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_estimate_rsrc_limits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_estimate_rsrc_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@mp_ncpus = common dso_local global i32 0, align 4
@EFX_MAXRSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"txq_allocated < %u\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"allocated more than maximum requested\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*)* @sfxge_estimate_rsrc_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_estimate_rsrc_limits(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %10 = load i32, i32* @mp_ncpus, align 4
  %11 = load i32, i32* @EFX_MAXRSS, align 4
  %12 = call i8* @MIN(i32 %10, i32 %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %15 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ugt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %21 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @MIN(i32 %19, i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %18, %1
  %26 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 24)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %31 = call i32 @SFXGE_EVQ0_N_TXQ(%struct.sfxge_softc* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %35 = call i32 @SFXGE_EVQ0_N_TXQ(%struct.sfxge_softc* %34)
  %36 = add i32 %33, %35
  %37 = sub i32 %36, 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  store i32 %40, i32* %41, align 4
  %42 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %43 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @efx_nic_set_drv_limits(i32 %44, %struct.TYPE_4__* %4)
  %46 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %47 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @efx_nic_init(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %25
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %110

53:                                               ; preds = %25
  %54 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %55 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @efx_nic_get_vi_pool(i32 %56, i32* %7, i32* %8, i32* %9)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %62 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @efx_nic_fini(i32 %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %110

66:                                               ; preds = %53
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %69 = call i32 @SFXGE_EVQ0_N_TXQ(%struct.sfxge_softc* %68)
  %70 = icmp sge i32 %67, %69
  %71 = zext i1 %70 to i32
  %72 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %73 = call i32 @SFXGE_EVQ0_N_TXQ(%struct.sfxge_softc* %72)
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @KASSERT(i32 %71, i8* %75)
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i8* @MIN(i32 %77, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %82 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %85 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @MIN(i32 %83, i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %90 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %93 = call i32 @SFXGE_EVQ0_N_TXQ(%struct.sfxge_softc* %92)
  %94 = sub nsw i32 %93, 1
  %95 = sub nsw i32 %91, %94
  %96 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %97 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @MIN(i32 %95, i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %102 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %104 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ule i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @KASSERT(i32 %108, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %66, %60, %51
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i8* @MIN(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @SFXGE_EVQ0_N_TXQ(%struct.sfxge_softc*) #1

declare dso_local i32 @efx_nic_set_drv_limits(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @efx_nic_init(i32) #1

declare dso_local i32 @efx_nic_get_vi_pool(i32, i32*, i32*, i32*) #1

declare dso_local i32 @efx_nic_fini(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
