; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_ps2kbd.c_fifo_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_ps2kbd.c_fifo_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2kbd_softc = type { %struct.fifo }
%struct.fifo = type { i64, i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps2kbd_softc*, i32*)* @fifo_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fifo_get(%struct.ps2kbd_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ps2kbd_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fifo*, align 8
  store %struct.ps2kbd_softc* %0, %struct.ps2kbd_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %8 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %7, i32 0, i32 0
  store %struct.fifo* %8, %struct.fifo** %6, align 8
  %9 = load %struct.fifo*, %struct.fifo** %6, align 8
  %10 = getelementptr inbounds %struct.fifo, %struct.fifo* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load %struct.fifo*, %struct.fifo** %6, align 8
  %15 = getelementptr inbounds %struct.fifo, %struct.fifo* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.fifo*, %struct.fifo** %6, align 8
  %18 = getelementptr inbounds %struct.fifo, %struct.fifo* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.fifo*, %struct.fifo** %6, align 8
  %24 = getelementptr inbounds %struct.fifo, %struct.fifo* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 1
  %27 = load %struct.fifo*, %struct.fifo** %6, align 8
  %28 = getelementptr inbounds %struct.fifo, %struct.fifo* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = urem i64 %26, %30
  %32 = load %struct.fifo*, %struct.fifo** %6, align 8
  %33 = getelementptr inbounds %struct.fifo, %struct.fifo* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.fifo*, %struct.fifo** %6, align 8
  %35 = getelementptr inbounds %struct.fifo, %struct.fifo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  store i32 0, i32* %3, align 4
  br label %39

38:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
