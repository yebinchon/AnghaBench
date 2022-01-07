; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_power.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@CS4281PCI_CWPR = common dso_local global i32 0, align 4
@CS4281PCI_CWPR_MAGIC = common dso_local global i32 0, align 4
@CS4281PCI_EPPMC = common dso_local global i32 0, align 4
@CS4281PCI_EPPMC_FPDN = common dso_local global i32 0, align 4
@CS4281PCI_SPMC = common dso_local global i32 0, align 4
@CS4281PCI_SPMC_RSTN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cs4281_power %d -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*, i32)* @cs4281_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4281_power(%struct.sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %24 [
    i32 0, label %6
    i32 3, label %15
  ]

6:                                                ; preds = %2
  %7 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %8 = load i32, i32* @CS4281PCI_CWPR, align 4
  %9 = load i32, i32* @CS4281PCI_CWPR_MAGIC, align 4
  %10 = call i32 @cs4281_wr(%struct.sc_info* %7, i32 %8, i32 %9)
  %11 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %12 = load i32, i32* @CS4281PCI_EPPMC, align 4
  %13 = load i32, i32* @CS4281PCI_EPPMC_FPDN, align 4
  %14 = call i32 @cs4281_clr4(%struct.sc_info* %11, i32 %12, i32 %13)
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %17 = load i32, i32* @CS4281PCI_EPPMC, align 4
  %18 = load i32, i32* @CS4281PCI_EPPMC_FPDN, align 4
  %19 = call i32 @cs4281_set4(%struct.sc_info* %16, i32 %17, i32 %18)
  %20 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %21 = load i32, i32* @CS4281PCI_SPMC, align 4
  %22 = load i32, i32* @CS4281PCI_SPMC_RSTN, align 4
  %23 = call i32 @cs4281_clr4(%struct.sc_info* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %2, %15, %6
  %25 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %26 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = call i32 @DEB(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %33 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  ret i32 0
}

declare dso_local i32 @cs4281_wr(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @cs4281_clr4(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @cs4281_set4(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
