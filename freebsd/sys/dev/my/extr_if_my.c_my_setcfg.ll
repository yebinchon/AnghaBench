; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_setcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_setcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { i32 }

@MY_TCRRCR = common dso_local global i32 0, align 4
@MY_TE = common dso_local global i32 0, align 4
@MY_RE = common dso_local global i32 0, align 4
@MY_TIMEOUT = common dso_local global i32 0, align 4
@MY_TXRUN = common dso_local global i32 0, align 4
@MY_RXRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to force tx and rx to idle \0A\00", align 1
@MY_PS1000 = common dso_local global i32 0, align 4
@MY_PS10 = common dso_local global i32 0, align 4
@PHY_BMCR_1000 = common dso_local global i32 0, align 4
@PHY_BMCR_SPEEDSEL = common dso_local global i32 0, align 4
@PHY_BMCR_DUPLEX = common dso_local global i32 0, align 4
@MY_FD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.my_softc*, i32)* @my_setcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_setcfg(%struct.my_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.my_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.my_softc* %0, %struct.my_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %8 = call i32 @MY_LOCK_ASSERT(%struct.my_softc* %7)
  %9 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %10 = load i32, i32* @MY_TCRRCR, align 4
  %11 = call i32 @CSR_READ_4(%struct.my_softc* %9, i32 %10)
  %12 = load i32, i32* @MY_TE, align 4
  %13 = load i32, i32* @MY_RE, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %18 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %19 = load i32, i32* @MY_TCRRCR, align 4
  %20 = load i32, i32* @MY_TE, align 4
  %21 = load i32, i32* @MY_RE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @MY_CLRBIT(%struct.my_softc* %18, i32 %19, i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %40, %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MY_TIMEOUT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = call i32 @DELAY(i32 10)
  %30 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %31 = load i32, i32* @MY_TCRRCR, align 4
  %32 = call i32 @CSR_READ_4(%struct.my_softc* %30, i32 %31)
  %33 = load i32, i32* @MY_TXRUN, align 4
  %34 = load i32, i32* @MY_RXRUN, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %43

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %24

43:                                               ; preds = %38, %24
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @MY_TIMEOUT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %49 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %43
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %55 = load i32, i32* @MY_TCRRCR, align 4
  %56 = load i32, i32* @MY_PS1000, align 4
  %57 = call i32 @MY_CLRBIT(%struct.my_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %59 = load i32, i32* @MY_TCRRCR, align 4
  %60 = load i32, i32* @MY_PS10, align 4
  %61 = call i32 @MY_CLRBIT(%struct.my_softc* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @PHY_BMCR_1000, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %53
  %67 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %68 = load i32, i32* @MY_TCRRCR, align 4
  %69 = load i32, i32* @MY_PS1000, align 4
  %70 = call i32 @MY_SETBIT(%struct.my_softc* %67, i32 %68, i32 %69)
  br label %82

71:                                               ; preds = %53
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @PHY_BMCR_SPEEDSEL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %78 = load i32, i32* @MY_TCRRCR, align 4
  %79 = load i32, i32* @MY_PS10, align 4
  %80 = call i32 @MY_SETBIT(%struct.my_softc* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %71
  br label %82

82:                                               ; preds = %81, %66
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @PHY_BMCR_DUPLEX, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %89 = load i32, i32* @MY_TCRRCR, align 4
  %90 = load i32, i32* @MY_FD, align 4
  %91 = call i32 @MY_SETBIT(%struct.my_softc* %88, i32 %89, i32 %90)
  br label %97

92:                                               ; preds = %82
  %93 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %94 = load i32, i32* @MY_TCRRCR, align 4
  %95 = load i32, i32* @MY_FD, align 4
  %96 = call i32 @MY_CLRBIT(%struct.my_softc* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %102 = load i32, i32* @MY_TCRRCR, align 4
  %103 = load i32, i32* @MY_TE, align 4
  %104 = load i32, i32* @MY_RE, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @MY_SETBIT(%struct.my_softc* %101, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %100, %97
  ret void
}

declare dso_local i32 @MY_LOCK_ASSERT(%struct.my_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.my_softc*, i32) #1

declare dso_local i32 @MY_CLRBIT(%struct.my_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @MY_SETBIT(%struct.my_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
