; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_adcdac_go.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_adcdac_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@CS4281PCI_DCR_MSK = common dso_local global i32 0, align 4
@CS4281PCI_HICR = common dso_local global i32 0, align 4
@CS4281PCI_HICR_EOI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_chinfo*, i32)* @adcdac_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adcdac_go(%struct.sc_chinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.sc_chinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sc_info*, align 8
  %6 = alloca i32, align 4
  store %struct.sc_chinfo* %0, %struct.sc_chinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %8 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %7, i32 0, i32 1
  %9 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  store %struct.sc_info* %9, %struct.sc_info** %5, align 8
  %10 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %11 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %12 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @CS4281PCI_DCR(i32 %13)
  %15 = call i32 @cs4281_rd(%struct.sc_info* %10, i32 %14)
  %16 = load i32, i32* @CS4281PCI_DCR_MSK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %25 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %26 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @CS4281PCI_DCR(i32 %27)
  %29 = load i32, i32* @CS4281PCI_DCR_MSK, align 4
  %30 = call i32 @cs4281_clr4(%struct.sc_info* %24, i32 %28, i32 %29)
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %33 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %34 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @CS4281PCI_DCR(i32 %35)
  %37 = load i32, i32* @CS4281PCI_DCR_MSK, align 4
  %38 = call i32 @cs4281_set4(%struct.sc_info* %32, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %23
  %40 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %41 = load i32, i32* @CS4281PCI_HICR, align 4
  %42 = load i32, i32* @CS4281PCI_HICR_EOI, align 4
  %43 = call i32 @cs4281_wr(%struct.sc_info* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @cs4281_rd(%struct.sc_info*, i32) #1

declare dso_local i32 @CS4281PCI_DCR(i32) #1

declare dso_local i32 @cs4281_clr4(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @cs4281_set4(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @cs4281_wr(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
