; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_check_response_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_check_response_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsi_softc = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.vscsi_crq*, i32 }
%struct.vscsi_crq = type { i64, i32, i64 }
%struct.vscsi_xfer = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@H_VIO_SIGNAL = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown SRP response code %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown CRQ format %d\0A\00", align 1
@queue = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unknown CRQ message type %d\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vscsi_softc*)* @vscsi_check_response_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vscsi_check_response_queue(%struct.vscsi_softc* %0) #0 {
  %2 = alloca %struct.vscsi_softc*, align 8
  %3 = alloca %struct.vscsi_crq*, align 8
  %4 = alloca %struct.vscsi_xfer*, align 8
  %5 = alloca i32, align 4
  store %struct.vscsi_softc* %0, %struct.vscsi_softc** %2, align 8
  %6 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %7 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %6, i32 0, i32 12
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* %7, i32 %8)
  br label %10

10:                                               ; preds = %125, %1
  %11 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %11, i32 0, i32 11
  %13 = load %struct.vscsi_crq*, %struct.vscsi_crq** %12, align 8
  %14 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %15 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %13, i64 %16
  %18 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %152

21:                                               ; preds = %10
  %22 = load i32, i32* @H_VIO_SIGNAL, align 4
  %23 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %24 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @phyp_hcall(i32 %22, i32 %25, i32 0)
  %27 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %28 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %31 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %34 = call i32 @bus_dmamap_sync(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %36 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %35, i32 0, i32 11
  %37 = load %struct.vscsi_crq*, %struct.vscsi_crq** %36, align 8
  %38 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %39 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %37, i64 %40
  store %struct.vscsi_crq* %41, %struct.vscsi_crq** %3, align 8
  %42 = load %struct.vscsi_crq*, %struct.vscsi_crq** %3, align 8
  %43 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  switch i64 %44, label %116 [
    i64 192, label %45
    i64 128, label %54
  ]

45:                                               ; preds = %21
  %46 = load %struct.vscsi_crq*, %struct.vscsi_crq** %3, align 8
  %47 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %52 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %45
  br label %125

54:                                               ; preds = %21
  %55 = load %struct.vscsi_crq*, %struct.vscsi_crq** %3, align 8
  %56 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.vscsi_xfer*
  store %struct.vscsi_xfer* %58, %struct.vscsi_xfer** %4, align 8
  %59 = load %struct.vscsi_crq*, %struct.vscsi_crq** %3, align 8
  %60 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %90 [
    i32 1, label %62
    i32 2, label %89
  ]

62:                                               ; preds = %54
  %63 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %64 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %63, i32 0, i32 10
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %4, align 8
  %68 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  switch i32 %73, label %82 [
    i32 128, label %74
    i32 129, label %78
  ]

74:                                               ; preds = %62
  %75 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %4, align 8
  %76 = load %struct.vscsi_crq*, %struct.vscsi_crq** %3, align 8
  %77 = call i32 @vscsi_srp_response(%struct.vscsi_xfer* %75, %struct.vscsi_crq* %76)
  br label %88

78:                                               ; preds = %62
  %79 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %4, align 8
  %80 = load %struct.vscsi_crq*, %struct.vscsi_crq** %3, align 8
  %81 = call i32 @vscsi_login_response(%struct.vscsi_xfer* %79, %struct.vscsi_crq* %80)
  br label %88

82:                                               ; preds = %62
  %83 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %84 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @device_printf(i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %82, %78, %74
  br label %95

89:                                               ; preds = %54
  br label %95

90:                                               ; preds = %54
  %91 = load %struct.vscsi_crq*, %struct.vscsi_crq** %3, align 8
  %92 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %90, %89, %88
  %96 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %97 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %4, align 8
  %100 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %4, align 8
  %103 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @vmem_free(i32 %98, i32 %101, i32 %104)
  %106 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %107 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %106, i32 0, i32 8
  %108 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %4, align 8
  %109 = load i32, i32* @queue, align 4
  %110 = call i32 @TAILQ_REMOVE(i32* %107, %struct.vscsi_xfer* %108, i32 %109)
  %111 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %112 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %111, i32 0, i32 7
  %113 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %4, align 8
  %114 = load i32, i32* @queue, align 4
  %115 = call i32 @TAILQ_INSERT_TAIL(i32* %112, %struct.vscsi_xfer* %113, i32 %114)
  br label %125

116:                                              ; preds = %21
  %117 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %118 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.vscsi_crq*, %struct.vscsi_crq** %3, align 8
  %121 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @device_printf(i32 %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %116, %95, %53
  %126 = load %struct.vscsi_crq*, %struct.vscsi_crq** %3, align 8
  %127 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %129 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, 1
  %132 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %133 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = urem i64 %131, %135
  %137 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %138 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %140 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %143 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %146 = call i32 @bus_dmamap_sync(i32 %141, i32 %144, i32 %145)
  %147 = load i32, i32* @H_VIO_SIGNAL, align 4
  %148 = load %struct.vscsi_softc*, %struct.vscsi_softc** %2, align 8
  %149 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @phyp_hcall(i32 %147, i32 %150, i32 1)
  br label %10

152:                                              ; preds = %10
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @phyp_hcall(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @vscsi_srp_response(%struct.vscsi_xfer*, %struct.vscsi_crq*) #1

declare dso_local i32 @vscsi_login_response(%struct.vscsi_xfer*, %struct.vscsi_crq*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @vmem_free(i32, i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vscsi_xfer*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.vscsi_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
