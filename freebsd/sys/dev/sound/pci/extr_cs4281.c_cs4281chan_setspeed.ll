; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281chan_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281chan_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i64, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@CS4281_DMA_PLAY = common dso_local global i64 0, align 8
@CS4281PCI_DACSR = common dso_local global i32 0, align 4
@CS4281PCI_ADCSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @cs4281chan_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4281chan_setspeed(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_chinfo*, align 8
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %13, %struct.sc_chinfo** %7, align 8
  %14 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %15 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %14, i32 0, i32 2
  %16 = load %struct.sc_info*, %struct.sc_info** %15, align 8
  store %struct.sc_info* %16, %struct.sc_info** %8, align 8
  %17 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %18 = call i32 @adcdac_go(%struct.sc_chinfo* %17, i32 0)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %20 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CS4281_DMA_PLAY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @CS4281PCI_DACSR, align 4
  br label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @CS4281PCI_ADCSR, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @cs4281_rate_to_rv(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @cs4281_wr(%struct.sc_info* %32, i32 %33, i32 %34)
  %36 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @adcdac_go(%struct.sc_chinfo* %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @cs4281_rv_to_rate(i32 %39)
  %41 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %42 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %44 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  ret i32 %45
}

declare dso_local i32 @adcdac_go(%struct.sc_chinfo*, i32) #1

declare dso_local i32 @cs4281_rate_to_rv(i32) #1

declare dso_local i32 @cs4281_wr(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @cs4281_rv_to_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
