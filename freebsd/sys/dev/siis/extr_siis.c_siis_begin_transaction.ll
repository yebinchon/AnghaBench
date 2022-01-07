; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_begin_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_begin_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.siis_channel = type { i32, i32, %struct.TYPE_11__, i32*, i32, %struct.siis_slot*, %struct.TYPE_7__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.siis_slot = type { i32, %struct.TYPE_12__, i32, %union.ccb* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@SIIS_MAX_SLOTS = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@SIIS_SLOT_LOADING = common dso_local global i32 0, align 4
@siis_dmasetprd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %union.ccb*)* @siis_begin_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siis_begin_transaction(i32 %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.siis_channel*, align 8
  %6 = alloca %struct.siis_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.siis_channel* @device_get_softc(i32 %9)
  store %struct.siis_channel* %10, %struct.siis_channel** %5, align 8
  %11 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %12 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %11, i32 0, i32 7
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* %12, i32 %13)
  %15 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %union.ccb*, %union.ccb** %4, align 8
  %17 = bitcast %union.ccb* %16 to %struct.TYPE_10__*
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XPT_ATA_IO, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %2
  %23 = load %union.ccb*, %union.ccb** %4, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_9__*
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %33 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %32, i32 0, i32 6
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load %union.ccb*, %union.ccb** %4, align 8
  %36 = bitcast %union.ccb* %35 to %struct.TYPE_10__*
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %31, %22, %2
  %43 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %44 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 31, %47
  %49 = ashr i32 2147483647, %48
  %50 = and i32 %46, %49
  %51 = call i32 @fls(i32 %50)
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %54 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %53, i32 0, i32 5
  %55 = load %struct.siis_slot*, %struct.siis_slot** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %55, i64 %57
  store %struct.siis_slot* %58, %struct.siis_slot** %6, align 8
  %59 = load %union.ccb*, %union.ccb** %4, align 8
  %60 = load %struct.siis_slot*, %struct.siis_slot** %6, align 8
  %61 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %60, i32 0, i32 3
  store %union.ccb* %59, %union.ccb** %61, align 8
  %62 = load %struct.siis_slot*, %struct.siis_slot** %6, align 8
  %63 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = shl i32 1, %64
  %66 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %67 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %71 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %union.ccb*, %union.ccb** %4, align 8
  %75 = bitcast %union.ccb* %74 to %struct.TYPE_10__*
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @XPT_ATA_IO, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %42
  %81 = load %union.ccb*, %union.ccb** %4, align 8
  %82 = bitcast %union.ccb* %81 to %struct.TYPE_9__*
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %80
  %90 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %91 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load %union.ccb*, %union.ccb** %4, align 8
  %94 = bitcast %union.ccb* %93 to %struct.TYPE_10__*
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %89, %80, %42
  %101 = load %union.ccb*, %union.ccb** %4, align 8
  %102 = bitcast %union.ccb* %101 to %struct.TYPE_10__*
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @XPT_ATA_IO, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %127

107:                                              ; preds = %100
  %108 = load %union.ccb*, %union.ccb** %4, align 8
  %109 = bitcast %union.ccb* %108 to %struct.TYPE_9__*
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %114 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %107
  %119 = load %struct.siis_slot*, %struct.siis_slot** %6, align 8
  %120 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 1, %121
  %123 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %124 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %118, %107, %100
  %128 = load %struct.siis_slot*, %struct.siis_slot** %6, align 8
  %129 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %union.ccb*, %union.ccb** %4, align 8
  %132 = bitcast %union.ccb* %131 to %struct.TYPE_10__*
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @CAM_DIR_MASK, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* @CAM_DIR_NONE, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %127
  %140 = load i32, i32* @SIIS_SLOT_LOADING, align 4
  %141 = load %struct.siis_slot*, %struct.siis_slot** %6, align 8
  %142 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %144 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.siis_slot*, %struct.siis_slot** %6, align 8
  %148 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %union.ccb*, %union.ccb** %4, align 8
  %152 = load i32, i32* @siis_dmasetprd, align 4
  %153 = load %struct.siis_slot*, %struct.siis_slot** %6, align 8
  %154 = call i32 @bus_dmamap_load_ccb(i32 %146, i32 %150, %union.ccb* %151, i32 %152, %struct.siis_slot* %153, i32 0)
  br label %158

155:                                              ; preds = %127
  %156 = load %struct.siis_slot*, %struct.siis_slot** %6, align 8
  %157 = call i32 @siis_execute_transaction(%struct.siis_slot* %156)
  br label %158

158:                                              ; preds = %155, %139
  ret void
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.siis_slot*, i32) #1

declare dso_local i32 @siis_execute_transaction(%struct.siis_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
