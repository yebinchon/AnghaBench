; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_upload_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_upload_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32, i8*, i32 }
%struct.TYPE_4__ = type { i8*, i8* }

@FW_UPLOAD_REQ_SIZE = common dso_local global i32 0, align 4
@MPI_FW_UPLOAD_ITYPE_FW_IOC_MEM = common dso_local global i32 0, align 4
@MPI_FUNCTION_FW_UPLOAD = common dso_local global i32 0, align 4
@MPT_REPLY_HANDLER_HANDSHAKE = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_TRANSACTION_ELEMENT = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_LAST_ELEMENT = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_END_OF_BUFFER = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_END_OF_LIST = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_SIMPLE_ELEMENT = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_32_BIT_ADDRESSING = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_IOC_TO_HOST = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_SHIFT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_upload_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_upload_fw(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %13 = load i32, i32* @FW_UPLOAD_REQ_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = bitcast i32* %16 to i32**
  %18 = mul nuw i64 4, %14
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(i32** %17, i32 0, i32 %19)
  %21 = bitcast i32* %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %7, align 8
  %22 = load i32, i32* @MPI_FW_UPLOAD_ITYPE_FW_IOC_MEM, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @MPI_FUNCTION_FW_UPLOAD, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @MPT_REPLY_HANDLER_HANDSHAKE, align 4
  %29 = call i8* @htole32(i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = bitcast i32* %33 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %8, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 12, i32* %36, align 8
  %37 = load i32, i32* @MPI_SGE_FLAGS_TRANSACTION_ELEMENT, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %41 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @htole32(i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 1
  %48 = bitcast %struct.TYPE_6__* %47 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %9, align 8
  %49 = load i32, i32* @MPI_SGE_FLAGS_LAST_ELEMENT, align 4
  %50 = load i32, i32* @MPI_SGE_FLAGS_END_OF_BUFFER, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @MPI_SGE_FLAGS_END_OF_LIST, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @MPI_SGE_FLAGS_SIMPLE_ELEMENT, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @MPI_SGE_FLAGS_32_BIT_ADDRESSING, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @MPI_SGE_FLAGS_IOC_TO_HOST, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @MPI_SGE_FLAGS_SHIFT, align 4
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %65 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = call i8* @htole32(i32 %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %72 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @htole32(i32 %73)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %78 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %81 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %84 = call i32 @bus_dmamap_sync(i32 %79, i32 %82, i32 %83)
  %85 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %86 = mul nuw i64 4, %14
  %87 = trunc i64 %86 to i32
  %88 = bitcast i32* %16 to i32**
  %89 = call i32 @mpt_send_handshake_cmd(%struct.mpt_softc* %85, i32 %87, i32** %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %1
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %106

94:                                               ; preds = %1
  %95 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %96 = call i32 @mpt_recv_handshake_reply(%struct.mpt_softc* %95, i32 4, i32* %6)
  store i32 %96, i32* %11, align 4
  %97 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %98 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %101 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %104 = call i32 @bus_dmamap_sync(i32 %99, i32 %102, i32 %103)
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %106

106:                                              ; preds = %94, %92
  %107 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i8* @htole32(i32) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

declare dso_local i32 @mpt_send_handshake_cmd(%struct.mpt_softc*, i32, i32**) #2

declare dso_local i32 @mpt_recv_handshake_reply(%struct.mpt_softc*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
