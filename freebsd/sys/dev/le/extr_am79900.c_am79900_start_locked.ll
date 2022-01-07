; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_am79900.c_am79900_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_am79900.c_am79900_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32, i32, i32, i32, i32, i32 (%struct.lance_softc*, i32, i32)*, i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)*, i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)*, %struct.ifnet* }
%struct.letmd = type { i64, i64, i32 }
%struct.ifnet = type { i32, i32 }
%struct.mbuf = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@LE_T1_OWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"missing buffer, no_td = %d, last_td = %d\0A\00", align 1
@LE_T1_STP = common dso_local global i32 0, align 4
@LE_T1_ENP = common dso_local global i32 0, align 4
@LE_T1_ONES = common dso_local global i32 0, align 4
@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_INEA = common dso_local global i32 0, align 4
@LE_C0_TDMD = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@LE_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lance_softc*)* @am79900_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am79900_start_locked(%struct.lance_softc* %0) #0 {
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
  br label %158

26:                                               ; preds = %1
  %27 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %28 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %148, %26
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
  br i1 %45, label %46, label %149

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
  %55 = call i32 %52(%struct.lance_softc* %53, %struct.letmd* %4, i32 %54, i32 24)
  %56 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @LE_LE32TOH(i32 %57)
  %59 = load i32, i32* @LE_T1_OWN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %46
  %63 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %64 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %69 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %70 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %73 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (%struct.ifnet*, i8*, i32, ...) @if_printf(%struct.ifnet* %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %62, %46
  %77 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 1
  %79 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %80 = call i32 @IFQ_DRV_DEQUEUE(i32* %78, %struct.mbuf* %79)
  %81 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %82 = icmp eq %struct.mbuf* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %149

84:                                               ; preds = %76
  %85 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %86 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %87 = call i32 @BPF_MTAP(%struct.ifnet* %85, %struct.mbuf* %86)
  %88 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %89 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @LE_TBUFADDR(%struct.lance_softc* %89, i32 %90)
  %92 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %93 = call i32 @lance_put(%struct.lance_softc* %88, i32 %91, %struct.mbuf* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* @LE_T1_OWN, align 4
  %95 = load i32, i32* @LE_T1_STP, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @LE_T1_ENP, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @LE_T1_ONES, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 0, %101
  %103 = and i32 %102, 4095
  %104 = or i32 %100, %103
  %105 = call i32 @LE_HTOLE32(i32 %104)
  %106 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 2
  store i32 %105, i32* %106, align 8
  %107 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %110 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %109, i32 0, i32 6
  %111 = load i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)*, i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)** %110, align 8
  %112 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 %111(%struct.lance_softc* %112, %struct.letmd* %4, i32 %113, i32 24)
  %115 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %116 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %115, i32 0, i32 5
  %117 = load i32 (%struct.lance_softc*, i32, i32)*, i32 (%struct.lance_softc*, i32, i32)** %116, align 8
  %118 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %119 = load i32, i32* @LE_CSR0, align 4
  %120 = load i32, i32* @LE_C0_INEA, align 4
  %121 = load i32, i32* @LE_C0_TDMD, align 4
  %122 = or i32 %120, %121
  %123 = call i32 %117(%struct.lance_softc* %118, i32 %119, i32 %122)
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  %128 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %129 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %84
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %132, %84
  %134 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %135 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %139 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %137, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %133
  %143 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %144 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %145 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %149

148:                                              ; preds = %133
  br label %30

149:                                              ; preds = %142, %83, %44
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %152 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* %7, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %157 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %156, i32 0, i32 4
  store i32 5, i32* %157, align 8
  br label %158

158:                                              ; preds = %25, %155, %149
  ret void
}

declare dso_local i32 @LE_LOCK_ASSERT(%struct.lance_softc*, i32) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @LE_TMDADDR(%struct.lance_softc*, i32) #1

declare dso_local i32 @LE_LE32TOH(i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i32, ...) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @lance_put(%struct.lance_softc*, i32, %struct.mbuf*) #1

declare dso_local i32 @LE_TBUFADDR(%struct.lance_softc*, i32) #1

declare dso_local i32 @LE_HTOLE32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
