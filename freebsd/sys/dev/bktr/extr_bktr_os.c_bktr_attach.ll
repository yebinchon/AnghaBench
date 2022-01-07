; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bktr_softc = type { i32*, i64, i32*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"bktr%d\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"could not map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BKTR_INT_MASK = common dso_local global i32 0, align 4
@ALL_INTS_DISABLED = common dso_local global i32 0, align 4
@BKTR_GPIO_DMA_CTL = common dso_local global i32 0, align 4
@FIFO_RISC_DISABLED = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"could not map interrupt\0A\00", align 1
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@bktr_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"could not setup irq\0A\00", align 1
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"brooktree%d: PCI bus latency is\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"brooktree%d: PCI bus latency was 0 changing to\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" %d.\0A\00", align 1
@bktr_cdevsw = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"tuner%d\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"vbi%d\00", align 1
@BROOKTREE_DEF_LATENCY_VALUE = common dso_local global i32 0, align 4
@BROOKTREE_IRQ = common dso_local global i32 0, align 4
@PCI_INTERRUPT_REG = common dso_local global i32 0, align 4
@tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bktr_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bktr_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bktr_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.bktr_softc* @device_get_softc(i32 %10)
  store %struct.bktr_softc* %11, %struct.bktr_softc** %9, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_get_unit(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %15 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %14, i32 0, i32 13
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @snprintf(i32 %16, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @pci_enable_busmaster(i32 %19)
  %21 = call i64 @PCIR_BAR(i32 0)
  %22 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %23 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SYS_RES_MEMORY, align 4
  %26 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %27 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %26, i32 0, i32 1
  %28 = load i32, i32* @RF_ACTIVE, align 4
  %29 = call i8* @bus_alloc_resource_any(i32 %24, i32 %25, i64* %27, i32 %28)
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %32 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %34 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %8, align 4
  br label %167

41:                                               ; preds = %1
  %42 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %43 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @rman_get_bustag(i32* %44)
  %46 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %47 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %46, i32 0, i32 12
  store i32 %45, i32* %47, align 8
  %48 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %49 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @rman_get_bushandle(i32* %50)
  %52 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %53 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %52, i32 0, i32 11
  store i32 %51, i32* %53, align 4
  %54 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %55 = load i32, i32* @BKTR_INT_MASK, align 4
  %56 = load i32, i32* @ALL_INTS_DISABLED, align 4
  %57 = call i32 @OUTL(%struct.bktr_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %59 = load i32, i32* @BKTR_GPIO_DMA_CTL, align 4
  %60 = load i32, i32* @FIFO_RISC_DISABLED, align 4
  %61 = call i32 @OUTW(%struct.bktr_softc* %58, i32 %59, i32 %60)
  %62 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %63 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @SYS_RES_IRQ, align 4
  %66 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %67 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %66, i32 0, i32 3
  %68 = load i32, i32* @RF_SHAREABLE, align 4
  %69 = load i32, i32* @RF_ACTIVE, align 4
  %70 = or i32 %68, %69
  %71 = call i8* @bus_alloc_resource_any(i32 %64, i32 %65, i64* %67, i32 %70)
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %74 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %73, i32 0, i32 2
  store i32* %72, i32** %74, align 8
  %75 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %76 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %41
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @ENXIO, align 4
  store i32 %82, i32* %8, align 4
  br label %167

83:                                               ; preds = %41
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %86 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @INTR_TYPE_TTY, align 4
  %89 = load i32, i32* @bktr_intr, align 4
  %90 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %91 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %92 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %91, i32 0, i32 10
  %93 = call i32 @bus_setup_intr(i32 %84, i32* %87, i32 %88, i32* null, i32 %89, %struct.bktr_softc* %90, i32* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %83
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @device_printf(i32 %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %167

99:                                               ; preds = %83
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @pci_read_config(i32 %100, i32 64, i32 2)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, 1
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @pci_write_config(i32 %104, i32 64, i32 %105, i32 2)
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %109 = call i32 @pci_read_config(i32 %107, i32 %108, i32 4)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = ashr i32 %110, 8
  %112 = and i32 %111, 255
  store i32 %112, i32* %4, align 4
  %113 = load i64, i64* @bootverbose, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %99
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  br label %124

121:                                              ; preds = %115
  %122 = load i32, i32* %7, align 4
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124, %99
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  store i32 10, i32* %4, align 4
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %131 = load i32, i32* %4, align 4
  %132 = shl i32 %131, 8
  %133 = call i32 @pci_write_config(i32 %129, i32 %130, i32 %132, i32 4)
  br label %134

134:                                              ; preds = %128, %125
  %135 = load i64, i64* @bootverbose, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %4, align 4
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @pci_get_devid(i32 %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @pci_get_revid(i32 %143)
  store i32 %144, i32* %6, align 4
  %145 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @common_bktr_attach(%struct.bktr_softc* %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i8* @make_dev(i32* @bktr_cdevsw, i32 %150, i32 0, i32 0, i32 292, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %151)
  %153 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %154 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %153, i32 0, i32 8
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* %7, align 4
  %156 = add i32 %155, 16
  %157 = load i32, i32* %7, align 4
  %158 = call i8* @make_dev(i32* @bktr_cdevsw, i32 %156, i32 0, i32 0, i32 292, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %157)
  %159 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %160 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %159, i32 0, i32 6
  store i8* %158, i8** %160, align 8
  %161 = load i32, i32* %7, align 4
  %162 = add i32 %161, 32
  %163 = load i32, i32* %7, align 4
  %164 = call i8* @make_dev(i32* @bktr_cdevsw, i32 %162, i32 0, i32 0, i32 292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %163)
  %165 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %166 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %165, i32 0, i32 4
  store i8* %164, i8** %166, align 8
  store i32 0, i32* %2, align 4
  br label %199

167:                                              ; preds = %96, %79, %37
  %168 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %169 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %182

172:                                              ; preds = %167
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @SYS_RES_IRQ, align 4
  %175 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %176 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %179 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @bus_release_resource(i32 %173, i32 %174, i64 %177, i32* %180)
  br label %182

182:                                              ; preds = %172, %167
  %183 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %184 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %197

187:                                              ; preds = %182
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* @SYS_RES_MEMORY, align 4
  %190 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %191 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %194 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @bus_release_resource(i32 %188, i32 %189, i64 %192, i32* %195)
  br label %197

197:                                              ; preds = %187, %182
  %198 = load i32, i32* %8, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %197, %140
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.bktr_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i64 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @OUTL(%struct.bktr_softc*, i32, i32) #1

declare dso_local i32 @OUTW(%struct.bktr_softc*, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.bktr_softc*, i32*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @common_bktr_attach(%struct.bktr_softc*, i32, i32, i32) #1

declare dso_local i8* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
