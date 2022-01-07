; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_xlpge_read_mac_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_xlpge_read_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpge_softc = type { i32, i64, i32*, i64, i32 }

@SGMIIC = common dso_local global i64 0, align 8
@XAUIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_xlpge_softc*)* @xlpge_read_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlpge_read_mac_addr(%struct.nlm_xlpge_softc* %0) #0 {
  %2 = alloca %struct.nlm_xlpge_softc*, align 8
  store %struct.nlm_xlpge_softc* %0, %struct.nlm_xlpge_softc** %2, align 8
  %3 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %4 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @xlpge_get_macaddr(i32* %5)
  %7 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %8 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = mul nsw i32 %9, 4
  %11 = sext i32 %10 to i64
  %12 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %13 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %17 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 5
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %15
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %25 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SGMIIC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %1
  %30 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %31 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %34 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %37 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %40 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %43 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @nlm_nae_setup_mac_addr_sgmii(i32 %32, i32 %35, i64 %38, i64 %41, i32* %44)
  br label %70

46:                                               ; preds = %1
  %47 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %48 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @XAUIC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %54 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %57 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %60 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %63 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %2, align 8
  %66 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @nlm_nae_setup_mac_addr_xaui(i32 %55, i32 %58, i64 %61, i64 %64, i32* %67)
  br label %69

69:                                               ; preds = %52, %46
  br label %70

70:                                               ; preds = %69, %29
  ret void
}

declare dso_local i32 @xlpge_get_macaddr(i32*) #1

declare dso_local i32 @nlm_nae_setup_mac_addr_sgmii(i32, i32, i64, i64, i32*) #1

declare dso_local i32 @nlm_nae_setup_mac_addr_xaui(i32, i32, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
