; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vtbe_get_hwaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vtbe_get_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtbe_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtbe_softc*, i8*)* @vtbe_get_hwaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtbe_get_hwaddr(%struct.vtbe_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.vtbe_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.vtbe_softc* %0, %struct.vtbe_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 (...) @arc4random()
  %7 = and i32 %6, 16777215
  store i32 %7, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 98, i8* %9, align 1
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 115, i8* %11, align 1
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 2
  store i8 100, i8* %13, align 1
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 16
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 3
  store i8 %16, i8* %18, align 1
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 8
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  store i8 %21, i8* %23, align 1
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 0
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 5
  store i8 %26, i8* %28, align 1
  ret i32 0
}

declare dso_local i32 @arc4random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
