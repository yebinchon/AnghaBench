; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_recover_atom_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_recover_atom_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ATOM_LINK_RECOVERY_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@hz = common dso_local global i32 0, align 4
@ATOM_CNTL_LINK_DOWN = common dso_local global i32 0, align 4
@NTB_LINK_SPEED_MASK = common dso_local global i32 0, align 4
@NTB_HB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @recover_atom_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recover_atom_link(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ntb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.ntb_softc*
  store %struct.ntb_softc* %10, %struct.ntb_softc** %3, align 8
  %11 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %12 = call i32 @atom_perform_link_restart(%struct.ntb_softc* %11)
  %13 = call i32 (...) @arc4random()
  %14 = load i32, i32* @ATOM_LINK_RECOVERY_TIME, align 4
  %15 = srem i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @ATOM_LINK_RECOVERY_TIME, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @hz, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sdiv i32 %20, 1000
  %22 = call i32 @pause(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %24 = call i64 @atom_link_is_err(%struct.ntb_softc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %77

27:                                               ; preds = %1
  %28 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @intel_ntb_reg_read(i32 4, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ATOM_CNTL_LINK_DOWN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %69

39:                                               ; preds = %27
  %40 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @intel_ntb_reg_read(i32 4, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @NTB_LNK_STA_WIDTH(i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @NTB_LINK_SPEED_MASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %4, align 4
  %51 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @NTB_LNK_STA_WIDTH(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NTB_LINK_SPEED_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %39
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %39
  br label %77

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %38
  %70 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %70, i32 0, i32 2
  %72 = load i32, i32* @NTB_HB_TIMEOUT, align 4
  %73 = load i32, i32* @hz, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %76 = call i32 @callout_reset(i32* %71, i32 %74, void (i8*)* @atom_link_hb, %struct.ntb_softc* %75)
  br label %85

77:                                               ; preds = %67, %26
  %78 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %78, i32 0, i32 1
  %80 = load i32, i32* @NTB_HB_TIMEOUT, align 4
  %81 = load i32, i32* @hz, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %84 = call i32 @callout_reset(i32* %79, i32 %82, void (i8*)* @recover_atom_link, %struct.ntb_softc* %83)
  br label %85

85:                                               ; preds = %77, %69
  ret void
}

declare dso_local i32 @atom_perform_link_restart(%struct.ntb_softc*) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i64 @atom_link_is_err(%struct.ntb_softc*) #1

declare dso_local i32 @intel_ntb_reg_read(i32, i32) #1

declare dso_local i32 @NTB_LNK_STA_WIDTH(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.ntb_softc*) #1

declare dso_local void @atom_link_hb(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
