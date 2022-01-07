; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmichan_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmichan_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i64, i32, i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@CMPCI_REG_DMA0_BASE = common dso_local global i32 0, align 4
@CMPCI_REG_DMA1_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cmichan_getptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmichan_getptr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sc_chinfo*, align 8
  %6 = alloca %struct.sc_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %11, %struct.sc_chinfo** %5, align 8
  %12 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %13 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %12, i32 0, i32 4
  %14 = load %struct.sc_info*, %struct.sc_info** %13, align 8
  store %struct.sc_info* %14, %struct.sc_info** %6, align 8
  %15 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %16 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @snd_mtxlock(i32 %17)
  %19 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %20 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCMDIR_PLAY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %26 = load i32, i32* @CMPCI_REG_DMA0_BASE, align 4
  %27 = call i32 @cmi_rd(%struct.sc_info* %25, i32 %26, i32 4)
  store i32 %27, i32* %7, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %30 = load i32, i32* @CMPCI_REG_DMA1_BASE, align 4
  %31 = call i32 @cmi_rd(%struct.sc_info* %29, i32 %30, i32 4)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %34 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snd_mtxunlock(i32 %35)
  %37 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %38 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @sndbuf_getsize(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %43 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %41, %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %49 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  %52 = load i32, i32* %9, align 4
  %53 = srem i32 %51, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @cmi_rd(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @sndbuf_getsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
