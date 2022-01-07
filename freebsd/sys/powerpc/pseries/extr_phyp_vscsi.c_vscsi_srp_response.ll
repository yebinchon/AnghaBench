; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_srp_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_srp_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsi_xfer = type { %union.ccb*, i32, i64, %struct.vscsi_softc* }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i32 }
%struct.vscsi_softc = type { i32, i64 }
%struct.vscsi_crq = type { i64 }
%struct.srp_rsp = type { i64, i32, i64, i64, i64, i64, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SCSI_STATUS_OK = common dso_local global i64 0, align 8
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@SRP_RSPVALID = common dso_local global i32 0, align 4
@SRP_SNSVALID = common dso_local global i32 0, align 4
@SRP_DOOVER = common dso_local global i32 0, align 4
@SRP_DOUNDER = common dso_local global i32 0, align 4
@SRP_DIOVER = common dso_local global i32 0, align 4
@SRP_DIUNDER = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vscsi_xfer*, %struct.vscsi_crq*)* @vscsi_srp_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vscsi_srp_response(%struct.vscsi_xfer* %0, %struct.vscsi_crq* %1) #0 {
  %3 = alloca %struct.vscsi_xfer*, align 8
  %4 = alloca %struct.vscsi_crq*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.vscsi_softc*, align 8
  %7 = alloca %struct.srp_rsp*, align 8
  %8 = alloca i32, align 4
  store %struct.vscsi_xfer* %0, %struct.vscsi_xfer** %3, align 8
  store %struct.vscsi_crq* %1, %struct.vscsi_crq** %4, align 8
  %9 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %10 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %9, i32 0, i32 0
  %11 = load %union.ccb*, %union.ccb** %10, align 8
  store %union.ccb* %11, %union.ccb** %5, align 8
  %12 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %13 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %12, i32 0, i32 3
  %14 = load %struct.vscsi_softc*, %struct.vscsi_softc** %13, align 8
  store %struct.vscsi_softc* %14, %struct.vscsi_softc** %6, align 8
  %15 = load %struct.vscsi_softc*, %struct.vscsi_softc** %6, align 8
  %16 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %20 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = bitcast i32* %22 to %struct.srp_rsp*
  store %struct.srp_rsp* %23, %struct.srp_rsp** %7, align 8
  %24 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %25 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %union.ccb*, %union.ccb** %5, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load %union.ccb*, %union.ccb** %5, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SCSI_STATUS_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load i32, i32* @CAM_REQ_CMP, align 4
  %38 = load %union.ccb*, %union.ccb** %5, align 8
  %39 = bitcast %union.ccb* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  br label %46

41:                                               ; preds = %2
  %42 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %43 = load %union.ccb*, %union.ccb** %5, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_3__*
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %union.ccb*, %union.ccb** %5, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_3__*
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CAM_REQ_CMP, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %55 = load %union.ccb*, %union.ccb** %5, align 8
  %56 = bitcast %union.ccb* %55 to %struct.TYPE_3__*
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  %60 = load %union.ccb*, %union.ccb** %5, align 8
  %61 = bitcast %union.ccb* %60 to %struct.TYPE_3__*
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @xpt_freeze_devq(i32 %63, i32 1)
  br label %65

65:                                               ; preds = %53, %46
  %66 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %67 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SRP_RSPVALID, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %74 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %73, i32 0, i32 5
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %77 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SRP_SNSVALID, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %84 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %83, i32 0, i32 4
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %75
  %86 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %87 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SRP_DOOVER, align 4
  %90 = load i32, i32* @SRP_DOUNDER, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %85
  %95 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %96 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %94, %85
  %98 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %99 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SRP_DIOVER, align 4
  %102 = load i32, i32* @SRP_DIUNDER, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %97
  %107 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %108 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %106, %97
  %110 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %111 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @SRP_SNSVALID, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %161

116:                                              ; preds = %109
  %117 = load %union.ccb*, %union.ccb** %5, align 8
  %118 = bitcast %union.ccb* %117 to %struct.TYPE_4__*
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  %120 = call i32 @bzero(i32* %119, i32 4)
  %121 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %122 = load %union.ccb*, %union.ccb** %5, align 8
  %123 = bitcast %union.ccb* %122 to %struct.TYPE_3__*
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %121
  store i32 %126, i32* %124, align 4
  %127 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %128 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @be32toh(i64 %129)
  %131 = load %union.ccb*, %union.ccb** %5, align 8
  %132 = bitcast %union.ccb* %131 to %struct.TYPE_4__*
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @min(i64 %130, i64 %134)
  store i32 %135, i32* %8, align 4
  %136 = load %union.ccb*, %union.ccb** %5, align 8
  %137 = bitcast %union.ccb* %136 to %struct.TYPE_4__*
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  %139 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %140 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %139, i32 0, i32 6
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %143 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @be32toh(i64 %144)
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @memcpy(i32* %138, i32* %146, i32 %147)
  %149 = load %union.ccb*, %union.ccb** %5, align 8
  %150 = bitcast %union.ccb* %149 to %struct.TYPE_4__*
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %154 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @be32toh(i64 %155)
  %157 = sub i64 %152, %156
  %158 = load %union.ccb*, %union.ccb** %5, align 8
  %159 = bitcast %union.ccb* %158 to %struct.TYPE_4__*
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  store i64 %157, i64* %160, align 8
  br label %161

161:                                              ; preds = %116, %109
  %162 = load %union.ccb*, %union.ccb** %5, align 8
  %163 = bitcast %union.ccb* %162 to %struct.TYPE_3__*
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @CAM_DIR_MASK, align 4
  %167 = and i32 %165, %166
  switch i32 %167, label %182 [
    i32 128, label %168
    i32 129, label %175
  ]

168:                                              ; preds = %161
  %169 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %170 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %union.ccb*, %union.ccb** %5, align 8
  %173 = bitcast %union.ccb* %172 to %struct.TYPE_4__*
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  store i64 %171, i64* %174, align 8
  br label %182

175:                                              ; preds = %161
  %176 = load %struct.srp_rsp*, %struct.srp_rsp** %7, align 8
  %177 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %union.ccb*, %union.ccb** %5, align 8
  %180 = bitcast %union.ccb* %179 to %struct.TYPE_4__*
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  store i64 %178, i64* %181, align 8
  br label %182

182:                                              ; preds = %161, %175, %168
  %183 = load %struct.vscsi_softc*, %struct.vscsi_softc** %6, align 8
  %184 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %187 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %190 = call i32 @bus_dmamap_sync(i32 %185, i32 %188, i32 %189)
  %191 = load %struct.vscsi_softc*, %struct.vscsi_softc** %6, align 8
  %192 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %195 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @bus_dmamap_unload(i32 %193, i32 %196)
  %198 = load %union.ccb*, %union.ccb** %5, align 8
  %199 = call i32 @xpt_done(%union.ccb* %198)
  %200 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %201 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %200, i32 0, i32 0
  store %union.ccb* null, %union.ccb** %201, align 8
  ret void
}

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i64 @be32toh(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
