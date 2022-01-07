; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urndis_softc = type { i32 }
%struct.rndis_set_req = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rndis_comp_hdr = type { i32 }

@REMOTE_NDIS_SET_MSG = common dso_local global i64 0, align 8
@RNDIS_HEADER_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"type %u len %u rid %u oid 0x%x infobuflen %u infobufoffset %u devicevchdl %u\0A\00", align 1
@RNDIS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"set failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"unable to get set response\0A\00", align 1
@RNDIS_STATUS_FAILURE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"set failed 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urndis_softc*, i64, %struct.rndis_set_req*, i64)* @urndis_ctrl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urndis_ctrl_set(%struct.urndis_softc* %0, i64 %1, %struct.rndis_set_req* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.urndis_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rndis_set_req*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rndis_comp_hdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.urndis_softc* %0, %struct.urndis_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.rndis_set_req* %2, %struct.rndis_set_req** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* @REMOTE_NDIS_SET_MSG, align 8
  %14 = call i8* @htole32(i64 %13)
  %15 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %16 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %15, i32 0, i32 6
  store i8* %14, i8** %16, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i8* @htole32(i64 %17)
  %19 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %20 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %22 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %21, i32 0, i32 4
  store i8* null, i8** %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i8* @htole32(i64 %23)
  %25 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %26 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 %27, 56
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i8* @htole32(i64 %29)
  %31 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %32 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %4
  %36 = load i64, i64* @RNDIS_HEADER_OFFSET, align 8
  %37 = sub i64 56, %36
  %38 = call i8* @htole32(i64 %37)
  %39 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %40 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  br label %44

41:                                               ; preds = %4
  %42 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %43 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %42, i32 0, i32 1
  store i8* null, i8** %43, align 8
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %46 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %45, i32 0, i32 0
  store i8* null, i8** %46, align 8
  %47 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %48 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %47, i32 0, i32 6
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @le32toh(i8* %49)
  %51 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %52 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %51, i32 0, i32 5
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @le32toh(i8* %53)
  %55 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %56 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @le32toh(i8* %57)
  %59 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %60 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @le32toh(i8* %61)
  %63 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %64 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @le32toh(i8* %65)
  %67 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %68 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @le32toh(i8* %69)
  %71 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %72 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @le32toh(i8* %73)
  %75 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %54, i32 %58, i32 %62, i32 %66, i32 %70, i32 %74)
  %76 = load %struct.urndis_softc*, %struct.urndis_softc** %6, align 8
  %77 = load %struct.rndis_set_req*, %struct.rndis_set_req** %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i64 @urndis_ctrl_send(%struct.urndis_softc* %76, %struct.rndis_set_req* %77, i64 %78)
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* @RNDIS_STATUS_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %44
  %84 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i64, i64* %12, align 8
  store i64 %85, i64* %5, align 8
  br label %105

86:                                               ; preds = %44
  %87 = load %struct.urndis_softc*, %struct.urndis_softc** %6, align 8
  %88 = call %struct.rndis_comp_hdr* @urndis_ctrl_recv(%struct.urndis_softc* %87)
  store %struct.rndis_comp_hdr* %88, %struct.rndis_comp_hdr** %10, align 8
  %89 = icmp eq %struct.rndis_comp_hdr* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i64, i64* @RNDIS_STATUS_FAILURE, align 8
  store i64 %92, i64* %5, align 8
  br label %105

93:                                               ; preds = %86
  %94 = load %struct.urndis_softc*, %struct.urndis_softc** %6, align 8
  %95 = load %struct.rndis_comp_hdr*, %struct.rndis_comp_hdr** %10, align 8
  %96 = call i64 @urndis_ctrl_handle(%struct.urndis_softc* %94, %struct.rndis_comp_hdr* %95, i32* null, i32* null)
  store i64 %96, i64* %12, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* @RNDIS_STATUS_SUCCESS, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i64, i64* %12, align 8
  %102 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %100, %93
  %104 = load i64, i64* %12, align 8
  store i64 %104, i64* %5, align 8
  br label %105

105:                                              ; preds = %103, %90, %83
  %106 = load i64, i64* %5, align 8
  ret i64 %106
}

declare dso_local i8* @htole32(i64) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @le32toh(i8*) #1

declare dso_local i64 @urndis_ctrl_send(%struct.urndis_softc*, %struct.rndis_set_req*, i64) #1

declare dso_local %struct.rndis_comp_hdr* @urndis_ctrl_recv(%struct.urndis_softc*) #1

declare dso_local i64 @urndis_ctrl_handle(%struct.urndis_softc*, %struct.rndis_comp_hdr*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
