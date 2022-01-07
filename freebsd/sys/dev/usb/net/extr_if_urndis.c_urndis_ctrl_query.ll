; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urndis_softc = type { i32 }
%struct.rndis_query_req = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rndis_comp_hdr = type { i32 }

@REMOTE_NDIS_QUERY_MSG = common dso_local global i64 0, align 8
@RNDIS_HEADER_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"type %u len %u rid %u oid 0x%x infobuflen %u infobufoffset %u devicevchdl %u\0A\00", align 1
@RNDIS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"query failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to get query response\0A\00", align 1
@RNDIS_STATUS_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urndis_softc*, i64, %struct.rndis_query_req*, i64, i8**, i64*)* @urndis_ctrl_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urndis_ctrl_query(%struct.urndis_softc* %0, i64 %1, %struct.rndis_query_req* %2, i64 %3, i8** %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.urndis_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rndis_query_req*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.rndis_comp_hdr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.urndis_softc* %0, %struct.urndis_softc** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.rndis_query_req* %2, %struct.rndis_query_req** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  %17 = load i64, i64* @REMOTE_NDIS_QUERY_MSG, align 8
  %18 = call i8* @htole32(i64 %17)
  %19 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %20 = getelementptr inbounds %struct.rndis_query_req, %struct.rndis_query_req* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call i8* @htole32(i64 %21)
  %23 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %24 = getelementptr inbounds %struct.rndis_query_req, %struct.rndis_query_req* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %26 = getelementptr inbounds %struct.rndis_query_req, %struct.rndis_query_req* %25, i32 0, i32 4
  store i8* null, i8** %26, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i8* @htole32(i64 %27)
  %29 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %30 = getelementptr inbounds %struct.rndis_query_req, %struct.rndis_query_req* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i64, i64* %11, align 8
  %32 = sub i64 %31, 56
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* %15, align 8
  %34 = call i8* @htole32(i64 %33)
  %35 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %36 = getelementptr inbounds %struct.rndis_query_req, %struct.rndis_query_req* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %6
  %40 = load i64, i64* @RNDIS_HEADER_OFFSET, align 8
  %41 = sub i64 56, %40
  %42 = call i8* @htole32(i64 %41)
  %43 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %44 = getelementptr inbounds %struct.rndis_query_req, %struct.rndis_query_req* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  br label %48

45:                                               ; preds = %6
  %46 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %47 = getelementptr inbounds %struct.rndis_query_req, %struct.rndis_query_req* %46, i32 0, i32 1
  store i8* null, i8** %47, align 8
  br label %48

48:                                               ; preds = %45, %39
  %49 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %50 = getelementptr inbounds %struct.rndis_query_req, %struct.rndis_query_req* %49, i32 0, i32 0
  store i8* null, i8** %50, align 8
  %51 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %52 = getelementptr inbounds %struct.rndis_query_req, %struct.rndis_query_req* %51, i32 0, i32 6
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @le32toh(i8* %53)
  %55 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %56 = getelementptr inbounds %struct.rndis_query_req, %struct.rndis_query_req* %55, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @le32toh(i8* %57)
  %59 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %60 = getelementptr inbounds %struct.rndis_query_req, %struct.rndis_query_req* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @le32toh(i8* %61)
  %63 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %64 = getelementptr inbounds %struct.rndis_query_req, %struct.rndis_query_req* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @le32toh(i8* %65)
  %67 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %68 = getelementptr inbounds %struct.rndis_query_req, %struct.rndis_query_req* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @le32toh(i8* %69)
  %71 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %72 = getelementptr inbounds %struct.rndis_query_req, %struct.rndis_query_req* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @le32toh(i8* %73)
  %75 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %76 = getelementptr inbounds %struct.rndis_query_req, %struct.rndis_query_req* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @le32toh(i8* %77)
  %79 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %58, i32 %62, i32 %66, i32 %70, i32 %74, i32 %78)
  %80 = load %struct.urndis_softc*, %struct.urndis_softc** %8, align 8
  %81 = load %struct.rndis_query_req*, %struct.rndis_query_req** %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @urndis_ctrl_send(%struct.urndis_softc* %80, %struct.rndis_query_req* %81, i64 %82)
  store i64 %83, i64* %16, align 8
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* @RNDIS_STATUS_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %48
  %88 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i64, i64* %16, align 8
  store i64 %89, i64* %7, align 8
  br label %104

90:                                               ; preds = %48
  %91 = load %struct.urndis_softc*, %struct.urndis_softc** %8, align 8
  %92 = call %struct.rndis_comp_hdr* @urndis_ctrl_recv(%struct.urndis_softc* %91)
  store %struct.rndis_comp_hdr* %92, %struct.rndis_comp_hdr** %14, align 8
  %93 = icmp eq %struct.rndis_comp_hdr* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i64, i64* @RNDIS_STATUS_FAILURE, align 8
  store i64 %96, i64* %7, align 8
  br label %104

97:                                               ; preds = %90
  %98 = load %struct.urndis_softc*, %struct.urndis_softc** %8, align 8
  %99 = load %struct.rndis_comp_hdr*, %struct.rndis_comp_hdr** %14, align 8
  %100 = load i8**, i8*** %12, align 8
  %101 = load i64*, i64** %13, align 8
  %102 = call i64 @urndis_ctrl_handle(%struct.urndis_softc* %98, %struct.rndis_comp_hdr* %99, i8** %100, i64* %101)
  store i64 %102, i64* %16, align 8
  %103 = load i64, i64* %16, align 8
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %97, %94, %87
  %105 = load i64, i64* %7, align 8
  ret i64 %105
}

declare dso_local i8* @htole32(i64) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @le32toh(i8*) #1

declare dso_local i64 @urndis_ctrl_send(%struct.urndis_softc*, %struct.rndis_query_req*, i64) #1

declare dso_local %struct.rndis_comp_hdr* @urndis_ctrl_recv(%struct.urndis_softc*) #1

declare dso_local i64 @urndis_ctrl_handle(%struct.urndis_softc*, %struct.rndis_comp_hdr*, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
