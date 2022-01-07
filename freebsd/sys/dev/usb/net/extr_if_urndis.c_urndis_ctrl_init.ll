; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urndis_softc = type { i32 }
%struct.rndis_init_req = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rndis_comp_hdr = type { i32 }

@REMOTE_NDIS_INITIALIZE_MSG = common dso_local global i32 0, align 4
@RNDIS_VERSION_MAJOR = common dso_local global i32 0, align 4
@RNDIS_RX_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"type %u len %u rid %u ver_major %u ver_minor %u max_xfersz %u\0A\00", align 1
@RNDIS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"init failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to get init response\0A\00", align 1
@RNDIS_STATUS_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urndis_softc*)* @urndis_ctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urndis_ctrl_init(%struct.urndis_softc* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.urndis_softc*, align 8
  %4 = alloca %struct.rndis_init_req, align 8
  %5 = alloca %struct.rndis_comp_hdr*, align 8
  %6 = alloca i64, align 8
  store %struct.urndis_softc* %0, %struct.urndis_softc** %3, align 8
  %7 = load i32, i32* @REMOTE_NDIS_INITIALIZE_MSG, align 4
  %8 = call i8* @htole32(i32 %7)
  %9 = getelementptr inbounds %struct.rndis_init_req, %struct.rndis_init_req* %4, i32 0, i32 5
  store i8* %8, i8** %9, align 8
  %10 = call i8* @htole32(i32 48)
  %11 = getelementptr inbounds %struct.rndis_init_req, %struct.rndis_init_req* %4, i32 0, i32 4
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.rndis_init_req, %struct.rndis_init_req* %4, i32 0, i32 3
  store i8* null, i8** %12, align 8
  %13 = load i32, i32* @RNDIS_VERSION_MAJOR, align 4
  %14 = call i8* @htole32(i32 %13)
  %15 = getelementptr inbounds %struct.rndis_init_req, %struct.rndis_init_req* %4, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = call i8* @htole32(i32 1)
  %17 = getelementptr inbounds %struct.rndis_init_req, %struct.rndis_init_req* %4, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* @RNDIS_RX_MAXLEN, align 4
  %19 = call i8* @htole32(i32 %18)
  %20 = getelementptr inbounds %struct.rndis_init_req, %struct.rndis_init_req* %4, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.rndis_init_req, %struct.rndis_init_req* %4, i32 0, i32 5
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @le32toh(i8* %22)
  %24 = getelementptr inbounds %struct.rndis_init_req, %struct.rndis_init_req* %4, i32 0, i32 4
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @le32toh(i8* %25)
  %27 = getelementptr inbounds %struct.rndis_init_req, %struct.rndis_init_req* %4, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @le32toh(i8* %28)
  %30 = getelementptr inbounds %struct.rndis_init_req, %struct.rndis_init_req* %4, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @le32toh(i8* %31)
  %33 = getelementptr inbounds %struct.rndis_init_req, %struct.rndis_init_req* %4, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @le32toh(i8* %34)
  %36 = getelementptr inbounds %struct.rndis_init_req, %struct.rndis_init_req* %4, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @le32toh(i8* %37)
  %39 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38)
  %40 = load %struct.urndis_softc*, %struct.urndis_softc** %3, align 8
  %41 = call i64 @urndis_ctrl_send(%struct.urndis_softc* %40, %struct.rndis_init_req* %4, i32 48)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @RNDIS_STATUS_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %1
  %46 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i64, i64* %6, align 8
  store i64 %47, i64* %2, align 8
  br label %60

48:                                               ; preds = %1
  %49 = load %struct.urndis_softc*, %struct.urndis_softc** %3, align 8
  %50 = call %struct.rndis_comp_hdr* @urndis_ctrl_recv(%struct.urndis_softc* %49)
  store %struct.rndis_comp_hdr* %50, %struct.rndis_comp_hdr** %5, align 8
  %51 = icmp eq %struct.rndis_comp_hdr* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i64, i64* @RNDIS_STATUS_FAILURE, align 8
  store i64 %54, i64* %2, align 8
  br label %60

55:                                               ; preds = %48
  %56 = load %struct.urndis_softc*, %struct.urndis_softc** %3, align 8
  %57 = load %struct.rndis_comp_hdr*, %struct.rndis_comp_hdr** %5, align 8
  %58 = call i64 @urndis_ctrl_handle(%struct.urndis_softc* %56, %struct.rndis_comp_hdr* %57, i32* null, i32* null)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  store i64 %59, i64* %2, align 8
  br label %60

60:                                               ; preds = %55, %52, %45
  %61 = load i64, i64* %2, align 8
  ret i64 %61
}

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @le32toh(i8*) #1

declare dso_local i64 @urndis_ctrl_send(%struct.urndis_softc*, %struct.rndis_init_req*, i32) #1

declare dso_local %struct.rndis_comp_hdr* @urndis_ctrl_recv(%struct.urndis_softc*) #1

declare dso_local i64 @urndis_ctrl_handle(%struct.urndis_softc*, %struct.rndis_comp_hdr*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
