; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_read_ra.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_read_ra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { %struct.eth_uni* }
%struct.eth_uni = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e82545_softc*, i32)* @e82545_read_ra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e82545_read_ra(%struct.e82545_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.e82545_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eth_uni*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e82545_softc* %0, %struct.e82545_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 15
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %15 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %14, i32 0, i32 0
  %16 = load %struct.eth_uni*, %struct.eth_uni** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %16, i64 %18
  store %struct.eth_uni* %19, %struct.eth_uni** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %2
  %24 = load %struct.eth_uni*, %struct.eth_uni** %5, align 8
  %25 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %26, 31
  %28 = load %struct.eth_uni*, %struct.eth_uni** %5, align 8
  %29 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  %32 = or i32 %27, %31
  %33 = load %struct.eth_uni*, %struct.eth_uni** %5, align 8
  %34 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %32, %39
  %41 = load %struct.eth_uni*, %struct.eth_uni** %5, align 8
  %42 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %40, %46
  store i32 %47, i32* %6, align 4
  br label %79

48:                                               ; preds = %2
  %49 = load %struct.eth_uni*, %struct.eth_uni** %5, align 8
  %50 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 24
  %56 = load %struct.eth_uni*, %struct.eth_uni** %5, align 8
  %57 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %55, %62
  %64 = load %struct.eth_uni*, %struct.eth_uni** %5, align 8
  %65 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 8
  %71 = or i32 %63, %70
  %72 = load %struct.eth_uni*, %struct.eth_uni** %5, align 8
  %73 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %71, %77
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %48, %23
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
