; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbb_softc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CBB_SOCKET_EVENT = common dso_local global i32 0, align 4
@CBB_SOCKET_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"card inserted: event=0x%08x, state=%08x\0A\00", align 1
@CBB_STATE_R2_CARD = common dso_local global i32 0, align 4
@CBB_16BIT_CARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"16-bit card inserted, but no pccard bus.\0A\00", align 1
@CBB_STATE_CB_CARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"CardBus card inserted, but no cardbus bus.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Unsupported card type detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbb_softc*)* @cbb_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbb_insert(%struct.cbb_softc* %0) #0 {
  %2 = alloca %struct.cbb_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cbb_softc* %0, %struct.cbb_softc** %2, align 8
  %5 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %6 = load i32, i32* @CBB_SOCKET_EVENT, align 4
  %7 = call i32 @cbb_get(%struct.cbb_softc* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %9 = load i32, i32* @CBB_SOCKET_STATE, align 4
  %10 = call i32 @cbb_get(%struct.cbb_softc* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %12 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @DEVPRINTF(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @CBB_STATE_R2_CARD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %1
  %22 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %23 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @device_is_attached(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = load i32, i32* @CBB_16BIT_CARD, align 4
  %32 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %33 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %37 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = call i32 @exca_insert(%struct.TYPE_2__* %39)
  br label %46

41:                                               ; preds = %21
  %42 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %43 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %30
  br label %81

47:                                               ; preds = %1
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @CBB_STATE_CB_CARD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %47
  %53 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %54 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @device_is_attached(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load i32, i32* @CBB_16BIT_CARD, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %62 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %66 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @CARD_ATTACH_CARD(i32 %67)
  br label %74

69:                                               ; preds = %52
  %70 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %71 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %58
  br label %80

75:                                               ; preds = %47
  %76 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %77 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %74
  br label %81

81:                                               ; preds = %80, %46
  ret void
}

declare dso_local i32 @cbb_get(%struct.cbb_softc*, i32) #1

declare dso_local i32 @DEVPRINTF(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @exca_insert(%struct.TYPE_2__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CARD_ATTACH_CARD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
