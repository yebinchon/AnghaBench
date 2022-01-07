; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_write_ra.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_write_ra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { %struct.eth_uni* }
%struct.eth_uni = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@E1000_RAH_AV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e82545_softc*, i32, i32)* @e82545_write_ra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_write_ra(%struct.e82545_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e82545_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.eth_uni*, align 8
  %8 = alloca i32, align 4
  store %struct.e82545_softc* %0, %struct.e82545_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 15
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.e82545_softc*, %struct.e82545_softc** %4, align 8
  %16 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %15, i32 0, i32 0
  %17 = load %struct.eth_uni*, %struct.eth_uni** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %17, i64 %19
  store %struct.eth_uni* %20, %struct.eth_uni** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @E1000_RAH_AV, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @E1000_RAH_AV, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %32 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 16
  %35 = and i32 %34, 3
  %36 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %37 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 8
  %40 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %41 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %47 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32 %45, i32* %50, align 4
  br label %79

51:                                               ; preds = %3
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 24
  %54 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %55 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  store i32 %53, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = ashr i32 %59, 16
  %61 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %62 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 %60, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = ashr i32 %66, 8
  %68 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %69 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %67, i32* %72, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %75 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %73, i32* %78, align 4
  br label %79

79:                                               ; preds = %51, %24
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
