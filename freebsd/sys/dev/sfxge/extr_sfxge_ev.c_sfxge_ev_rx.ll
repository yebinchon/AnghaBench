; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_evq = type { i64, i64, %struct.sfxge_softc* }
%struct.sfxge_softc = type { i32, i32 }
%struct.sfxge_rxq = type { i64, i32, i32, i32, i64, %struct.sfxge_rx_sw_desc* }
%struct.sfxge_rx_sw_desc = type { i64, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@SFXGE_RXQ_STARTED = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"RX completion out of order (id=%#x delta=%u flags=%#x); resetting\0A\00", align 1
@EFX_DISCARD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"rx_desc->flags != EFX_DISCARD\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"size > (1 << 16)\00", align 1
@SFXGE_RX_BATCH = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@SFXGE_EV_BATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i8*)* @sfxge_ev_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_ev_rx(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sfxge_evq*, align 8
  %12 = alloca %struct.sfxge_softc*, align 8
  %13 = alloca %struct.sfxge_rxq*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sfxge_rx_sw_desc*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.sfxge_evq*
  store %struct.sfxge_evq* %18, %struct.sfxge_evq** %11, align 8
  %19 = load %struct.sfxge_evq*, %struct.sfxge_evq** %11, align 8
  %20 = call i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq* %19)
  %21 = load %struct.sfxge_evq*, %struct.sfxge_evq** %11, align 8
  %22 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %21, i32 0, i32 2
  %23 = load %struct.sfxge_softc*, %struct.sfxge_softc** %22, align 8
  store %struct.sfxge_softc* %23, %struct.sfxge_softc** %12, align 8
  %24 = load %struct.sfxge_evq*, %struct.sfxge_evq** %11, align 8
  %25 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %175

29:                                               ; preds = %5
  %30 = load %struct.sfxge_evq*, %struct.sfxge_evq** %11, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.sfxge_rxq* @sfxge_get_rxq_by_label(%struct.sfxge_evq* %30, i32 %31)
  store %struct.sfxge_rxq* %32, %struct.sfxge_rxq** %13, align 8
  %33 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %13, align 8
  %34 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SFXGE_RXQ_STARTED, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @__predict_false(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %175

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  %45 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %13, align 8
  %46 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %44, %47
  store i32 %48, i32* %14, align 4
  %49 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %13, align 8
  %50 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %13, align 8
  %53 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %51, %54
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp uge i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %42
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub i32 %60, %61
  br label %71

63:                                               ; preds = %42
  %64 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %13, align 8
  %65 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32, i32* %14, align 4
  %70 = add i32 %68, %69
  br label %71

71:                                               ; preds = %63, %59
  %72 = phi i32 [ %62, %59 ], [ %70, %63 ]
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %13, align 8
  %75 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %106

80:                                               ; preds = %71
  %81 = load i32, i32* %15, align 4
  %82 = icmp ule i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.sfxge_softc*, %struct.sfxge_softc** %12, align 8
  %86 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.TYPE_2__* @efx_nic_cfg_get(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ugt i32 %84, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %83, %80
  %93 = load i64, i64* @B_TRUE, align 8
  %94 = load %struct.sfxge_evq*, %struct.sfxge_evq** %11, align 8
  %95 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.sfxge_softc*, %struct.sfxge_softc** %12, align 8
  %97 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %100, i8* %101)
  %103 = load %struct.sfxge_softc*, %struct.sfxge_softc** %12, align 8
  %104 = call i32 @sfxge_schedule_reset(%struct.sfxge_softc* %103)
  br label %175

105:                                              ; preds = %83
  br label %106

106:                                              ; preds = %105, %71
  %107 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %13, align 8
  %108 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %107, i32 0, i32 5
  %109 = load %struct.sfxge_rx_sw_desc*, %struct.sfxge_rx_sw_desc** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.sfxge_rx_sw_desc, %struct.sfxge_rx_sw_desc* %109, i64 %111
  store %struct.sfxge_rx_sw_desc* %112, %struct.sfxge_rx_sw_desc** %16, align 8
  %113 = load %struct.sfxge_rx_sw_desc*, %struct.sfxge_rx_sw_desc** %16, align 8
  %114 = getelementptr inbounds %struct.sfxge_rx_sw_desc, %struct.sfxge_rx_sw_desc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @prefetch_read_many(i32 %115)
  br label %117

117:                                              ; preds = %148, %106
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %155

121:                                              ; preds = %117
  %122 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %13, align 8
  %123 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %122, i32 0, i32 5
  %124 = load %struct.sfxge_rx_sw_desc*, %struct.sfxge_rx_sw_desc** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.sfxge_rx_sw_desc, %struct.sfxge_rx_sw_desc* %124, i64 %126
  store %struct.sfxge_rx_sw_desc* %127, %struct.sfxge_rx_sw_desc** %16, align 8
  %128 = load %struct.sfxge_rx_sw_desc*, %struct.sfxge_rx_sw_desc** %16, align 8
  %129 = getelementptr inbounds %struct.sfxge_rx_sw_desc, %struct.sfxge_rx_sw_desc* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @EFX_DISCARD, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @KASSERT(i32 %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i8*, i8** %10, align 8
  %136 = ptrtoint i8* %135 to i64
  %137 = load %struct.sfxge_rx_sw_desc*, %struct.sfxge_rx_sw_desc** %16, align 8
  %138 = getelementptr inbounds %struct.sfxge_rx_sw_desc, %struct.sfxge_rx_sw_desc* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load i32, i32* %9, align 4
  %140 = icmp slt i32 %139, 65536
  %141 = zext i1 %140 to i32
  %142 = call i32 @KASSERT(i32 %141, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = load %struct.sfxge_rx_sw_desc*, %struct.sfxge_rx_sw_desc** %16, align 8
  %147 = getelementptr inbounds %struct.sfxge_rx_sw_desc, %struct.sfxge_rx_sw_desc* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %121
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  %151 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %13, align 8
  %152 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %150, %153
  store i32 %154, i32* %8, align 4
  br label %117

155:                                              ; preds = %117
  %156 = load %struct.sfxge_evq*, %struct.sfxge_evq** %11, align 8
  %157 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %157, align 8
  %160 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %13, align 8
  %161 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %13, align 8
  %165 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = sub nsw i64 %163, %166
  %168 = load i64, i64* @SFXGE_RX_BATCH, align 8
  %169 = icmp sge i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %155
  %171 = load %struct.sfxge_evq*, %struct.sfxge_evq** %11, align 8
  %172 = load i32, i32* @B_FALSE, align 4
  %173 = call i32 @sfxge_ev_qcomplete(%struct.sfxge_evq* %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %155
  br label %175

175:                                              ; preds = %174, %92, %41, %28
  %176 = load %struct.sfxge_evq*, %struct.sfxge_evq** %11, align 8
  %177 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @SFXGE_EV_BATCH, align 8
  %180 = icmp sge i64 %178, %179
  %181 = zext i1 %180 to i32
  ret i32 %181
}

declare dso_local i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq*) #1

declare dso_local %struct.sfxge_rxq* @sfxge_get_rxq_by_label(%struct.sfxge_evq*, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local %struct.TYPE_2__* @efx_nic_cfg_get(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @sfxge_schedule_reset(%struct.sfxge_softc*) #1

declare dso_local i32 @prefetch_read_many(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sfxge_ev_qcomplete(%struct.sfxge_evq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
