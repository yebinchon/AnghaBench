; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_rxfilter_90xB.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_rxfilter_90xB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@XL_W5_RX_FILTER = common dso_local global i32 0, align 4
@XL_RXFILTER_ALLFRAMES = common dso_local global i32 0, align 4
@XL_RXFILTER_ALLMULTI = common dso_local global i32 0, align 4
@XL_RXFILTER_BROADCAST = common dso_local global i32 0, align 4
@XL_RXFILTER_INDIVIDUAL = common dso_local global i32 0, align 4
@XL_RXFILTER_MULTIHASH = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@XL_HASHFILT_SIZE = common dso_local global i32 0, align 4
@XL_COMMAND = common dso_local global i32 0, align 4
@XL_CMD_RX_SET_HASH = common dso_local global i32 0, align 4
@xl_check_maddr_90xB = common dso_local global i32 0, align 4
@XL_CMD_RX_SET_FILT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xl_softc*)* @xl_rxfilter_90xB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_rxfilter_90xB(%struct.xl_softc* %0) #0 {
  %2 = alloca %struct.xl_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xl_softc* %0, %struct.xl_softc** %2, align 8
  %6 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %7 = call i32 @XL_LOCK_ASSERT(%struct.xl_softc* %6)
  %8 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %9 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %8, i32 0, i32 0
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = call i32 @XL_SEL_WIN(i32 5)
  %12 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %13 = load i32, i32* @XL_W5_RX_FILTER, align 4
  %14 = call i32 @CSR_READ_1(%struct.xl_softc* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @XL_RXFILTER_ALLFRAMES, align 4
  %16 = load i32, i32* @XL_RXFILTER_ALLMULTI, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @XL_RXFILTER_BROADCAST, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @XL_RXFILTER_INDIVIDUAL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @XL_RXFILTER_MULTIHASH, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @XL_RXFILTER_INDIVIDUAL, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_BROADCAST, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* @XL_RXFILTER_BROADCAST, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %1
  %41 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFF_PROMISC, align 4
  %45 = load i32, i32* @IFF_ALLMULTI, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %40
  %50 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IFF_PROMISC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @XL_RXFILTER_ALLFRAMES, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IFF_ALLMULTI, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @XL_RXFILTER_ALLMULTI, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %60
  br label %100

72:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %84, %72
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @XL_HASHFILT_SIZE, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %79 = load i32, i32* @XL_COMMAND, align 4
  %80 = load i32, i32* @XL_CMD_RX_SET_HASH, align 4
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @CSR_WRITE_2(%struct.xl_softc* %78, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %73

87:                                               ; preds = %73
  %88 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %89 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %88, i32 0, i32 0
  %90 = load %struct.ifnet*, %struct.ifnet** %89, align 8
  %91 = load i32, i32* @xl_check_maddr_90xB, align 4
  %92 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %93 = call i64 @if_foreach_llmaddr(%struct.ifnet* %90, i32 %91, %struct.xl_softc* %92)
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32, i32* @XL_RXFILTER_MULTIHASH, align 4
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %87
  br label %100

100:                                              ; preds = %99, %71
  %101 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %102 = load i32, i32* @XL_COMMAND, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @XL_CMD_RX_SET_FILT, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @CSR_WRITE_2(%struct.xl_softc* %101, i32 %102, i32 %105)
  %107 = call i32 @XL_SEL_WIN(i32 7)
  ret void
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

declare dso_local i32 @XL_SEL_WIN(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.xl_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.xl_softc*, i32, i32) #1

declare dso_local i64 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.xl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
