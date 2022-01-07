; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emupchan_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emupchan_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pchinfo = type { i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @emupchan_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emupchan_free(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sc_pchinfo*, align 8
  %6 = alloca %struct.sc_info*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sc_pchinfo*
  store %struct.sc_pchinfo* %9, %struct.sc_pchinfo** %5, align 8
  %10 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %5, align 8
  %11 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %10, i32 0, i32 1
  %12 = load %struct.sc_info*, %struct.sc_info** %11, align 8
  store %struct.sc_info* %12, %struct.sc_info** %6, align 8
  %13 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %14 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @snd_mtxlock(i32 %15)
  %17 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %18 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %5, align 8
  %19 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @sndbuf_getbuf(i32 %20)
  %22 = call i32 @emu_memfree(%struct.sc_info* %17, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %24 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_mtxunlock(i32 %25)
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @emu_memfree(%struct.sc_info*, i32) #1

declare dso_local i32 @sndbuf_getbuf(i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
