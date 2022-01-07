; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_tx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i64, i32, i64, i32, %struct.TYPE_6__*, %struct.ifnet* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.ifnet = type { i32 }
%struct.TYPE_7__ = type { i64 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@AE_TXS_UPDATE = common dso_local global i32 0, align 4
@AE_TXS_COUNT_DEFAULT = common dso_local global i32 0, align 4
@AE_FLAG_TXAVAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Size mismatch: TxS:%d TxD:%d\0A\00", align 1
@AE_TXD_BUFSIZE_DEFAULT = common dso_local global i32 0, align 4
@AE_TXS_SUCCESS = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Received stray Tx interrupt(s).\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @ae_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ae_tx_intr(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = call i32 @AE_LOCK_ASSERT(%struct.TYPE_8__* %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 13
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %19 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @bus_dmamap_sync(i32 %14, i32 %17, i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %29 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @bus_dmamap_sync(i32 %24, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %135, %1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 12
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %39
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %5, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @le16toh(i64 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @AE_TXS_UPDATE, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  br label %140

50:                                               ; preds = %32
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @AE_TXS_UPDATE, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i64 @htole16(i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 11
  %61 = call i32 @ae_update_stats_tx(i32 %58, i32* %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* @AE_TXS_COUNT_DEFAULT, align 4
  %67 = srem i32 %65, %66
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @AE_FLAG_TXAVAIL, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 10
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %77, %81
  %83 = inttoptr i64 %82 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %4, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %50
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @le16toh(i64 %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @le16toh(i64 %101)
  %103 = call i32 @device_printf(i32 %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %91, %50
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @le16toh(i64 %110)
  %112 = add nsw i32 %107, %111
  %113 = sext i32 %112 to i64
  %114 = add i64 %113, 16
  %115 = add i64 %114, 3
  %116 = and i64 %115, -4
  %117 = load i32, i32* @AE_TXD_BUFSIZE_DEFAULT, align 4
  %118 = sext i32 %117 to i64
  %119 = urem i64 %116, %118
  %120 = trunc i64 %119 to i32
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @AE_TXS_SUCCESS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %104
  %128 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %129 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %130 = call i32 @if_inc_counter(%struct.ifnet* %128, i32 %129, i32 1)
  br label %135

131:                                              ; preds = %104
  %132 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %133 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %134 = call i32 @if_inc_counter(%struct.ifnet* %132, i32 %133, i32 1)
  br label %135

135:                                              ; preds = %131, %127
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, -1
  store i64 %139, i64* %137, align 8
  br label %32

140:                                              ; preds = %49
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @AE_FLAG_TXAVAIL, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %140
  %148 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %149 = xor i32 %148, -1
  %150 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %151 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %147, %140
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp slt i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %161 = call i32 @if_printf(%struct.ifnet* %160, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  store i64 0, i64* %163, align 8
  br label %164

164:                                              ; preds = %159, %154
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 8
  store i64 0, i64* %171, align 8
  br label %172

172:                                              ; preds = %169, %164
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %180 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @bus_dmamap_sync(i32 %175, i32 %178, i32 %181)
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %190 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @bus_dmamap_sync(i32 %185, i32 %188, i32 %191)
  ret void
}

declare dso_local i32 @AE_LOCK_ASSERT(%struct.TYPE_8__*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le16toh(i64) #1

declare dso_local i64 @htole16(i32) #1

declare dso_local i32 @ae_update_stats_tx(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
