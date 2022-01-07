; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_rirb_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_rirb_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_softc = type { %struct.hda_codec_cmd_ctl }
%struct.hda_codec_cmd_ctl = type { i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"RIRB\00", align 1
@HDAC_RIRBSIZE = common dso_local global i32 0, align 4
@HDAC_RIRBSIZE_RIRBSIZE_MASK = common dso_local global i32 0, align 4
@hda_rirb_sizes = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid rirb size\0A\00", align 1
@HDAC_RIRBLBASE = common dso_local global i32 0, align 4
@HDAC_RIRBUBASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"RIRB dma_paddr: %p\0A\00", align 1
@HDA_RIRB_ENTRY_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Fail to get the guest virtual address\0A\00", align 1
@HDAC_RIRBWP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_softc*)* @hda_rirb_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_rirb_start(%struct.hda_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_softc*, align 8
  %4 = alloca %struct.hda_codec_cmd_ctl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_softc* %0, %struct.hda_softc** %3, align 8
  %9 = load %struct.hda_softc*, %struct.hda_softc** %3, align 8
  %10 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %9, i32 0, i32 0
  store %struct.hda_codec_cmd_ctl* %10, %struct.hda_codec_cmd_ctl** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %4, align 8
  %12 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load %struct.hda_softc*, %struct.hda_softc** %3, align 8
  %14 = load i32, i32* @HDAC_RIRBSIZE, align 4
  %15 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %13, i32 %14)
  %16 = load i32, i32* @HDAC_RIRBSIZE_RIRBSIZE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %5, align 8
  %19 = load i32*, i32** @hda_rirb_sizes, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %4, align 8
  %24 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %4, align 8
  %26 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %1
  %30 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %74

31:                                               ; preds = %1
  %32 = load %struct.hda_softc*, %struct.hda_softc** %3, align 8
  %33 = load i32, i32* @HDAC_RIRBLBASE, align 4
  %34 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.hda_softc*, %struct.hda_softc** %3, align 8
  %36 = load i32, i32* @HDAC_RIRBUBASE, align 4
  %37 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 %39, 32
  %41 = or i32 %38, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = load %struct.hda_softc*, %struct.hda_softc** %3, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @HDA_RIRB_ENTRY_LEN, align 4
  %49 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %4, align 8
  %50 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %48, %51
  %53 = call i32 @hda_dma_get_vaddr(%struct.hda_softc* %46, i32 %47, i32 %52)
  %54 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %4, align 8
  %55 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %4, align 8
  %57 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %31
  %61 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %74

62:                                               ; preds = %31
  %63 = load %struct.hda_softc*, %struct.hda_softc** %3, align 8
  %64 = load i32, i32* @HDAC_RIRBWP, align 4
  %65 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %63, i32 %64)
  %66 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %4, align 8
  %67 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %4, align 8
  %69 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %68, i32 0, i32 3
  store i32 0, i32* %69, align 8
  %70 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %4, align 8
  %71 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %70, i32 0, i32 4
  store i32 1, i32* %71, align 4
  %72 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %4, align 8
  %73 = call i32 @hda_print_cmd_ctl_data(%struct.hda_codec_cmd_ctl* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %62, %60, %29
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @hda_get_reg_by_offset(%struct.hda_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @hda_dma_get_vaddr(%struct.hda_softc*, i32, i32) #1

declare dso_local i32 @hda_print_cmd_ctl_data(%struct.hda_codec_cmd_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
