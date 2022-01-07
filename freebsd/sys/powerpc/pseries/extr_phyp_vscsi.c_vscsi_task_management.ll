; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_task_management.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_task_management.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsi_softc = type { i32, i32, i32 }
%union.ccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.srp_tsk_mgmt = type { i32, i32, i64, i32 }
%struct.vscsi_xfer = type { i32, %struct.TYPE_4__*, i64, %union.ccb* }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i64, i32 }
%struct.vscsi_crq = type { i32, i32, i32, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SCSI queue flooded\00", align 1
@queue = common dso_local global i32 0, align 4
@M_BESTFIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error during VMEM allocation (%d)\00", align 1
@SRP_TSK_MGMT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Unimplemented code %d\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@H_SEND_CRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"CRQ send failure (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vscsi_softc*, %union.ccb*)* @vscsi_task_management to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vscsi_task_management(%struct.vscsi_softc* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.vscsi_softc*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.srp_tsk_mgmt*, align 8
  %6 = alloca %struct.vscsi_xfer*, align 8
  %7 = alloca %struct.vscsi_crq, align 8
  %8 = alloca i32, align 4
  store %struct.vscsi_softc* %0, %struct.vscsi_softc** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load %struct.vscsi_softc*, %struct.vscsi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %9, i32 0, i32 2
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  %13 = load %struct.vscsi_softc*, %struct.vscsi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %13, i32 0, i32 1
  %15 = call %struct.vscsi_xfer* @TAILQ_FIRST(i32* %14)
  store %struct.vscsi_xfer* %15, %struct.vscsi_xfer** %6, align 8
  %16 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %17 = icmp eq %struct.vscsi_xfer* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = load %union.ccb*, %union.ccb** %4, align 8
  %22 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %23 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %22, i32 0, i32 3
  store %union.ccb* %21, %union.ccb** %23, align 8
  %24 = load %struct.vscsi_softc*, %struct.vscsi_softc** %3, align 8
  %25 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %24, i32 0, i32 1
  %26 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %27 = load i32, i32* @queue, align 4
  %28 = call i32 @TAILQ_REMOVE(i32* %25, %struct.vscsi_xfer* %26, i32 %27)
  %29 = load %struct.vscsi_softc*, %struct.vscsi_softc** %3, align 8
  %30 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %29, i32 0, i32 0
  %31 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %32 = load i32, i32* @queue, align 4
  %33 = call i32 @TAILQ_INSERT_TAIL(i32* %30, %struct.vscsi_xfer* %31, i32 %32)
  %34 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %7, i32 0, i32 0
  store i32 24, i32* %34, align 8
  %35 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %36 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %35, i32 0, i32 0
  store i32 24, i32* %36, align 8
  %37 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %38 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %43 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @M_BESTFIT, align 4
  %46 = load i32, i32* @M_NOWAIT, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %49 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %48, i32 0, i32 2
  %50 = call i32 @vmem_alloc(i32 %41, i32 %44, i32 %47, i64* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %20
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %20
  %57 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %58 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %64 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = bitcast i32* %66 to %struct.srp_tsk_mgmt*
  store %struct.srp_tsk_mgmt* %67, %struct.srp_tsk_mgmt** %5, align 8
  %68 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %5, align 8
  %69 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %70 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @bzero(%struct.srp_tsk_mgmt* %68, i32 %71)
  %73 = load i32, i32* @SRP_TSK_MGMT, align 4
  %74 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %5, align 8
  %75 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %77 = ptrtoint %struct.vscsi_xfer* %76 to i64
  %78 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %5, align 8
  %79 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %union.ccb*, %union.ccb** %4, align 8
  %81 = bitcast %union.ccb* %80 to %struct.TYPE_3__*
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @CAM_EXTLUN_BYTE_SWIZZLE(i32 %83)
  %85 = call i32 @htobe64(i32 %84)
  %86 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %5, align 8
  %87 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %union.ccb*, %union.ccb** %4, align 8
  %89 = bitcast %union.ccb* %88 to %struct.TYPE_3__*
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %95 [
    i32 128, label %92
  ]

92:                                               ; preds = %56
  %93 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %5, align 8
  %94 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %93, i32 0, i32 0
  store i32 8, i32* %94, align 8
  br label %101

95:                                               ; preds = %56
  %96 = load %union.ccb*, %union.ccb** %4, align 8
  %97 = bitcast %union.ccb* %96 to %struct.TYPE_3__*
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %95, %92
  %102 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %103 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %108 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %113 = call i32 @bus_dmamap_sync(i32 %106, i32 %111, i32 %112)
  %114 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %7, i32 0, i32 1
  store i32 128, i32* %114, align 4
  %115 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %7, i32 0, i32 2
  store i32 1, i32* %115, align 8
  %116 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %117 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %122 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %120, %123
  %125 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %7, i32 0, i32 3
  store i64 %124, i64* %125, align 8
  %126 = load i32, i32* @H_SEND_CRQ, align 4
  %127 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %6, align 8
  %128 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = bitcast %struct.vscsi_crq* %7 to i64*
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = bitcast %struct.vscsi_crq* %7 to i64*
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @phyp_hcall(i32 %126, i32 %131, i64 %134, i64 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %101
  %142 = load i32, i32* %8, align 4
  %143 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %141, %101
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.vscsi_xfer* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vscsi_xfer*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.vscsi_xfer*, i32) #1

declare dso_local i32 @vmem_alloc(i32, i32, i32, i64*) #1

declare dso_local i32 @bzero(%struct.srp_tsk_mgmt*, i32) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local i32 @CAM_EXTLUN_BYTE_SWIZZLE(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @phyp_hcall(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
