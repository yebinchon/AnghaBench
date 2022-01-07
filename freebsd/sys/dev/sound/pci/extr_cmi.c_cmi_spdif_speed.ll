; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_spdif_speed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_spdif_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@CMPCI_REG_SPDIF0_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_XSPDIF_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_W_SPDIF_48L = common dso_local global i32 0, align 4
@CMPCI_REG_SPDIF_48K = common dso_local global i32 0, align 4
@CMPCI_REG_MISC = common dso_local global i32 0, align 4
@CMPCI_REG_FUNC_1 = common dso_local global i32 0, align 4
@CMPCI_REG_LEGACY_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*, i32)* @cmi_spdif_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmi_spdif_speed(%struct.sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 44100
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32, i32* @CMPCI_REG_SPDIF0_ENABLE, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @CMPCI_REG_XSPDIF_ENABLE, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 48000
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* @CMPCI_REG_W_SPDIF_48L, align 4
  %17 = load i32, i32* @CMPCI_REG_SPDIF_48K, align 4
  %18 = or i32 %16, %17
  br label %20

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 0, %19 ]
  store i32 %21, i32* %7, align 4
  br label %23

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %20
  %24 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %25 = load i32, i32* @CMPCI_REG_MISC, align 4
  %26 = load i32, i32* @CMPCI_REG_W_SPDIF_48L, align 4
  %27 = load i32, i32* @CMPCI_REG_SPDIF_48K, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @cmi_partial_wr4(%struct.sc_info* %24, i32 %25, i32 0, i32 %28, i32 %29)
  %31 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %32 = load i32, i32* @CMPCI_REG_FUNC_1, align 4
  %33 = load i32, i32* @CMPCI_REG_SPDIF0_ENABLE, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @cmi_partial_wr4(%struct.sc_info* %31, i32 %32, i32 0, i32 %33, i32 %34)
  %36 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %37 = load i32, i32* @CMPCI_REG_LEGACY_CTRL, align 4
  %38 = load i32, i32* @CMPCI_REG_XSPDIF_ENABLE, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @cmi_partial_wr4(%struct.sc_info* %36, i32 %37, i32 0, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @cmi_partial_wr4(%struct.sc_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
