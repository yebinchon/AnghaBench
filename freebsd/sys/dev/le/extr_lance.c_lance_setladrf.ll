; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_setladrf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_setladrf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.lance_hash_maddr_ctx = type { i32*, %struct.lance_softc* }

@IFF_PROMISC = common dso_local global i32 0, align 4
@LE_ALLMULTI = common dso_local global i32 0, align 4
@lance_hash_maddr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lance_setladrf(%struct.lance_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.lance_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.lance_hash_maddr_ctx, align 8
  store %struct.lance_softc* %0, %struct.lance_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %8 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %7, i32 0, i32 1
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %5, align 8
  %10 = getelementptr inbounds %struct.lance_hash_maddr_ctx, %struct.lance_hash_maddr_ctx* %6, i32 0, i32 0
  %11 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %12 = bitcast %struct.lance_softc* %11 to i32*
  store i32* %12, i32** %10, align 8
  %13 = getelementptr inbounds %struct.lance_hash_maddr_ctx, %struct.lance_hash_maddr_ctx* %6, i32 0, i32 1
  %14 = load i32*, i32** %4, align 8
  %15 = bitcast i32* %14 to %struct.lance_softc*
  store %struct.lance_softc* %15, %struct.lance_softc** %13, align 8
  %16 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_PROMISC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %24 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @LE_ALLMULTI, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22, %2
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 65535, i32* %31, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 65535, i32* %33, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 65535, i32* %35, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 65535, i32* %37, align 4
  br label %50

38:                                               ; preds = %22
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 0, i32* %42, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 0, i32* %44, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %48 = load i32, i32* @lance_hash_maddr, align 4
  %49 = call i32 @if_foreach_llmaddr(%struct.ifnet* %47, i32 %48, %struct.lance_hash_maddr_ctx* %6)
  br label %50

50:                                               ; preds = %38, %29
  ret void
}

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.lance_hash_maddr_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
