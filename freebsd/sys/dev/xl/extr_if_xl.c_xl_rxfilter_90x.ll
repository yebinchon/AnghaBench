; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_rxfilter_90x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_rxfilter_90x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@XL_W5_RX_FILTER = common dso_local global i32 0, align 4
@XL_RXFILTER_ALLFRAMES = common dso_local global i32 0, align 4
@XL_RXFILTER_ALLMULTI = common dso_local global i32 0, align 4
@XL_RXFILTER_BROADCAST = common dso_local global i32 0, align 4
@XL_RXFILTER_INDIVIDUAL = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@xl_check_maddr_90x = common dso_local global i32 0, align 4
@XL_COMMAND = common dso_local global i32 0, align 4
@XL_CMD_RX_SET_FILT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xl_softc*)* @xl_rxfilter_90x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_rxfilter_90x(%struct.xl_softc* %0) #0 {
  %2 = alloca %struct.xl_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.xl_softc* %0, %struct.xl_softc** %2, align 8
  %5 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %6 = call i32 @XL_LOCK_ASSERT(%struct.xl_softc* %5)
  %7 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %8 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %7, i32 0, i32 0
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = call i32 @XL_SEL_WIN(i32 5)
  %11 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %12 = load i32, i32* @XL_W5_RX_FILTER, align 4
  %13 = call i32 @CSR_READ_1(%struct.xl_softc* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @XL_RXFILTER_ALLFRAMES, align 4
  %15 = load i32, i32* @XL_RXFILTER_ALLMULTI, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @XL_RXFILTER_BROADCAST, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @XL_RXFILTER_INDIVIDUAL, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @XL_RXFILTER_INDIVIDUAL, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_BROADCAST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* @XL_RXFILTER_BROADCAST, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %1
  %38 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = load i32, i32* @IFF_ALLMULTI, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %37
  %47 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFF_PROMISC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @XL_RXFILTER_ALLFRAMES, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFF_ALLMULTI, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @XL_RXFILTER_ALLMULTI, align 4
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %57
  br label %75

69:                                               ; preds = %37
  %70 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %71 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %70, i32 0, i32 0
  %72 = load %struct.ifnet*, %struct.ifnet** %71, align 8
  %73 = load i32, i32* @xl_check_maddr_90x, align 4
  %74 = call i32 @if_foreach_llmaddr(%struct.ifnet* %72, i32 %73, i32* %4)
  br label %75

75:                                               ; preds = %69, %68
  %76 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %77 = load i32, i32* @XL_COMMAND, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @XL_CMD_RX_SET_FILT, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @CSR_WRITE_2(%struct.xl_softc* %76, i32 %77, i32 %80)
  %82 = call i32 @XL_SEL_WIN(i32 7)
  ret void
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

declare dso_local i32 @XL_SEL_WIN(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.xl_softc*, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.xl_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
