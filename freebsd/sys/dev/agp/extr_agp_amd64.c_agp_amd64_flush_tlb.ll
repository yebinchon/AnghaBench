; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_flush_tlb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_flush_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_amd64_softc = type { i32, i32* }

@AGP_AMD64_CACHECTRL = common dso_local global i32 0, align 4
@AGP_AMD64_CACHECTRL_INVGART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @agp_amd64_flush_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_amd64_flush_tlb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_amd64_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.agp_amd64_softc* @device_get_softc(i32 %5)
  store %struct.agp_amd64_softc* %6, %struct.agp_amd64_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %34, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %10 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  %14 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %15 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AGP_AMD64_CACHECTRL, align 4
  %22 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %23 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AGP_AMD64_CACHECTRL, align 4
  %30 = call i32 @pci_cfgregread(i32 0, i32 %28, i32 3, i32 %29, i32 4)
  %31 = load i32, i32* @AGP_AMD64_CACHECTRL_INVGART, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @pci_cfgregwrite(i32 0, i32 %20, i32 3, i32 %21, i32 %32, i32 4)
  br label %34

34:                                               ; preds = %13
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %7

37:                                               ; preds = %7
  ret void
}

declare dso_local %struct.agp_amd64_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_cfgregwrite(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pci_cfgregread(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
