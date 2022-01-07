; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_delete_cards.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_delete_cards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32, i32*, i32 }
%struct.mmc_ivars = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@mmc_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Card at relative address %d deleted\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_softc*, i32)* @mmc_delete_cards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_delete_cards(%struct.mmc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_ivars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_softc* %0, %struct.mmc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %62, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %9
  %16 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.mmc_ivars* @device_get_ivars(i32 %22)
  store %struct.mmc_ivars* %23, %struct.mmc_ivars** %5, align 8
  %24 = load i64, i64* @bootverbose, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  %27 = load i64, i64* @mmc_debug, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26, %15
  %30 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %34 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %29, %26
  %38 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @device_delete_child(i32 %40, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %37
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %62

57:                                               ; preds = %51
  br label %65

58:                                               ; preds = %37
  %59 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %60 = load i32, i32* @M_DEVBUF, align 4
  %61 = call i32 @free(%struct.mmc_ivars* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %56
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %9

65:                                               ; preds = %57, %9
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %68 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %70 = call i32 @mmc_update_child_list(%struct.mmc_softc* %69)
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.mmc_ivars* @device_get_ivars(i32) #1

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
