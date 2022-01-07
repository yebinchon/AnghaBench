; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32 }

@YDSXGR_NATIVEDACOUTVOL = common dso_local global i32 0, align 4
@YDSXGR_NATIVEADCINVOL = common dso_local global i32 0, align 4
@YDSXGR_NATIVEDACINVOL = common dso_local global i32 0, align 4
@YDSXGR_MODE = common dso_local global i32 0, align 4
@YDSXGR_MAPOFREC = common dso_local global i32 0, align 4
@YDSXGR_MAPOFEFFECT = common dso_local global i32 0, align 4
@YDSXGR_PLAYCTRLBASE = common dso_local global i32 0, align 4
@YDSXGR_RECCTRLBASE = common dso_local global i32 0, align 4
@YDSXGR_EFFCTRLBASE = common dso_local global i32 0, align 4
@YDSXGR_GLOBALCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @ds_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_uninit(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %3 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %4 = load i32, i32* @YDSXGR_NATIVEDACOUTVOL, align 4
  %5 = call i32 @ds_wr(%struct.sc_info* %3, i32 %4, i32 0, i32 4)
  %6 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %7 = load i32, i32* @YDSXGR_NATIVEADCINVOL, align 4
  %8 = call i32 @ds_wr(%struct.sc_info* %6, i32 %7, i32 0, i32 4)
  %9 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %10 = load i32, i32* @YDSXGR_NATIVEDACINVOL, align 4
  %11 = call i32 @ds_wr(%struct.sc_info* %9, i32 %10, i32 0, i32 4)
  %12 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %13 = call i32 @ds_enadsp(%struct.sc_info* %12, i32 0)
  %14 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %15 = load i32, i32* @YDSXGR_MODE, align 4
  %16 = call i32 @ds_wr(%struct.sc_info* %14, i32 %15, i32 65536, i32 4)
  %17 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %18 = load i32, i32* @YDSXGR_MAPOFREC, align 4
  %19 = call i32 @ds_wr(%struct.sc_info* %17, i32 %18, i32 0, i32 4)
  %20 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %21 = load i32, i32* @YDSXGR_MAPOFEFFECT, align 4
  %22 = call i32 @ds_wr(%struct.sc_info* %20, i32 %21, i32 0, i32 4)
  %23 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %24 = load i32, i32* @YDSXGR_PLAYCTRLBASE, align 4
  %25 = call i32 @ds_wr(%struct.sc_info* %23, i32 %24, i32 0, i32 4)
  %26 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %27 = load i32, i32* @YDSXGR_RECCTRLBASE, align 4
  %28 = call i32 @ds_wr(%struct.sc_info* %26, i32 %27, i32 0, i32 4)
  %29 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %30 = load i32, i32* @YDSXGR_EFFCTRLBASE, align 4
  %31 = call i32 @ds_wr(%struct.sc_info* %29, i32 %30, i32 0, i32 4)
  %32 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %33 = load i32, i32* @YDSXGR_GLOBALCTRL, align 4
  %34 = call i32 @ds_wr(%struct.sc_info* %32, i32 %33, i32 0, i32 2)
  %35 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %36 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %39 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bus_dmamap_unload(i32 %37, i32 %40)
  %42 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %43 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %46 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %49 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bus_dmamem_free(i32 %44, i32 %47, i32 %50)
  ret i32 0
}

declare dso_local i32 @ds_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @ds_enadsp(%struct.sc_info*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
