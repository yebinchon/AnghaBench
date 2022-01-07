; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sndcard_func = type { i64, i32* }
%struct.emu_sc_info = type { i64, i64, i64 }
%struct.emu_pcminfo = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @emu_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.sndcard_func*, align 8
  %11 = alloca %struct.emu_sc_info*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.sndcard_func* @device_get_ivars(i32 %12)
  store %struct.sndcard_func* %13, %struct.sndcard_func** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.emu_sc_info* @device_get_softc(i32 %14)
  store %struct.emu_sc_info* %15, %struct.emu_sc_info** %11, align 8
  %16 = load %struct.sndcard_func*, %struct.sndcard_func** %10, align 8
  %17 = icmp eq %struct.sndcard_func* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %5, align 4
  br label %65

20:                                               ; preds = %4
  %21 = load %struct.emu_sc_info*, %struct.emu_sc_info** %11, align 8
  %22 = icmp eq %struct.emu_sc_info* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %5, align 4
  br label %65

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %62 [
    i32 132, label %27
    i32 128, label %32
    i32 131, label %47
    i32 130, label %52
    i32 129, label %57
  ]

27:                                               ; preds = %25
  %28 = load %struct.sndcard_func*, %struct.sndcard_func** %10, align 8
  %29 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %9, align 8
  store i64 %30, i64* %31, align 8
  br label %64

32:                                               ; preds = %25
  %33 = load %struct.sndcard_func*, %struct.sndcard_func** %10, align 8
  %34 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %5, align 4
  br label %65

39:                                               ; preds = %32
  %40 = load %struct.sndcard_func*, %struct.sndcard_func** %10, align 8
  %41 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = bitcast i32* %42 to %struct.emu_pcminfo*
  %44 = getelementptr inbounds %struct.emu_pcminfo, %struct.emu_pcminfo* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %9, align 8
  store i64 %45, i64* %46, align 8
  br label %64

47:                                               ; preds = %25
  %48 = load %struct.emu_sc_info*, %struct.emu_sc_info** %11, align 8
  %49 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  br label %64

52:                                               ; preds = %25
  %53 = load %struct.emu_sc_info*, %struct.emu_sc_info** %11, align 8
  %54 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %9, align 8
  store i64 %55, i64* %56, align 8
  br label %64

57:                                               ; preds = %25
  %58 = load %struct.emu_sc_info*, %struct.emu_sc_info** %11, align 8
  %59 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %9, align 8
  store i64 %60, i64* %61, align 8
  br label %64

62:                                               ; preds = %25
  %63 = load i32, i32* @ENOENT, align 4
  store i32 %63, i32* %5, align 4
  br label %65

64:                                               ; preds = %57, %52, %47, %39, %27
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %62, %37, %23, %18
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.sndcard_func* @device_get_ivars(i32) #1

declare dso_local %struct.emu_sc_info* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
