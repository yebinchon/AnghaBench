; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_update_spi_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_update_spi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@MPT_PRT_NEGOTIATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"mpt_update_spi_config[%d].page1: Requested Params 0x%08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"mpt_update_spi_config: write cur page failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, i32)* @mpt_update_spi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_update_spi_config(%struct.mpt_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %9 = load i32, i32* @MPT_PRT_NEGOTIATION, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mpt_lprt(%struct.mpt_softc* %8, i32 %9, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %18)
  %20 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %21 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = bitcast %struct.TYPE_3__* %6 to i8*
  %27 = bitcast %struct.TYPE_3__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 8, i1 false)
  %28 = call i32 @host2mpt_config_page_scsi_device_1(%struct.TYPE_3__* %6)
  %29 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %32 = load i32, i32* @FALSE, align 4
  %33 = call i32 @mpt_write_cur_cfg_page(%struct.mpt_softc* %29, i32 %30, i32* %31, i32 8, i32 %32, i32 5000)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %38 = call i32 @mpt_prt(%struct.mpt_softc* %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %40

39:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @host2mpt_config_page_scsi_device_1(%struct.TYPE_3__*) #1

declare dso_local i32 @mpt_write_cur_cfg_page(%struct.mpt_softc*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
