; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_am7990.c_am7990_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_am7990.c_am7990_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32, i32, i32, i32, i32, i32 (%struct.lance_softc*, i32, i32)*, i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)*, i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)*, %struct.ifnet* }
%struct.letmd = type { i32, i32, i64 }
%struct.ifnet = type { i32, i32 }
%struct.mbuf = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@LE_T1_OWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"missing buffer, no_td = %d, last_td = %d\0A\00", align 1
@LE_T1_STP = common dso_local global i32 0, align 4
@LE_T1_ENP = common dso_local global i32 0, align 4
@LE_XMD2_ONES = common dso_local global i32 0, align 4
@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_INEA = common dso_local global i32 0, align 4
@LE_C0_TDMD = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@LE_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lance_softc*)* @am7990_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am7990_start_locked(%struct.lance_softc* %0) #0 {
  %2 = alloca %struct.lance_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.letmd, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lance_softc* %0, %struct.lance_softc** %2, align 8
  %10 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %11 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %10, i32 0, i32 8
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %3, align 8
  %13 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @LE_LOCK_ASSERT(%struct.lance_softc* %13, i32 %14)
  %16 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %20 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %154

26:                                               ; preds = %1
  %27 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %28 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %144, %26
  %31 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %32 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %35 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 1
  %41 = call i32 @IFQ_DRV_IS_EMPTY(i32* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %38, %30
  %45 = phi i1 [ false, %30 ], [ %43, %38 ]
  br i1 %45, label %46, label %145

46:                                               ; preds = %44
  %47 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @LE_TMDADDR(%struct.lance_softc* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %51 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %50, i32 0, i32 7
  %52 = load i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)*, i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)** %51, align 8
  %53 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 %52(%struct.lance_softc* %53, %struct.letmd* %4, i32 %54, i32 16)
  %56 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @LE_T1_OWN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %46
  %62 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %63 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %68 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %69 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %72 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (%struct.ifnet*, i8*, i32, ...) @if_printf(%struct.ifnet* %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %61, %46
  %76 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 1
  %78 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %79 = call i32 @IFQ_DRV_DEQUEUE(i32* %77, %struct.mbuf* %78)
  %80 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %81 = icmp eq %struct.mbuf* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %145

83:                                               ; preds = %75
  %84 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %86 = call i32 @BPF_MTAP(%struct.ifnet* %84, %struct.mbuf* %85)
  %87 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %88 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @LE_TBUFADDR(%struct.lance_softc* %88, i32 %89)
  %91 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %92 = call i32 @lance_put(%struct.lance_softc* %87, i32 %90, %struct.mbuf* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* @LE_T1_OWN, align 4
  %94 = load i32, i32* @LE_T1_STP, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @LE_T1_ENP, align 4
  %97 = or i32 %95, %96
  %98 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 0
  store i32 %97, i32* %98, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sub nsw i32 0, %99
  %101 = load i32, i32* @LE_XMD2_ONES, align 4
  %102 = or i32 %100, %101
  %103 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %106 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %105, i32 0, i32 6
  %107 = load i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)*, i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)** %106, align 8
  %108 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 %107(%struct.lance_softc* %108, %struct.letmd* %4, i32 %109, i32 16)
  %111 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %112 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %111, i32 0, i32 5
  %113 = load i32 (%struct.lance_softc*, i32, i32)*, i32 (%struct.lance_softc*, i32, i32)** %112, align 8
  %114 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %115 = load i32, i32* @LE_CSR0, align 4
  %116 = load i32, i32* @LE_C0_INEA, align 4
  %117 = load i32, i32* @LE_C0_TDMD, align 4
  %118 = or i32 %116, %117
  %119 = call i32 %113(%struct.lance_softc* %114, i32 %115, i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  %124 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %125 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %83
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %128, %83
  %130 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %131 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %135 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %133, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %129
  %139 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %140 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %141 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %145

144:                                              ; preds = %129
  br label %30

145:                                              ; preds = %138, %82, %44
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %148 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %7, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %153 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %152, i32 0, i32 4
  store i32 5, i32* %153, align 8
  br label %154

154:                                              ; preds = %25, %151, %145
  ret void
}

declare dso_local i32 @LE_LOCK_ASSERT(%struct.lance_softc*, i32) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @LE_TMDADDR(%struct.lance_softc*, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i32, ...) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @lance_put(%struct.lance_softc*, i32, %struct.mbuf*) #1

declare dso_local i32 @LE_TBUFADDR(%struct.lance_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
