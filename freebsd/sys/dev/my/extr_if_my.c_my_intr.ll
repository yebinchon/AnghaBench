; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@MY_IMR = common dso_local global i32 0, align 4
@MY_ISR = common dso_local global i32 0, align 4
@MY_INTRS = common dso_local global i32 0, align 4
@MY_RI = common dso_local global i32 0, align 4
@MY_RBU = common dso_local global i32 0, align 4
@MY_RxErr = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@MY_TI = common dso_local global i32 0, align 4
@MY_ETI = common dso_local global i32 0, align 4
@MY_TBU = common dso_local global i32 0, align 4
@MY_FBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @my_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.my_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.my_softc*
  store %struct.my_softc* %7, %struct.my_softc** %3, align 8
  %8 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %9 = call i32 @MY_LOCK(%struct.my_softc* %8)
  %10 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %11 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %10, i32 0, i32 0
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_UP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %21 = call i32 @MY_UNLOCK(%struct.my_softc* %20)
  br label %103

22:                                               ; preds = %1
  %23 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %24 = load i32, i32* @MY_IMR, align 4
  %25 = call i32 @CSR_WRITE_4(%struct.my_softc* %23, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %87, %22
  %27 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %28 = load i32, i32* @MY_ISR, align 4
  %29 = call i32 @CSR_READ_4(%struct.my_softc* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @MY_INTRS, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %37 = load i32, i32* @MY_ISR, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @CSR_WRITE_4(%struct.my_softc* %36, i32 %37, i32 %38)
  br label %41

40:                                               ; preds = %26
  br label %88

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @MY_RI, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %48 = call i32 @my_rxeof(%struct.my_softc* %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MY_RBU, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MY_RxErr, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %49
  %60 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %61 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %62 = call i32 @if_inc_counter(%struct.ifnet* %60, i32 %61, i32 1)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @MY_TI, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %70 = call i32 @my_txeof(%struct.my_softc* %69)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @MY_ETI, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %78 = call i32 @my_txeof(%struct.my_softc* %77)
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @MY_TBU, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %86 = call i32 @my_txeoc(%struct.my_softc* %85)
  br label %87

87:                                               ; preds = %84, %79
  br label %26

88:                                               ; preds = %40
  %89 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %90 = load i32, i32* @MY_IMR, align 4
  %91 = load i32, i32* @MY_INTRS, align 4
  %92 = call i32 @CSR_WRITE_4(%struct.my_softc* %89, i32 %90, i32 %91)
  %93 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %94 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %93, i32 0, i32 1
  %95 = call i32 @IFQ_DRV_IS_EMPTY(i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %88
  %98 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %99 = call i32 @my_start_locked(%struct.ifnet* %98)
  br label %100

100:                                              ; preds = %97, %88
  %101 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %102 = call i32 @MY_UNLOCK(%struct.my_softc* %101)
  br label %103

103:                                              ; preds = %100, %19
  ret void
}

declare dso_local i32 @MY_LOCK(%struct.my_softc*) #1

declare dso_local i32 @MY_UNLOCK(%struct.my_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.my_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.my_softc*, i32) #1

declare dso_local i32 @my_rxeof(%struct.my_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @my_txeof(%struct.my_softc*) #1

declare dso_local i32 @my_txeoc(%struct.my_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @my_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
