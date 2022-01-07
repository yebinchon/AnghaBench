; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_set_initial_config_spi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_set_initial_config_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_8__, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@MPI_SCSIPORTPAGE1_CFG_SHIFT_PORT_RESPONSE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"SPI Port Page 1 Config value bad (%x)- should be %x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"failed to reset SPI Port Page 1 Config value\0A\00", align 1
@MPI_SCSIPORTPAGE2_PORT_MASK_NEGO_MASTER_SETTINGS = common dso_local global i32 0, align 4
@MPI_SCSIPORTPAGE2_PORT_ALL_MASTER_SETTINGS = common dso_local global i32 0, align 4
@MPT_PRT_NEGOTIATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"honoring BIOS transfer negotiations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_set_initial_config_spi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_set_initial_config_spi(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %8 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %8, i32 0, i32 0
  store i32 255, i32* %9, align 8
  %10 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %10, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 1, %14
  %16 = load i32, i32* @MPI_SCSIPORTPAGE1_CFG_SHIFT_PORT_RESPONSE_ID, align 4
  %17 = shl i32 %15, %16
  %18 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %23 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %1
  %29 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %30 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %36, i32 0, i32 4
  %38 = bitcast %struct.TYPE_8__* %7 to i8*
  %39 = bitcast %struct.TYPE_8__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 8, i1 false)
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = call i32 @host2mpt_config_page_scsi_port_1(%struct.TYPE_8__* %7)
  %43 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @mpt_write_cur_cfg_page(%struct.mpt_softc* %43, i32 0, i32* %44, i32 8, i32 %45, i32 5000)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %113

50:                                               ; preds = %28
  %51 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @mpt_read_cur_cfg_page(%struct.mpt_softc* %51, i32 0, i32* %52, i32 8, i32 %53, i32 5000)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 -1, i32* %2, align 4
  br label %113

58:                                               ; preds = %50
  %59 = call i32 @mpt2host_config_page_scsi_port_1(%struct.TYPE_8__* %7)
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %66 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %113

67:                                               ; preds = %58
  %68 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %69 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %68, i32 0, i32 4
  %70 = bitcast %struct.TYPE_8__* %69 to i8*
  %71 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 8, i1 false)
  br label %72

72:                                               ; preds = %67, %1
  %73 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %74 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MPI_SCSIPORTPAGE2_PORT_MASK_NEGO_MASTER_SETTINGS, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @MPI_SCSIPORTPAGE2_PORT_ALL_MASTER_SETTINGS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %84 = load i32, i32* @MPT_PRT_NEGOTIATION, align 4
  %85 = call i32 @mpt_lprt(%struct.mpt_softc* %83, i32 %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %112

86:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %108, %86
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 16
  br i1 %89, label %90, label %111

90:                                               ; preds = %87
  %91 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %92 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %91, i32 0, i32 2
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %99 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %98, i32 0, i32 2
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @mpt_update_spi_config(%struct.mpt_softc* %105, i32 %106)
  br label %108

108:                                              ; preds = %90
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %87

111:                                              ; preds = %87
  br label %112

112:                                              ; preds = %111, %82
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %64, %57, %49
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @host2mpt_config_page_scsi_port_1(%struct.TYPE_8__*) #1

declare dso_local i32 @mpt_write_cur_cfg_page(%struct.mpt_softc*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mpt_read_cur_cfg_page(%struct.mpt_softc*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mpt2host_config_page_scsi_port_1(%struct.TYPE_8__*) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*) #1

declare dso_local i32 @mpt_update_spi_config(%struct.mpt_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
