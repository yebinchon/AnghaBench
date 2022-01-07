; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_setup_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_setup_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_softc = type { i64, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.dwc_hash_maddr_ctx = type { i32*, %struct.dwc_softc* }

@DWC_GMAC_ALT_DESC = common dso_local global i64 0, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@FRAME_FILTER_PM = common dso_local global i32 0, align 4
@FRAME_FILTER_HMC = common dso_local global i32 0, align 4
@dwc_hash_maddr = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@FRAME_FILTER_PR = common dso_local global i32 0, align 4
@MAC_FRAME_FILTER = common dso_local global i32 0, align 4
@GMAC_MAC_HTLOW = common dso_local global i32 0, align 4
@GMAC_MAC_HTHIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_softc*)* @dwc_setup_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_setup_rxfilter(%struct.dwc_softc* %0) #0 {
  %2 = alloca %struct.dwc_softc*, align 8
  %3 = alloca %struct.dwc_hash_maddr_ctx, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dwc_softc* %0, %struct.dwc_softc** %2, align 8
  %11 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %12 = call i32 @DWC_ASSERT_LOCKED(%struct.dwc_softc* %11)
  %13 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %14 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %13, i32 0, i32 1
  %15 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  store %struct.ifnet* %15, %struct.ifnet** %4, align 8
  %16 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %17 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DWC_GMAC_ALT_DESC, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 2, i32 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_ALLMULTI, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %1
  %30 = load i32, i32* @FRAME_FILTER_PM, align 4
  store i32 %30, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %41, %29
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.dwc_hash_maddr_ctx, %struct.dwc_hash_maddr_ctx* %3, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 -1, i32* %40, align 4
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %31

44:                                               ; preds = %31
  br label %66

45:                                               ; preds = %1
  %46 = load i32, i32* @FRAME_FILTER_HMC, align 4
  store i32 %46, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %57, %45
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.dwc_hash_maddr_ctx, %struct.dwc_hash_maddr_ctx* %3, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %47

60:                                               ; preds = %47
  %61 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %62 = getelementptr inbounds %struct.dwc_hash_maddr_ctx, %struct.dwc_hash_maddr_ctx* %3, i32 0, i32 1
  store %struct.dwc_softc* %61, %struct.dwc_softc** %62, align 8
  %63 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %64 = load i32, i32* @dwc_hash_maddr, align 4
  %65 = call i32 @if_foreach_llmaddr(%struct.ifnet* %63, i32 %64, %struct.dwc_hash_maddr_ctx* %3)
  br label %66

66:                                               ; preds = %60, %44
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IFF_PROMISC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @FRAME_FILTER_PR, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %79 = call i32* @IF_LLADDR(%struct.ifnet* %78)
  store i32* %79, i32** %5, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 8
  %87 = or i32 %82, %86
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 16
  %92 = or i32 %87, %91
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 24
  %97 = or i32 %92, %96
  store i32 %97, i32* %8, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 8
  %105 = or i32 %100, %104
  store i32 %105, i32* %7, align 4
  %106 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %107 = call i32 @MAC_ADDRESS_LOW(i32 0)
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @WRITE4(%struct.dwc_softc* %106, i32 %107, i32 %108)
  %110 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %111 = call i32 @MAC_ADDRESS_HIGH(i32 0)
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @WRITE4(%struct.dwc_softc* %110, i32 %111, i32 %112)
  %114 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %115 = load i32, i32* @MAC_FRAME_FILTER, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @WRITE4(%struct.dwc_softc* %114, i32 %115, i32 %116)
  %118 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %119 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DWC_GMAC_ALT_DESC, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %77
  %124 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %125 = load i32, i32* @GMAC_MAC_HTLOW, align 4
  %126 = getelementptr inbounds %struct.dwc_hash_maddr_ctx, %struct.dwc_hash_maddr_ctx* %3, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @WRITE4(%struct.dwc_softc* %124, i32 %125, i32 %129)
  %131 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %132 = load i32, i32* @GMAC_MAC_HTHIGH, align 4
  %133 = getelementptr inbounds %struct.dwc_hash_maddr_ctx, %struct.dwc_hash_maddr_ctx* %3, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @WRITE4(%struct.dwc_softc* %131, i32 %132, i32 %136)
  br label %158

138:                                              ; preds = %77
  store i32 0, i32* %10, align 4
  br label %139

139:                                              ; preds = %154, %138
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %139
  %144 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @HASH_TABLE_REG(i32 %145)
  %147 = getelementptr inbounds %struct.dwc_hash_maddr_ctx, %struct.dwc_hash_maddr_ctx* %3, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @WRITE4(%struct.dwc_softc* %144, i32 %146, i32 %152)
  br label %154

154:                                              ; preds = %143
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %139

157:                                              ; preds = %139
  br label %158

158:                                              ; preds = %157, %123
  ret void
}

declare dso_local i32 @DWC_ASSERT_LOCKED(%struct.dwc_softc*) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.dwc_hash_maddr_ctx*) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @WRITE4(%struct.dwc_softc*, i32, i32) #1

declare dso_local i32 @MAC_ADDRESS_LOW(i32) #1

declare dso_local i32 @MAC_ADDRESS_HIGH(i32) #1

declare dso_local i32 @HASH_TABLE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
