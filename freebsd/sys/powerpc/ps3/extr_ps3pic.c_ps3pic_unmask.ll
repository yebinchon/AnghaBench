; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3pic.c_ps3pic_unmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3pic.c_ps3pic_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3pic_softc = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @ps3pic_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3pic_unmask(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ps3pic_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ps3pic_softc* @device_get_softc(i32 %9)
  store %struct.ps3pic_softc* %10, %struct.ps3pic_softc** %7, align 8
  %11 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %7, align 8
  %12 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 63, %15
  %17 = zext i32 %16 to i64
  %18 = shl i64 1, %17
  %19 = call i32 @atomic_set_64(i32* %14, i64 %18)
  %20 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %7, align 8
  %21 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 63, %24
  %26 = zext i32 %25 to i64
  %27 = shl i64 1, %26
  %28 = call i32 @atomic_set_64(i32* %23, i64 %27)
  %29 = call i32 @lv1_get_logical_ppe_id(i32* %8)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @lv1_did_update_interrupt_mask(i32 %30, i32 0)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @lv1_did_update_interrupt_mask(i32 %32, i32 1)
  ret void
}

declare dso_local %struct.ps3pic_softc* @device_get_softc(i32) #1

declare dso_local i32 @atomic_set_64(i32*, i64) #1

declare dso_local i32 @lv1_get_logical_ppe_id(i32*) #1

declare dso_local i32 @lv1_did_update_interrupt_mask(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
