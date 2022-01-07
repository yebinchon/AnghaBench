; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pchan_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pchan_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pchinfo = type { i32, %struct.sc_info* }
%struct.sc_info = type { i32, i32 }

@CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"m3_pchan_free(dac=%d)\0A\00", align 1
@KDATA_INSTANCE0_MINISRC = common dso_local global i32 0, align 4
@KDATA_DMA_XFER0 = common dso_local global i32 0, align 4
@KDATA_MIXER_XFER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @m3_pchan_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m3_pchan_free(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sc_pchinfo*, align 8
  %6 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.sc_pchinfo*
  store %struct.sc_pchinfo* %8, %struct.sc_pchinfo** %5, align 8
  %9 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %5, align 8
  %10 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %9, i32 0, i32 1
  %11 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  store %struct.sc_info* %11, %struct.sc_info** %6, align 8
  %12 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %13 = call i32 @M3_LOCK(%struct.sc_info* %12)
  %14 = load i32, i32* @CHANGE, align 4
  %15 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %5, align 8
  %16 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @M3_DEBUG(i32 %14, i8* %19)
  %21 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %22 = load i32, i32* @KDATA_INSTANCE0_MINISRC, align 4
  %23 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %24 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = add nsw i32 %22, %26
  %28 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %29 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = call i32 @m3_wr_assp_data(%struct.sc_info* %21, i32 %31, i32 0)
  %33 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %34 = load i32, i32* @KDATA_DMA_XFER0, align 4
  %35 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %36 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = add nsw i32 %34, %38
  %40 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %41 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = call i32 @m3_wr_assp_data(%struct.sc_info* %33, i32 %43, i32 0)
  %45 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %46 = load i32, i32* @KDATA_MIXER_XFER0, align 4
  %47 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %48 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = add nsw i32 %46, %50
  %52 = call i32 @m3_wr_assp_data(%struct.sc_info* %45, i32 %51, i32 0)
  %53 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %54 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %58 = call i32 @M3_UNLOCK(%struct.sc_info* %57)
  ret i32 0
}

declare dso_local i32 @M3_LOCK(%struct.sc_info*) #1

declare dso_local i32 @M3_DEBUG(i32, i8*) #1

declare dso_local i32 @m3_wr_assp_data(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @M3_UNLOCK(%struct.sc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
