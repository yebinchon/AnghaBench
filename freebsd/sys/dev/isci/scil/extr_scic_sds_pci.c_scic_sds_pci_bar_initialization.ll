; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_pci.c_scic_sds_pci_bar_initialization.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_pci.c_scic_sds_pci_bar_initialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i64, i32*, i32* }

@PATSBURG_SMU_BAR = common dso_local global i32 0, align 4
@PATSBURG_SCU_BAR = common dso_local global i32 0, align 4
@ARLINGTON_LEX_BAR = common dso_local global i32 0, align 4
@ARLINGTON_SCU_BAR = common dso_local global i32 0, align 4
@ARLINGTON_SMU_BAR = common dso_local global i32 0, align 4
@LEX_REGISTER_OFFSET = common dso_local global i32 0, align 4
@PATSBURG_IO_SPACE_BAR0 = common dso_local global i32 0, align 4
@PATSBURG_IO_SPACE_BAR1 = common dso_local global i32 0, align 4
@SCU_PBG_HBA_REV_B0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sds_pci_bar_initialization(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = load i32, i32* @PATSBURG_SMU_BAR, align 4
  %5 = call i64 @scic_cb_pci_get_bar(%struct.TYPE_4__* %3, i32 %4)
  %6 = inttoptr i64 %5 to i8*
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = mul nsw i32 16384, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %6, i64 %11
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  store i32* %13, i32** %15, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = load i32, i32* @PATSBURG_SCU_BAR, align 4
  %18 = call i64 @scic_cb_pci_get_bar(%struct.TYPE_4__* %16, i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 4194304, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %19, i64 %24
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  ret void
}

declare dso_local i64 @scic_cb_pci_get_bar(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
