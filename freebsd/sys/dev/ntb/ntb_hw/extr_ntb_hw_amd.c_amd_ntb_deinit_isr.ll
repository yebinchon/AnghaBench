; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_deinit_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_deinit_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_softc = type { i32, i32, %struct.amd_ntb_int_info*, i32, i32 }
%struct.amd_ntb_int_info = type { i32*, i32* }

@AMD_DBMASK_OFFSET = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_ntb_softc*)* @amd_ntb_deinit_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_ntb_deinit_isr(%struct.amd_ntb_softc* %0) #0 {
  %2 = alloca %struct.amd_ntb_softc*, align 8
  %3 = alloca %struct.amd_ntb_int_info*, align 8
  %4 = alloca i32, align 4
  store %struct.amd_ntb_softc* %0, %struct.amd_ntb_softc** %2, align 8
  %5 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %6 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %9 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @AMD_DBMASK_OFFSET, align 4
  %11 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %12 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @amd_ntb_reg_write(i32 4, i32 %10, i32 %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %62, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %18 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %15
  %22 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %23 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %22, i32 0, i32 2
  %24 = load %struct.amd_ntb_int_info*, %struct.amd_ntb_int_info** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.amd_ntb_int_info, %struct.amd_ntb_int_info* %24, i64 %26
  store %struct.amd_ntb_int_info* %27, %struct.amd_ntb_int_info** %3, align 8
  %28 = load %struct.amd_ntb_int_info*, %struct.amd_ntb_int_info** %3, align 8
  %29 = getelementptr inbounds %struct.amd_ntb_int_info, %struct.amd_ntb_int_info* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %21
  %33 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %34 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.amd_ntb_int_info*, %struct.amd_ntb_int_info** %3, align 8
  %37 = getelementptr inbounds %struct.amd_ntb_int_info, %struct.amd_ntb_int_info* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.amd_ntb_int_info*, %struct.amd_ntb_int_info** %3, align 8
  %40 = getelementptr inbounds %struct.amd_ntb_int_info, %struct.amd_ntb_int_info* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @bus_teardown_intr(i32 %35, i32* %38, i32* %41)
  br label %43

43:                                               ; preds = %32, %21
  %44 = load %struct.amd_ntb_int_info*, %struct.amd_ntb_int_info** %3, align 8
  %45 = getelementptr inbounds %struct.amd_ntb_int_info, %struct.amd_ntb_int_info* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %50 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SYS_RES_IRQ, align 4
  %53 = load %struct.amd_ntb_int_info*, %struct.amd_ntb_int_info** %3, align 8
  %54 = getelementptr inbounds %struct.amd_ntb_int_info, %struct.amd_ntb_int_info* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @rman_get_rid(i32* %55)
  %57 = load %struct.amd_ntb_int_info*, %struct.amd_ntb_int_info** %3, align 8
  %58 = getelementptr inbounds %struct.amd_ntb_int_info, %struct.amd_ntb_int_info* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @bus_release_resource(i32 %51, i32 %52, i32 %56, i32* %59)
  br label %61

61:                                               ; preds = %48, %43
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %15

65:                                               ; preds = %15
  %66 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %67 = call i32 @amd_ntb_free_msix_vec(%struct.amd_ntb_softc* %66)
  ret void
}

declare dso_local i32 @amd_ntb_reg_write(i32, i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @amd_ntb_free_msix_vec(%struct.amd_ntb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
