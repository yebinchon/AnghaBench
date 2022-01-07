; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_clean_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_clean_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i64, i64, i32, %struct.TYPE_2__*, i32, %struct.mbuf**, i32**, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mbuf = type { i32 }

@CGEM_TXDESC_USED = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@CGEM_TXDESC_AHB_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cgem_clean_tx: Whoa! AHB error, addr=0x%x\0A\00", align 1
@CGEM_TXDESC_RETRY_ERR = common dso_local global i32 0, align 4
@CGEM_TXDESC_LATE_COLL = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@CGEM_TXDESC_LAST_BUF = common dso_local global i32 0, align 4
@CGEM_TXDESC_WRAP = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgem_softc*)* @cgem_clean_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgem_clean_tx(%struct.cgem_softc* %0) #0 {
  %2 = alloca %struct.cgem_softc*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  store %struct.cgem_softc* %0, %struct.cgem_softc** %2, align 8
  %5 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %6 = call i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc* %5)
  br label %7

7:                                                ; preds = %184, %1
  %8 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %9 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %14 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %17 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @CGEM_TXDESC_USED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %12, %7
  %26 = phi i1 [ false, %7 ], [ %24, %12 ]
  br i1 %26, label %27, label %194

27:                                               ; preds = %25
  %28 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %29 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %32 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %31, i32 0, i32 6
  %33 = load i32**, i32*** %32, align 8
  %34 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %35 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32*, i32** %33, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %40 = call i32 @bus_dmamap_sync(i32 %30, i32* %38, i32 %39)
  %41 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %42 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %45 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %44, i32 0, i32 6
  %46 = load i32**, i32*** %45, align 8
  %47 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %48 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32*, i32** %46, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @bus_dmamap_unload(i32 %43, i32* %51)
  %53 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %54 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %57 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %56, i32 0, i32 6
  %58 = load i32**, i32*** %57, align 8
  %59 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %60 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32*, i32** %58, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @bus_dmamap_destroy(i32 %55, i32* %63)
  %65 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %66 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %65, i32 0, i32 6
  %67 = load i32**, i32*** %66, align 8
  %68 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %69 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32*, i32** %67, i64 %70
  store i32* null, i32** %71, align 8
  %72 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %73 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %72, i32 0, i32 5
  %74 = load %struct.mbuf**, %struct.mbuf*** %73, align 8
  %75 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %76 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %74, i64 %77
  %79 = load %struct.mbuf*, %struct.mbuf** %78, align 8
  store %struct.mbuf* %79, %struct.mbuf** %3, align 8
  %80 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %81 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %80, i32 0, i32 5
  %82 = load %struct.mbuf**, %struct.mbuf*** %81, align 8
  %83 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %84 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %82, i64 %85
  store %struct.mbuf* null, %struct.mbuf** %86, align 8
  %87 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %88 = call i32 @m_freem(%struct.mbuf* %87)
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @CGEM_TXDESC_AHB_ERR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %27
  %94 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %95 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %98 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %101 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @device_printf(i32 %96, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %105)
  br label %127

107:                                              ; preds = %27
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @CGEM_TXDESC_RETRY_ERR, align 4
  %110 = load i32, i32* @CGEM_TXDESC_LATE_COLL, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %116 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %119 = call i32 @if_inc_counter(i32 %117, i32 %118, i32 1)
  br label %126

120:                                              ; preds = %107
  %121 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %122 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %125 = call i32 @if_inc_counter(i32 %123, i32 %124, i32 1)
  br label %126

126:                                              ; preds = %120, %114
  br label %127

127:                                              ; preds = %126, %93
  br label %128

128:                                              ; preds = %146, %127
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @CGEM_TXDESC_LAST_BUF, align 4
  %131 = and i32 %129, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %171

133:                                              ; preds = %128
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @CGEM_TXDESC_WRAP, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %140 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  br label %146

141:                                              ; preds = %133
  %142 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %143 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %141, %138
  %147 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %148 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, -1
  store i64 %150, i64* %148, align 8
  %151 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %152 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %151, i32 0, i32 3
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %155 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @CGEM_TXDESC_USED, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %164 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %163, i32 0, i32 3
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %167 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  store i32 %162, i32* %170, align 4
  br label %128

171:                                              ; preds = %128
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* @CGEM_TXDESC_WRAP, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %178 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %177, i32 0, i32 1
  store i64 0, i64* %178, align 8
  br label %184

179:                                              ; preds = %171
  %180 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %181 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %181, align 8
  br label %184

184:                                              ; preds = %179, %176
  %185 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %186 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, -1
  store i64 %188, i64* %186, align 8
  %189 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %190 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %193 = call i32 @if_setdrvflagbits(i32 %191, i32 0, i32 %192)
  br label %7

194:                                              ; preds = %25
  ret void
}

declare dso_local i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
