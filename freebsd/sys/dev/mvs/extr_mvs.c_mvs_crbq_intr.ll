; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_crbq_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_crbq_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i32, i64, %struct.TYPE_7__, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i64, %union.ccb* }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mvs_crpb = type { i32, i32 }

@EDMA_RESQIP = common dso_local global i32 0, align 4
@EDMA_RESQP_ERPQP_MASK = common dso_local global i32 0, align 4
@EDMA_RESQP_ERPQP_SHIFT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@MVS_CRPB_OFFSET = common dso_local global i64 0, align 8
@MVS_CRPB_SIZE = common dso_local global i32 0, align 4
@MVS_CRPB_TAG_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Unfilled CRPB %d (%d->%d) tag %d flags %04x rs %08x\0A\00", align 1
@EDMA_IE_EDEVERR = common dso_local global i32 0, align 4
@MVS_SLOT_RUNNING = common dso_local global i64 0, align 8
@MVS_CRPB_ATASTS_MASK = common dso_local global i32 0, align 4
@MVS_CRPB_ATASTS_SHIFT = common dso_local global i32 0, align 4
@MVS_ERR_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Unused tag in CRPB %d (%d->%d) tag %d flags %04x rs %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"CRPB with error %d tag %d flags %04x\0A\00", align 1
@MVS_MAX_SLOTS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@EDMA_RESQOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mvs_crbq_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_crbq_intr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_channel*, align 8
  %4 = alloca %struct.mvs_crpb*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.mvs_channel* @device_get_softc(i32 %12)
  store %struct.mvs_channel* %13, %struct.mvs_channel** %3, align 8
  %14 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %15 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @EDMA_RESQIP, align 4
  %18 = call i32 @ATA_INL(i32 %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %23 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @EDMA_RESQIP, align 4
  %26 = call i32 @ATA_INL(i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %21, %1
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @EDMA_RESQP_ERPQP_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @EDMA_RESQP_ERPQP_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %34 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %38 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %42 = call i32 @bus_dmamap_sync(i32 %36, i32 %40, i32 %41)
  %43 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %44 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %8, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %48 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %166, %27
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %172

53:                                               ; preds = %49
  %54 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %55 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MVS_CRPB_OFFSET, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i32, i32* @MVS_CRPB_SIZE, align 4
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %59, %63
  %65 = inttoptr i64 %64 to %struct.mvs_crpb*
  store %struct.mvs_crpb* %65, %struct.mvs_crpb** %4, align 8
  %66 = load %struct.mvs_crpb*, %struct.mvs_crpb** %4, align 8
  %67 = getelementptr inbounds %struct.mvs_crpb, %struct.mvs_crpb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16toh(i32 %68)
  %70 = load i32, i32* @MVS_CRPB_TAG_MASK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %9, align 4
  %72 = load %struct.mvs_crpb*, %struct.mvs_crpb** %4, align 8
  %73 = getelementptr inbounds %struct.mvs_crpb, %struct.mvs_crpb* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16toh(i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.mvs_crpb*, %struct.mvs_crpb** %4, align 8
  %77 = getelementptr inbounds %struct.mvs_crpb, %struct.mvs_crpb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 65535
  br i1 %79, label %80, label %96

80:                                               ; preds = %53
  %81 = load %struct.mvs_crpb*, %struct.mvs_crpb** %4, align 8
  %82 = getelementptr inbounds %struct.mvs_crpb, %struct.mvs_crpb* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 65535
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %93 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %94)
  br label %166

96:                                               ; preds = %80, %53
  %97 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %98 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @EDMA_IE_EDEVERR, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %159

106:                                              ; preds = %101, %96
  %107 = load %struct.mvs_crpb*, %struct.mvs_crpb** %4, align 8
  %108 = getelementptr inbounds %struct.mvs_crpb, %struct.mvs_crpb* %107, i32 0, i32 0
  store i32 65535, i32* %108, align 4
  %109 = load %struct.mvs_crpb*, %struct.mvs_crpb** %4, align 8
  %110 = getelementptr inbounds %struct.mvs_crpb, %struct.mvs_crpb* %109, i32 0, i32 1
  store i32 65535, i32* %110, align 4
  %111 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %112 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %111, i32 0, i32 5
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MVS_SLOT_RUNNING, align 8
  %120 = icmp sge i64 %118, %119
  br i1 %120, label %121, label %147

121:                                              ; preds = %106
  %122 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %123 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %122, i32 0, i32 5
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load %union.ccb*, %union.ccb** %128, align 8
  store %union.ccb* %129, %union.ccb** %5, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @MVS_CRPB_ATASTS_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* @MVS_CRPB_ATASTS_SHIFT, align 4
  %134 = ashr i32 %132, %133
  %135 = load %union.ccb*, %union.ccb** %5, align 8
  %136 = bitcast %union.ccb* %135 to %struct.TYPE_6__*
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 4
  %139 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %140 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %139, i32 0, i32 5
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i64 %143
  %145 = load i32, i32* @MVS_ERR_NONE, align 4
  %146 = call i32 @mvs_end_transaction(%struct.TYPE_8__* %144, i32 %145)
  br label %158

147:                                              ; preds = %106
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %155 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %148, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %147, %121
  br label %165

159:                                              ; preds = %101
  %160 = load i32, i32* %2, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %160, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %159, %158
  br label %166

166:                                              ; preds = %165, %85
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  %169 = load i32, i32* @MVS_MAX_SLOTS, align 4
  %170 = sub nsw i32 %169, 1
  %171 = and i32 %168, %170
  store i32 %171, i32* %8, align 4
  br label %49

172:                                              ; preds = %49
  %173 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %174 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %178 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %182 = call i32 @bus_dmamap_sync(i32 %176, i32 %180, i32 %181)
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %185 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %183, %186
  br i1 %187, label %188, label %202

188:                                              ; preds = %172
  %189 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %190 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @EDMA_RESQOP, align 4
  %193 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %194 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @EDMA_RESQP_ERPQP_SHIFT, align 4
  %199 = shl i32 %197, %198
  %200 = or i32 %196, %199
  %201 = call i32 @ATA_OUTL(i32 %191, i32 %192, i32 %200)
  br label %202

202:                                              ; preds = %188, %172
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @mvs_end_transaction(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
