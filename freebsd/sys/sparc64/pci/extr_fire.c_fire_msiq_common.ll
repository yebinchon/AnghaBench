; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_msiq_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_msiq_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_vector = type { i32 }
%struct.fire_msiqarg = type { i64, i64, i64, i64, %struct.fo_msiq_record*, %struct.TYPE_2__ }
%struct.fo_msiq_record = type { i64 }
%struct.TYPE_2__ = type { %struct.fire_softc* }
%struct.fire_softc = type { i64, i32 }

@FO_PCI_EQ_HD_MASK = common dso_local global i64 0, align 8
@FO_PCI_EQ_HD_SHFT = common dso_local global i64 0, align 8
@FO_MQR_WORD0_FMT_TYPE_MASK = common dso_local global i64 0, align 8
@FO_MQR_WORD0_FMT_TYPE_MSI64 = common dso_local global i64 0, align 8
@FO_MQR_WORD0_FMT_TYPE_MSI32 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"%s: received non-MSI/MSI-X message in event queue %d (word0 %#llx)\00", align 1
@FO_MQR_WORD0_DATA0_MASK = common dso_local global i64 0, align 8
@FO_MQR_WORD0_DATA0_SHFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"%s: received non-matching MSI/MSI-X in event queue %d (%d versus %d)\00", align 1
@FO_PCI_MSI_CLR_BASE = common dso_local global i64 0, align 8
@FO_PCI_MSI_CLR_EQWR_N = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"stray MSI/MSI-X in event queue %d\0A\00", align 1
@FO_PCI_EQ_TL_OVERR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"event queue %d overflow\0A\00", align 1
@FO_PCI_EQ_CTRL_CLR_BASE = common dso_local global i64 0, align 8
@FO_PCI_EQ_CTRL_CLR_COVERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intr_vector*, %struct.fire_msiqarg*)* @fire_msiq_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fire_msiq_common(%struct.intr_vector* %0, %struct.fire_msiqarg* %1) #0 {
  %3 = alloca %struct.intr_vector*, align 8
  %4 = alloca %struct.fire_msiqarg*, align 8
  %5 = alloca %struct.fire_softc*, align 8
  %6 = alloca %struct.fo_msiq_record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.intr_vector* %0, %struct.intr_vector** %3, align 8
  store %struct.fire_msiqarg* %1, %struct.fire_msiqarg** %4, align 8
  %12 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %4, align 8
  %13 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.fire_softc*, %struct.fire_softc** %14, align 8
  store %struct.fire_softc* %15, %struct.fire_softc** %5, align 8
  %16 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %17 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %4, align 8
  %20 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %23 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %4, align 8
  %24 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @FIRE_PCI_READ_8(%struct.fire_softc* %22, i64 %25)
  %27 = load i64, i64* @FO_PCI_EQ_HD_MASK, align 8
  %28 = and i64 %26, %27
  %29 = load i64, i64* @FO_PCI_EQ_HD_SHFT, align 8
  %30 = lshr i64 %28, %29
  store i64 %30, i64* %9, align 8
  %31 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %4, align 8
  %32 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %31, i32 0, i32 4
  %33 = load %struct.fo_msiq_record*, %struct.fo_msiq_record** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.fo_msiq_record, %struct.fo_msiq_record* %33, i64 %34
  store %struct.fo_msiq_record* %35, %struct.fo_msiq_record** %6, align 8
  %36 = load %struct.fo_msiq_record*, %struct.fo_msiq_record** %6, align 8
  %37 = getelementptr inbounds %struct.fo_msiq_record, %struct.fo_msiq_record* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %105, %2
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @FO_MQR_WORD0_FMT_TYPE_MASK, align 8
  %42 = and i64 %40, %41
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @__predict_false(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %126

48:                                               ; preds = %39
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @FO_MQR_WORD0_FMT_TYPE_MSI64, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @FO_MQR_WORD0_FMT_TYPE_MSI32, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ true, %48 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @device_get_nameunit(i32 %61)
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %8, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @KASSERT(i32 %60, i8* %65)
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @FO_MQR_WORD0_DATA0_MASK, align 8
  %69 = and i64 %67, %68
  %70 = load i64, i64* @FO_MQR_WORD0_DATA0_SHFT, align 8
  %71 = lshr i64 %69, %70
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %4, align 8
  %74 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @device_get_nameunit(i32 %78)
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %4, align 8
  %83 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @KASSERT(i32 %77, i8* %85)
  %87 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %88 = load i64, i64* @FO_PCI_MSI_CLR_BASE, align 8
  %89 = load i64, i64* %10, align 8
  %90 = shl i64 %89, 3
  %91 = add i64 %88, %90
  %92 = load i64, i64* @FO_PCI_MSI_CLR_EQWR_N, align 8
  %93 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %87, i64 %91, i64 %92)
  %94 = load %struct.intr_vector*, %struct.intr_vector** %3, align 8
  %95 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @intr_event_handle(i32 %96, i32* null)
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i64 @__predict_false(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %58
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %103)
  br label %105

105:                                              ; preds = %102, %58
  %106 = load i64, i64* @FO_MQR_WORD0_FMT_TYPE_MASK, align 8
  %107 = xor i64 %106, -1
  %108 = load %struct.fo_msiq_record*, %struct.fo_msiq_record** %6, align 8
  %109 = getelementptr inbounds %struct.fo_msiq_record, %struct.fo_msiq_record* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = and i64 %110, %107
  store i64 %111, i64* %109, align 8
  %112 = load i64, i64* %9, align 8
  %113 = add i64 %112, 1
  %114 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %115 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = urem i64 %113, %116
  store i64 %117, i64* %9, align 8
  %118 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %4, align 8
  %119 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %118, i32 0, i32 4
  %120 = load %struct.fo_msiq_record*, %struct.fo_msiq_record** %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds %struct.fo_msiq_record, %struct.fo_msiq_record* %120, i64 %121
  store %struct.fo_msiq_record* %122, %struct.fo_msiq_record** %6, align 8
  %123 = load %struct.fo_msiq_record*, %struct.fo_msiq_record** %6, align 8
  %124 = getelementptr inbounds %struct.fo_msiq_record, %struct.fo_msiq_record* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %8, align 8
  br label %39

126:                                              ; preds = %47
  %127 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %128 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %4, align 8
  %129 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* @FO_PCI_EQ_HD_MASK, align 8
  %133 = and i64 %131, %132
  %134 = load i64, i64* @FO_PCI_EQ_HD_SHFT, align 8
  %135 = shl i64 %133, %134
  %136 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %127, i64 %130, i64 %135)
  %137 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %138 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %4, align 8
  %139 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @FIRE_PCI_READ_8(%struct.fire_softc* %137, i64 %140)
  %142 = load i64, i64* @FO_PCI_EQ_TL_OVERR, align 8
  %143 = and i64 %141, %142
  %144 = icmp ne i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i64 @__predict_false(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %126
  %149 = load i32, i32* %7, align 4
  %150 = load i64, i64* %11, align 8
  %151 = call i32 @device_printf(i32 %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %150)
  %152 = load i64, i64* %11, align 8
  %153 = shl i64 %152, 3
  store i64 %153, i64* %11, align 8
  %154 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %155 = load i64, i64* @FO_PCI_EQ_CTRL_CLR_BASE, align 8
  %156 = load i64, i64* %11, align 8
  %157 = add i64 %155, %156
  %158 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %159 = load i64, i64* @FO_PCI_EQ_CTRL_CLR_BASE, align 8
  %160 = load i64, i64* %11, align 8
  %161 = add i64 %159, %160
  %162 = call i64 @FIRE_PCI_READ_8(%struct.fire_softc* %158, i64 %161)
  %163 = load i64, i64* @FO_PCI_EQ_CTRL_CLR_COVERR, align 8
  %164 = or i64 %162, %163
  %165 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %154, i64 %157, i64 %164)
  br label %166

166:                                              ; preds = %148, %126
  ret void
}

declare dso_local i64 @FIRE_PCI_READ_8(%struct.fire_softc*, i64) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @FIRE_PCI_WRITE_8(%struct.fire_softc*, i64, i64) #1

declare dso_local i64 @intr_event_handle(i32, i32*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
