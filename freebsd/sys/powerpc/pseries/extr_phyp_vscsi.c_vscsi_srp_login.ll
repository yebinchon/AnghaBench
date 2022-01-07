; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_srp_login.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_srp_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsi_softc = type { i32, i32, i32, i32, i32 }
%struct.vscsi_xfer = type { i32, %struct.TYPE_2__*, i64, i32* }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }
%struct.srp_login = type { i64, i32, i32, i64, i32 }
%struct.vscsi_crq = type { i32, i32, i32, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SCSI queue flooded\00", align 1
@queue = common dso_local global i32 0, align 4
@M_BESTFIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error during VMEM allocation (%d)\00", align 1
@SRP_LOGIN_REQ = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@H_SEND_CRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"CRQ send failure (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vscsi_softc*)* @vscsi_srp_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vscsi_srp_login(%struct.vscsi_softc* %0) #0 {
  %2 = alloca %struct.vscsi_softc*, align 8
  %3 = alloca %struct.vscsi_xfer*, align 8
  %4 = alloca %struct.srp_login*, align 8
  %5 = alloca %struct.vscsi_crq, align 8
  %6 = alloca i32, align 4
  store %struct.vscsi_softc* %0, %struct.vscsi_softc** %2, align 8
  %7 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %8 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %7, i32 0, i32 4
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %11, i32 0, i32 3
  %13 = call %struct.vscsi_xfer* @TAILQ_FIRST(i32* %12)
  store %struct.vscsi_xfer* %13, %struct.vscsi_xfer** %3, align 8
  %14 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %15 = icmp eq %struct.vscsi_xfer* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %20 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %22 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %21, i32 0, i32 3
  %23 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %24 = load i32, i32* @queue, align 4
  %25 = call i32 @TAILQ_REMOVE(i32* %22, %struct.vscsi_xfer* %23, i32 %24)
  %26 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %27 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %26, i32 0, i32 2
  %28 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %29 = load i32, i32* @queue, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* %27, %struct.vscsi_xfer* %28, i32 %29)
  %31 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %5, i32 0, i32 0
  store i32 64, i32* %31, align 8
  %32 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %33 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %32, i32 0, i32 0
  store i32 64, i32* %33, align 8
  %34 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %35 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %40 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @M_BESTFIT, align 4
  %43 = load i32, i32* @M_NOWAIT, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %46 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %45, i32 0, i32 2
  %47 = call i32 @vmem_alloc(i32 %38, i32 %41, i32 %44, i64* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %18
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %18
  %54 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %55 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %61 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = bitcast i32* %63 to %struct.srp_login*
  store %struct.srp_login* %64, %struct.srp_login** %4, align 8
  %65 = load %struct.srp_login*, %struct.srp_login** %4, align 8
  %66 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %67 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @bzero(%struct.srp_login* %65, i32 %68)
  %70 = load i32, i32* @SRP_LOGIN_REQ, align 4
  %71 = load %struct.srp_login*, %struct.srp_login** %4, align 8
  %72 = getelementptr inbounds %struct.srp_login, %struct.srp_login* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %74 = ptrtoint %struct.vscsi_xfer* %73 to i64
  %75 = load %struct.srp_login*, %struct.srp_login** %4, align 8
  %76 = getelementptr inbounds %struct.srp_login, %struct.srp_login* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = call i32 @htobe64(i32 256)
  %78 = load %struct.srp_login*, %struct.srp_login** %4, align 8
  %79 = getelementptr inbounds %struct.srp_login, %struct.srp_login* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = call i32 @htobe16(i32 3)
  %81 = load %struct.srp_login*, %struct.srp_login** %4, align 8
  %82 = getelementptr inbounds %struct.srp_login, %struct.srp_login* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.srp_login*, %struct.srp_login** %4, align 8
  %84 = getelementptr inbounds %struct.srp_login, %struct.srp_login* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %5, i32 0, i32 1
  store i32 128, i32* %85, align 4
  %86 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %5, i32 0, i32 2
  store i32 1, i32* %86, align 8
  %87 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %88 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %93 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %5, i32 0, i32 3
  store i64 %95, i64* %96, align 8
  %97 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %98 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %101 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %104 = call i32 @bus_dmamap_sync(i32 %99, i32 %102, i32 %103)
  %105 = load i32, i32* @H_SEND_CRQ, align 4
  %106 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %107 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = bitcast %struct.vscsi_crq* %5 to i64*
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = bitcast %struct.vscsi_crq* %5 to i64*
  %115 = getelementptr inbounds i64, i64* %114, i64 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @phyp_hcall(i32 %105, i32 %110, i64 %113, i64 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %53
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %120, %53
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.vscsi_xfer* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vscsi_xfer*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.vscsi_xfer*, i32) #1

declare dso_local i32 @vmem_alloc(i32, i32, i32, i64*) #1

declare dso_local i32 @bzero(%struct.srp_login*, i32) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local i32 @htobe16(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @phyp_hcall(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
