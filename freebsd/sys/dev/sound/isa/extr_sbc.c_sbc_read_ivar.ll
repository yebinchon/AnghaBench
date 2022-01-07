; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_sbc_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_sbc_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbc_softc = type { i64 }
%struct.sndcard_func = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @sbc_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.sbc_softc*, align 8
  %11 = alloca %struct.sndcard_func*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.sbc_softc* @device_get_softc(i32 %12)
  store %struct.sbc_softc* %13, %struct.sbc_softc** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.sndcard_func* @device_get_ivars(i32 %14)
  store %struct.sndcard_func* %15, %struct.sndcard_func** %11, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %27 [
    i32 0, label %17
    i32 1, label %22
  ]

17:                                               ; preds = %4
  %18 = load %struct.sndcard_func*, %struct.sndcard_func** %11, align 8
  %19 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %9, align 8
  store i64 %20, i64* %21, align 8
  br label %29

22:                                               ; preds = %4
  %23 = load %struct.sbc_softc*, %struct.sbc_softc** %10, align 8
  %24 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %9, align 8
  store i64 %25, i64* %26, align 8
  br label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %22, %17
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.sbc_softc* @device_get_softc(i32) #1

declare dso_local %struct.sndcard_func* @device_get_ivars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
