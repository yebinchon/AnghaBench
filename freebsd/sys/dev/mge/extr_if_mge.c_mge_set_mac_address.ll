; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i32 }

@MGE_MAC_ADDR_L = common dso_local global i32 0, align 4
@MGE_MAC_ADDR_H = common dso_local global i32 0, align 4
@MGE_RX_DEFAULT_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mge_softc*)* @mge_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_set_mac_address(%struct.mge_softc* %0) #0 {
  %2 = alloca %struct.mge_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.mge_softc* %0, %struct.mge_softc** %2, align 8
  %6 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %7 = call i32 @MGE_GLOBAL_LOCK_ASSERT(%struct.mge_softc* %6)
  %8 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @IF_LLADDR(i32 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 4
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = shl i32 %16, 8
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 5
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = or i32 %17, %21
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %4, align 1
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = shl i32 %27, 24
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = shl i32 %32, 16
  %34 = or i32 %28, %33
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = shl i32 %38, 8
  %40 = or i32 %34, %39
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = shl i32 %44, 0
  %46 = or i32 %40, %45
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %5, align 1
  %48 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %49 = load i32, i32* @MGE_MAC_ADDR_L, align 4
  %50 = load i8, i8* %4, align 1
  %51 = call i32 @MGE_WRITE(%struct.mge_softc* %48, i32 %49, i8 signext %50)
  %52 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %53 = load i32, i32* @MGE_MAC_ADDR_H, align 4
  %54 = load i8, i8* %5, align 1
  %55 = call i32 @MGE_WRITE(%struct.mge_softc* %52, i32 %53, i8 signext %54)
  %56 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 5
  %59 = load i8, i8* %58, align 1
  %60 = load i32, i32* @MGE_RX_DEFAULT_QUEUE, align 4
  %61 = call i32 @mge_set_ucast_address(%struct.mge_softc* %56, i8 signext %59, i32 %60)
  ret void
}

declare dso_local i32 @MGE_GLOBAL_LOCK_ASSERT(%struct.mge_softc*) #1

declare dso_local i64 @IF_LLADDR(i32) #1

declare dso_local i32 @MGE_WRITE(%struct.mge_softc*, i32, i8 signext) #1

declare dso_local i32 @mge_set_ucast_address(%struct.mge_softc*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
