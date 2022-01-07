; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emurchan_setblocksize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emurchan_setblocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_rchinfo = type { i32, i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @emurchan_setblocksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emurchan_setblocksize(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_rchinfo*, align 8
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sc_rchinfo*
  store %struct.sc_rchinfo* %12, %struct.sc_rchinfo** %7, align 8
  %13 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %7, align 8
  %14 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %13, i32 0, i32 3
  %15 = load %struct.sc_info*, %struct.sc_info** %14, align 8
  store %struct.sc_info* %15, %struct.sc_info** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %7, align 8
  %18 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snd_mtxlock(i32 %21)
  %23 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %24 = call i32 @emu_settimer(%struct.sc_info* %23)
  %25 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %26 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 48000, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %30 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_mtxunlock(i32 %31)
  %33 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %7, align 8
  %34 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %7, align 8
  %37 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sndbuf_getalign(i32 %38)
  %40 = mul nsw i32 %35, %39
  %41 = load i32, i32* %9, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @emu_settimer(%struct.sc_info*) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @sndbuf_getalign(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
