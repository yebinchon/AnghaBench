; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_handle_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_handle_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urndis_softc = type { i32 }
%struct.rndis_comp_hdr = type { i32 }
%struct.rndis_query_comp = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"len %u rid %u status 0x%x buflen %u bufoff %u\0A\00", align 1
@RNDIS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"query failed 0x%x\0A\00", align 1
@RNDIS_HEADER_OFFSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [103 x i8] c"ctrl message error: invalid query info len/offset/end_position(%u/%u/%u) -> go out of buffer limit %u\0A\00", align 1
@RNDIS_STATUS_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urndis_softc*, %struct.rndis_comp_hdr*, i8**, i32*)* @urndis_ctrl_handle_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urndis_ctrl_handle_query(%struct.urndis_softc* %0, %struct.rndis_comp_hdr* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.urndis_softc*, align 8
  %7 = alloca %struct.rndis_comp_hdr*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rndis_query_comp*, align 8
  %11 = alloca i64, align 8
  store %struct.urndis_softc* %0, %struct.urndis_softc** %6, align 8
  store %struct.rndis_comp_hdr* %1, %struct.rndis_comp_hdr** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.rndis_comp_hdr*, %struct.rndis_comp_hdr** %7, align 8
  %13 = bitcast %struct.rndis_comp_hdr* %12 to %struct.rndis_query_comp*
  store %struct.rndis_query_comp* %13, %struct.rndis_query_comp** %10, align 8
  %14 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %15 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le32toh(i32 %16)
  %18 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %19 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32toh(i32 %20)
  %22 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %23 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32toh(i32 %24)
  %26 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %27 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32toh(i32 %28)
  %30 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %31 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32toh(i32 %32)
  %34 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %25, i32 %29, i32 %33)
  %35 = load i8**, i8*** %8, align 8
  store i8* null, i8** %35, align 8
  %36 = load i32*, i32** %9, align 8
  store i32 0, i32* %36, align 4
  %37 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %38 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32toh(i32 %39)
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @RNDIS_STATUS_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %4
  %45 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %46 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32toh(i32 %47)
  %49 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %51 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32toh(i32 %52)
  store i32 %53, i32* %5, align 4
  br label %126

54:                                               ; preds = %4
  %55 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %56 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32toh(i32 %57)
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %11, align 8
  %60 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %61 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32toh(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %11, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* @RNDIS_HEADER_OFFSET, align 8
  %68 = load i64, i64* %11, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %72 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32toh(i32 %73)
  %75 = sext i32 %74 to i64
  %76 = icmp sgt i64 %70, %75
  br i1 %76, label %77, label %104

77:                                               ; preds = %54
  %78 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %79 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32toh(i32 %80)
  %82 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %83 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32toh(i32 %84)
  %86 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %87 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le32toh(i32 %88)
  %90 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %91 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le32toh(i32 %92)
  %94 = add nsw i32 %89, %93
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* @RNDIS_HEADER_OFFSET, align 8
  %97 = add nsw i64 %95, %96
  %98 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %99 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32toh(i32 %100)
  %102 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %85, i64 %97, i32 %101)
  %103 = load i32, i32* @RNDIS_STATUS_FAILURE, align 4
  store i32 %103, i32* %5, align 4
  br label %126

104:                                              ; preds = %54
  %105 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %106 = bitcast %struct.rndis_query_comp* %105 to i32*
  %107 = load i64, i64* @RNDIS_HEADER_OFFSET, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %110 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le32toh(i32 %111)
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %108, i64 %113
  %115 = bitcast i32* %114 to i8*
  %116 = load i8**, i8*** %8, align 8
  store i8* %115, i8** %116, align 8
  %117 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %118 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le32toh(i32 %119)
  %121 = load i32*, i32** %9, align 8
  store i32 %120, i32* %121, align 4
  %122 = load %struct.rndis_query_comp*, %struct.rndis_query_comp** %10, align 8
  %123 = getelementptr inbounds %struct.rndis_query_comp, %struct.rndis_query_comp* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le32toh(i32 %124)
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %104, %77, %44
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
