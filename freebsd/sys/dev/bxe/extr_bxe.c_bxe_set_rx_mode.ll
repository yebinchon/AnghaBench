; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64, i32, i32, i32 }

@BXE_RX_MODE_NORMAL = common dso_local global i32 0, align 4
@BXE_STATE_OPEN = common dso_local global i64 0, align 8
@DBG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"state is %x, returning\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"if_flags(ifp)=0x%x\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@BXE_RX_MODE_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@BXE_MAX_MULTICAST = common dso_local global i64 0, align 8
@BXE_RX_MODE_ALLMULTI = common dso_local global i32 0, align 4
@ECORE_FILTER_RX_MODE_PENDING = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Scheduled setting rx_mode with ECORE...\0A\00", align 1
@ECORE_FILTER_RX_MODE_SCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_set_rx_mode(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %5 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @BXE_RX_MODE_NORMAL, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BXE_STATE_OPEN, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %16 = load i32, i32* @DBG_SP, align 4
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %15, i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %96

21:                                               ; preds = %1
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %23 = load i32, i32* @DBG_SP, align 4
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @if_getflags(i32 %26)
  %28 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %22, i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @if_getflags(i32 %29)
  %31 = load i32, i32* @IFF_PROMISC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* @BXE_RX_MODE_PROMISC, align 4
  store i32 %35, i32* %4, align 4
  br label %72

36:                                               ; preds = %21
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @if_getflags(i32 %37)
  %39 = load i32, i32* @IFF_ALLMULTI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @if_getamcount(i32 %43)
  %45 = load i64, i64* @BXE_MAX_MULTICAST, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %49 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %36
  %52 = load i32, i32* @BXE_RX_MODE_ALLMULTI, align 4
  store i32 %52, i32* %4, align 4
  br label %71

53:                                               ; preds = %47, %42
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %55 = call i64 @IS_PF(%struct.bxe_softc* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %59 = call i64 @bxe_set_mc_list(%struct.bxe_softc* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @BXE_RX_MODE_ALLMULTI, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %65 = call i64 @bxe_set_uc_list(%struct.bxe_softc* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @BXE_RX_MODE_PROMISC, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %63
  br label %70

70:                                               ; preds = %69, %53
  br label %71

71:                                               ; preds = %70, %51
  br label %72

72:                                               ; preds = %71, %34
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %75 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @ECORE_FILTER_RX_MODE_PENDING, align 4
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %78 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %77, i32 0, i32 1
  %79 = call i64 @bxe_test_bit(i32 %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %72
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %83 = load i32, i32* @DBG_LOAD, align 4
  %84 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %82, i32 %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @ECORE_FILTER_RX_MODE_SCHED, align 4
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %87 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %86, i32 0, i32 1
  %88 = call i32 @bxe_set_bit(i32 %85, i32* %87)
  br label %96

89:                                               ; preds = %72
  %90 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %91 = call i64 @IS_PF(%struct.bxe_softc* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %95 = call i32 @bxe_set_storm_rx_mode(%struct.bxe_softc* %94)
  br label %96

96:                                               ; preds = %14, %81, %93, %89
  ret void
}

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i64 @if_getamcount(i32) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i64 @IS_PF(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_set_mc_list(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_set_uc_list(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_test_bit(i32, i32*) #1

declare dso_local i32 @bxe_set_bit(i32, i32*) #1

declare dso_local i32 @bxe_set_storm_rx_mode(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
