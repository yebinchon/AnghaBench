; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281chan_setformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281chan_setformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i64, i32, i64, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@CS4281_DMA_PLAY = common dso_local global i64 0, align 8
@CS4281PCI_DMR_TR_PLAY = common dso_local global i32 0, align 4
@CS4281PCI_DMR_TR_REC = common dso_local global i32 0, align 4
@CS4281PCI_DMR_DMA = common dso_local global i32 0, align 4
@CS4281PCI_DMR_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @cs4281chan_setformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4281chan_setformat(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_chinfo*, align 8
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %12, %struct.sc_chinfo** %7, align 8
  %13 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %14 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %13, i32 0, i32 4
  %15 = load %struct.sc_info*, %struct.sc_info** %14, align 8
  store %struct.sc_info* %15, %struct.sc_info** %8, align 8
  %16 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %17 = call i32 @adcdac_go(%struct.sc_chinfo* %16, i32 0)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %19 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CS4281_DMA_PLAY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @CS4281PCI_DMR_TR_PLAY, align 4
  store i32 %24, i32* %9, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @CS4281PCI_DMR_TR_REC, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, i32* @CS4281PCI_DMR_DMA, align 4
  %29 = load i32, i32* @CS4281PCI_DMR_AUTO, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @cs4281_format_to_dmr(i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %38 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %39 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @CS4281PCI_DMR(i64 %40)
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @cs4281_wr(%struct.sc_info* %37, i32 %41, i32 %42)
  %44 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @adcdac_go(%struct.sc_chinfo* %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %49 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @cs4281_format_to_bps(i32 %50)
  %52 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %53 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %55 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  ret i32 0
}

declare dso_local i32 @adcdac_go(%struct.sc_chinfo*, i32) #1

declare dso_local i32 @cs4281_format_to_dmr(i32) #1

declare dso_local i32 @cs4281_wr(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @CS4281PCI_DMR(i64) #1

declare dso_local i32 @cs4281_format_to_bps(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
