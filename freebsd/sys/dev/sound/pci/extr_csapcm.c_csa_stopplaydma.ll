; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_stopplaydma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_stopplaydma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csa_info = type { i32, %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@BA1_PCTL = common dso_local global i32 0, align 4
@BA1_PVOL = common dso_local global i32 0, align 4
@BA0_SERBSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csa_info*)* @csa_stopplaydma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csa_stopplaydma(%struct.csa_info* %0) #0 {
  %2 = alloca %struct.csa_info*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.csa_info* %0, %struct.csa_info** %2, align 8
  %5 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %6 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %1
  %11 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %12 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %11, i32 0, i32 3
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @BA1_PCTL, align 4
  %15 = call i32 @csa_readmem(i32* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, -65536
  %18 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %19 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @BA1_PCTL, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 65535
  %24 = call i32 @csa_writemem(i32* %20, i32 %21, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @BA1_PVOL, align 4
  %27 = call i32 @csa_writemem(i32* %25, i32 %26, i32 -1)
  %28 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %29 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %32 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %10
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @csa_clearserialfifos(i32* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @BA0_SERBSP, align 4
  %41 = call i32 @csa_writeio(i32* %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %36, %10
  br label %43

43:                                               ; preds = %42, %1
  ret void
}

declare dso_local i32 @csa_readmem(i32*, i32) #1

declare dso_local i32 @csa_writemem(i32*, i32, i32) #1

declare dso_local i32 @csa_clearserialfifos(i32*) #1

declare dso_local i32 @csa_writeio(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
