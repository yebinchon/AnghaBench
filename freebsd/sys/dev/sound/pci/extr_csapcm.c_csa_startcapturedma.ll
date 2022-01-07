; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_startcapturedma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_startcapturedma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csa_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@BA1_CCTL = common dso_local global i32 0, align 4
@BA1_CVOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csa_info*)* @csa_startcapturedma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csa_startcapturedma(%struct.csa_info* %0) #0 {
  %2 = alloca %struct.csa_info*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.csa_info* %0, %struct.csa_info** %2, align 8
  %5 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %6 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %1
  %11 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %12 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %11, i32 0, i32 2
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @BA1_CCTL, align 4
  %15 = call i32 @csa_readmem(i32* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, -65536
  store i32 %17, i32* %4, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @BA1_CCTL, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %22 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %20, %23
  %25 = call i32 @csa_writemem(i32* %18, i32 %19, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @BA1_CVOL, align 4
  %28 = call i32 @csa_writemem(i32* %26, i32 %27, i32 -2147450880)
  %29 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %30 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @csa_readmem(i32*, i32) #1

declare dso_local i32 @csa_writemem(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
