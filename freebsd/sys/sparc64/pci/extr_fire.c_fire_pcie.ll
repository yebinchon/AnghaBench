; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_pcie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fire_msiqarg = type { i64, i32, i64, i64, %struct.fo_msiq_record*, %struct.TYPE_2__ }
%struct.fo_msiq_record = type { i64 }
%struct.TYPE_2__ = type { %struct.fire_softc* }
%struct.fire_softc = type { i64, i32 }

@FO_PCI_EQ_HD_MASK = common dso_local global i64 0, align 8
@FO_PCI_EQ_HD_SHFT = common dso_local global i64 0, align 8
@FO_MQR_WORD0_FMT_TYPE_MSG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"%s: received non-PCIe message in event queue %d (word0 %#llx)\00", align 1
@FO_MQR_WORD0_DATA0_MASK = common dso_local global i64 0, align 8
@FO_MQR_WORD0_DATA0_SHFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"correctable PCIe error\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: %sfatal PCIe error\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"non-\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"%s: received unknown PCIe message %#x\00", align 1
@FO_MQR_WORD0_FMT_TYPE_MASK = common dso_local global i64 0, align 8
@FO_PCI_EQ_TL_OVERR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"event queue %d overflow\0A\00", align 1
@FO_PCI_EQ_CTRL_CLR_BASE = common dso_local global i64 0, align 8
@FO_PCI_EQ_CTRL_CLR_COVERR = common dso_local global i64 0, align 8
@FILTER_HANDLED = common dso_local global i32 0, align 4
@PCIE_MSG_CODE_ERR_COR = common dso_local global i64 0, align 8
@PCIE_MSG_CODE_ERR_FATAL = common dso_local global i64 0, align 8
@PCIE_MSG_CODE_ERR_NONFATAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fire_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fire_pcie(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fire_msiqarg*, align 8
  %4 = alloca %struct.fire_softc*, align 8
  %5 = alloca %struct.fo_msiq_record*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.fire_msiqarg*
  store %struct.fire_msiqarg* %12, %struct.fire_msiqarg** %3, align 8
  %13 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %3, align 8
  %14 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.fire_softc*, %struct.fire_softc** %15, align 8
  store %struct.fire_softc* %16, %struct.fire_softc** %4, align 8
  %17 = load %struct.fire_softc*, %struct.fire_softc** %4, align 8
  %18 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %3, align 8
  %21 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %3, align 8
  %24 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %23, i32 0, i32 1
  %25 = call i32 @mtx_lock_spin(i32* %24)
  %26 = load %struct.fire_softc*, %struct.fire_softc** %4, align 8
  %27 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %3, align 8
  %28 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @FIRE_PCI_READ_8(%struct.fire_softc* %26, i64 %29)
  %31 = load i64, i64* @FO_PCI_EQ_HD_MASK, align 8
  %32 = and i64 %30, %31
  %33 = load i64, i64* @FO_PCI_EQ_HD_SHFT, align 8
  %34 = lshr i64 %32, %33
  store i64 %34, i64* %8, align 8
  %35 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %3, align 8
  %36 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %35, i32 0, i32 4
  %37 = load %struct.fo_msiq_record*, %struct.fo_msiq_record** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.fo_msiq_record, %struct.fo_msiq_record* %37, i64 %38
  store %struct.fo_msiq_record* %39, %struct.fo_msiq_record** %5, align 8
  %40 = load %struct.fo_msiq_record*, %struct.fo_msiq_record** %5, align 8
  %41 = getelementptr inbounds %struct.fo_msiq_record, %struct.fo_msiq_record* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %114, %1
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @FO_MQR_WORD0_FMT_TYPE_MSG, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @device_get_nameunit(i32 %49)
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %7, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @KASSERT(i32 %48, i8* %53)
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @FO_MQR_WORD0_DATA0_MASK, align 8
  %57 = and i64 %55, %56
  %58 = load i64, i64* @FO_MQR_WORD0_DATA0_SHFT, align 8
  %59 = lshr i64 %57, %58
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp eq i64 %60, 48
  br i1 %61, label %62, label %65

62:                                               ; preds = %43
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %85

65:                                               ; preds = %43
  %66 = load i64, i64* %9, align 8
  %67 = icmp eq i64 %66, 49
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %9, align 8
  %70 = icmp eq i64 %69, 51
  br i1 %70, label %71, label %79

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @device_get_nameunit(i32 %72)
  %74 = load i64, i64* %9, align 8
  %75 = icmp eq i64 %74, 49
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %78 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %73, i8* %77)
  br label %84

79:                                               ; preds = %68
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @device_get_nameunit(i32 %80)
  %82 = load i64, i64* %9, align 8
  %83 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %81, i64 %82)
  br label %84

84:                                               ; preds = %79, %71
  br label %85

85:                                               ; preds = %84, %62
  %86 = load i64, i64* @FO_MQR_WORD0_FMT_TYPE_MASK, align 8
  %87 = xor i64 %86, -1
  %88 = load %struct.fo_msiq_record*, %struct.fo_msiq_record** %5, align 8
  %89 = getelementptr inbounds %struct.fo_msiq_record, %struct.fo_msiq_record* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = and i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, 1
  %94 = load %struct.fire_softc*, %struct.fire_softc** %4, align 8
  %95 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = urem i64 %93, %96
  store i64 %97, i64* %8, align 8
  %98 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %3, align 8
  %99 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %98, i32 0, i32 4
  %100 = load %struct.fo_msiq_record*, %struct.fo_msiq_record** %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds %struct.fo_msiq_record, %struct.fo_msiq_record* %100, i64 %101
  store %struct.fo_msiq_record* %102, %struct.fo_msiq_record** %5, align 8
  %103 = load %struct.fo_msiq_record*, %struct.fo_msiq_record** %5, align 8
  %104 = getelementptr inbounds %struct.fo_msiq_record, %struct.fo_msiq_record* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %7, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @FO_MQR_WORD0_FMT_TYPE_MASK, align 8
  %108 = and i64 %106, %107
  %109 = icmp eq i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i64 @__predict_true(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %85
  br label %115

114:                                              ; preds = %85
  br label %43

115:                                              ; preds = %113
  %116 = load %struct.fire_softc*, %struct.fire_softc** %4, align 8
  %117 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %3, align 8
  %118 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* @FO_PCI_EQ_HD_MASK, align 8
  %122 = and i64 %120, %121
  %123 = load i64, i64* @FO_PCI_EQ_HD_SHFT, align 8
  %124 = shl i64 %122, %123
  %125 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %116, i64 %119, i64 %124)
  %126 = load %struct.fire_softc*, %struct.fire_softc** %4, align 8
  %127 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %3, align 8
  %128 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @FIRE_PCI_READ_8(%struct.fire_softc* %126, i64 %129)
  %131 = load i64, i64* @FO_PCI_EQ_TL_OVERR, align 8
  %132 = and i64 %130, %131
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %115
  %135 = load i32, i32* %6, align 4
  %136 = load i64, i64* %10, align 8
  %137 = call i32 (i32, i8*, ...) @device_printf(i32 %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %136)
  %138 = load i64, i64* %10, align 8
  %139 = shl i64 %138, 3
  store i64 %139, i64* %10, align 8
  %140 = load %struct.fire_softc*, %struct.fire_softc** %4, align 8
  %141 = load i64, i64* @FO_PCI_EQ_CTRL_CLR_BASE, align 8
  %142 = load i64, i64* %10, align 8
  %143 = add i64 %141, %142
  %144 = load %struct.fire_softc*, %struct.fire_softc** %4, align 8
  %145 = load i64, i64* @FO_PCI_EQ_CTRL_CLR_BASE, align 8
  %146 = load i64, i64* %10, align 8
  %147 = add i64 %145, %146
  %148 = call i64 @FIRE_PCI_READ_8(%struct.fire_softc* %144, i64 %147)
  %149 = load i64, i64* @FO_PCI_EQ_CTRL_CLR_COVERR, align 8
  %150 = or i64 %148, %149
  %151 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %140, i64 %143, i64 %150)
  br label %152

152:                                              ; preds = %134, %115
  %153 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %3, align 8
  %154 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %153, i32 0, i32 1
  %155 = call i32 @mtx_unlock_spin(i32* %154)
  %156 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %156
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i64 @FIRE_PCI_READ_8(%struct.fire_softc*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @panic(i8*, i32, ...) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @FIRE_PCI_WRITE_8(%struct.fire_softc*, i64, i64) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
