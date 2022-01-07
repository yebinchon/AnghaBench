; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_begin_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_begin_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i32, i32, i64, i32, i64, i32, %struct.TYPE_11__, i32*, i32, i32*, i32, %struct.ahci_slot*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32 }
%struct.ahci_slot = type { %struct.TYPE_12__, i32, %union.ccb* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%union.ccb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@AHCI_SLOT_LOADING = common dso_local global i32 0, align 4
@ahci_dmasetprd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_channel*, %union.ccb*)* @ahci_begin_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_begin_transaction(%struct.ahci_channel* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.ahci_channel*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ahci_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ahci_channel* %0, %struct.ahci_channel** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %8 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %9 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %union.ccb*, %union.ccb** %4, align 8
  %12 = bitcast %union.ccb* %11 to %struct.TYPE_10__*
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XPT_ATA_IO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load %union.ccb*, %union.ccb** %4, align 8
  %19 = bitcast %union.ccb* %18 to %struct.TYPE_9__*
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %28 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %27, i32 0, i32 13
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load %union.ccb*, %union.ccb** %4, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_10__*
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %26, %17, %2
  %38 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %39 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %46 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %49 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  %52 = ashr i32 %47, %51
  %53 = xor i32 %52, -1
  %54 = call i32 @ffs(i32 %53)
  store i32 %54, i32* %6, align 4
  br label %56

55:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %62 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = load i32, i32* %7, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %59, %56
  %68 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %69 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = xor i32 %70, -1
  %72 = call i32 @ffs(i32 %71)
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %80

74:                                               ; preds = %59
  %75 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %76 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %74, %67
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %83 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %85 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %84, i32 0, i32 12
  %86 = load %struct.ahci_slot*, %struct.ahci_slot** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %86, i64 %88
  store %struct.ahci_slot* %89, %struct.ahci_slot** %5, align 8
  %90 = load %union.ccb*, %union.ccb** %4, align 8
  %91 = load %struct.ahci_slot*, %struct.ahci_slot** %5, align 8
  %92 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %91, i32 0, i32 2
  store %union.ccb* %90, %union.ccb** %92, align 8
  %93 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %94 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %80
  %98 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %99 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %100, 3
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %104 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %103, i32 0, i32 11
  %105 = call i32 @callout_stop(i32* %104)
  br label %106

106:                                              ; preds = %102, %97, %80
  %107 = load i32, i32* %6, align 4
  %108 = shl i32 1, %107
  %109 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %110 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %114 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %114, align 8
  %117 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %118 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %117, i32 0, i32 10
  %119 = load i32*, i32** %118, align 8
  %120 = load %union.ccb*, %union.ccb** %4, align 8
  %121 = bitcast %union.ccb* %120 to %struct.TYPE_10__*
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load %union.ccb*, %union.ccb** %4, align 8
  %128 = bitcast %union.ccb* %127 to %struct.TYPE_10__*
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @XPT_ATA_IO, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %163

133:                                              ; preds = %106
  %134 = load %union.ccb*, %union.ccb** %4, align 8
  %135 = bitcast %union.ccb* %134 to %struct.TYPE_9__*
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %163

142:                                              ; preds = %133
  %143 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %144 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %148 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %147, i32 0, i32 8
  %149 = load i32*, i32** %148, align 8
  %150 = load %union.ccb*, %union.ccb** %4, align 8
  %151 = bitcast %union.ccb* %150 to %struct.TYPE_10__*
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds i32, i32* %149, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load %union.ccb*, %union.ccb** %4, align 8
  %158 = bitcast %union.ccb* %157 to %struct.TYPE_10__*
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %162 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %161, i32 0, i32 5
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %142, %133, %106
  %164 = load %union.ccb*, %union.ccb** %4, align 8
  %165 = bitcast %union.ccb* %164 to %struct.TYPE_10__*
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @XPT_ATA_IO, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %188

170:                                              ; preds = %163
  %171 = load %union.ccb*, %union.ccb** %4, align 8
  %172 = bitcast %union.ccb* %171 to %struct.TYPE_9__*
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %177 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %178 = or i32 %176, %177
  %179 = and i32 %175, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %170
  %182 = load i32, i32* %6, align 4
  %183 = shl i32 1, %182
  %184 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %185 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %181, %170, %163
  %189 = load %union.ccb*, %union.ccb** %4, align 8
  %190 = bitcast %union.ccb* %189 to %struct.TYPE_10__*
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @CAM_DIR_MASK, align 4
  %194 = and i32 %192, %193
  %195 = load i32, i32* @CAM_DIR_NONE, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %213

197:                                              ; preds = %188
  %198 = load i32, i32* @AHCI_SLOT_LOADING, align 4
  %199 = load %struct.ahci_slot*, %struct.ahci_slot** %5, align 8
  %200 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 8
  %201 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %202 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %201, i32 0, i32 7
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ahci_slot*, %struct.ahci_slot** %5, align 8
  %206 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load %union.ccb*, %union.ccb** %4, align 8
  %210 = load i32, i32* @ahci_dmasetprd, align 4
  %211 = load %struct.ahci_slot*, %struct.ahci_slot** %5, align 8
  %212 = call i32 @bus_dmamap_load_ccb(i32 %204, i32 %208, %union.ccb* %209, i32 %210, %struct.ahci_slot* %211, i32 0)
  br label %219

213:                                              ; preds = %188
  %214 = load %struct.ahci_slot*, %struct.ahci_slot** %5, align 8
  %215 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  store i64 0, i64* %216, align 8
  %217 = load %struct.ahci_slot*, %struct.ahci_slot** %5, align 8
  %218 = call i32 @ahci_execute_transaction(%struct.ahci_slot* %217)
  br label %219

219:                                              ; preds = %213, %197
  ret void
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.ahci_slot*, i32) #1

declare dso_local i32 @ahci_execute_transaction(%struct.ahci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
