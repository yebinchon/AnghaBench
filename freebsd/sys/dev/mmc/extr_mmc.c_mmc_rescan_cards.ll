; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_rescan_cards.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_rescan_cards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32, i32*, i32 }
%struct.mmc_ivars = type { i32 }

@MMC_ERR_NONE = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@mmc_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Card at relative address %d lost\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_softc*)* @mmc_rescan_cards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_rescan_cards(%struct.mmc_softc* %0) #0 {
  %2 = alloca %struct.mmc_softc*, align 8
  %3 = alloca %struct.mmc_ivars*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmc_softc* %0, %struct.mmc_softc** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %68, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %10 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %71

13:                                               ; preds = %7
  %14 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.mmc_ivars* @device_get_ivars(i32 %20)
  store %struct.mmc_ivars* %21, %struct.mmc_ivars** %3, align 8
  %22 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %23 = load %struct.mmc_ivars*, %struct.mmc_ivars** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @mmc_select_card(%struct.mmc_softc* %22, i32 %25)
  %27 = load i64, i64* @MMC_ERR_NONE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %13
  %30 = load i64, i64* @bootverbose, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* @mmc_debug, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32, %29
  %36 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %37 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mmc_ivars*, %struct.mmc_ivars** %3, align 8
  %40 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %35, %32
  %44 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %45 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %48 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @device_delete_child(i32 %46, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %68

60:                                               ; preds = %43
  %61 = load %struct.mmc_ivars*, %struct.mmc_ivars** %3, align 8
  %62 = load i32, i32* @M_DEVBUF, align 4
  %63 = call i32 @free(%struct.mmc_ivars* %61, i32 %62)
  br label %67

64:                                               ; preds = %13
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %57
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %7

71:                                               ; preds = %7
  %72 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %73 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %84

78:                                               ; preds = %71
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %81 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %83 = call i32 @mmc_update_child_list(%struct.mmc_softc* %82)
  br label %84

84:                                               ; preds = %78, %77
  %85 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %86 = call i64 @mmc_select_card(%struct.mmc_softc* %85, i32 0)
  ret void
}

declare dso_local %struct.mmc_ivars* @device_get_ivars(i32) #1

declare dso_local i64 @mmc_select_card(%struct.mmc_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @free(%struct.mmc_ivars*, i32) #1

declare dso_local i32 @mmc_update_child_list(%struct.mmc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
