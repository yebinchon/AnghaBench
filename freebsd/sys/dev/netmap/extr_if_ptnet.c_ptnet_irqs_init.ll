; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_irqs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_irqs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptnet_softc = type { i32, i32, i32, %struct.ptnet_queue*, i32* }
%struct.ptnet_queue = type { i32, i32, i32*, i32 }

@PTNETMAP_MSIX_PCI_BAR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@PCIY_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not find MSI-X capability\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to allocate MSIX PCI BAR\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Not enough MSI-X vectors\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to allocate MSI-X vectors\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed to allocate interrupt for queue #%d\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Failed to register intr handler for queue #%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"q%d\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Allocated %d MSI-X vectors\0A\00", align 1
@ptnet_irqs_init.handler = internal global void (i8*, i32)* null, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"ptnet_queue\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"%s-pq-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptnet_softc*)* @ptnet_irqs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptnet_irqs_init(%struct.ptnet_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ptnet_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ptnet_queue*, align 8
  %11 = alloca %struct.ptnet_queue*, align 8
  %12 = alloca void (i8*)*, align 8
  %13 = alloca %struct.ptnet_queue*, align 8
  store %struct.ptnet_softc* %0, %struct.ptnet_softc** %3, align 8
  %14 = load i32, i32* @PTNETMAP_MSIX_PCI_BAR, align 4
  %15 = call i32 @PCIR_BAR(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ptnet_softc*, %struct.ptnet_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ptnet_softc*, %struct.ptnet_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @ENOSPC, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PCIY_MSIX, align 4
  %25 = call i64 @pci_find_cap(i32 %23, i32 %24, i32* null)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %204

31:                                               ; preds = %1
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SYS_RES_MEMORY, align 4
  %34 = load i32, i32* @RF_ACTIVE, align 4
  %35 = call i8* @bus_alloc_resource_any(i32 %32, i32 %33, i32* %4, i32 %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.ptnet_softc*, %struct.ptnet_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %37, i32 0, i32 4
  store i32* %36, i32** %38, align 8
  %39 = load %struct.ptnet_softc*, %struct.ptnet_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32, i8*, ...) @device_printf(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %204

47:                                               ; preds = %31
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @pci_msix_count(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %200

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @pci_alloc_msix(i32 %56, i32* %5)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i32, i8*, ...) @device_printf(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %200

63:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %94, %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %97

68:                                               ; preds = %64
  %69 = load %struct.ptnet_softc*, %struct.ptnet_softc** %3, align 8
  %70 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %69, i32 0, i32 3
  %71 = load %struct.ptnet_queue*, %struct.ptnet_queue** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %71, i64 %73
  store %struct.ptnet_queue* %74, %struct.ptnet_queue** %10, align 8
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @SYS_RES_IRQ, align 4
  %79 = load i32, i32* @RF_ACTIVE, align 4
  %80 = call i8* @bus_alloc_resource_any(i32 %77, i32 %78, i32* %4, i32 %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.ptnet_queue*, %struct.ptnet_queue** %10, align 8
  %83 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %82, i32 0, i32 2
  store i32* %81, i32** %83, align 8
  %84 = load %struct.ptnet_queue*, %struct.ptnet_queue** %10, align 8
  %85 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %68
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @ENOSPC, align 4
  store i32 %92, i32* %7, align 4
  br label %200

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %64

97:                                               ; preds = %64
  %98 = call i32 (...) @CPU_FIRST()
  store i32 %98, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %147, %97
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %150

103:                                              ; preds = %99
  %104 = load %struct.ptnet_softc*, %struct.ptnet_softc** %3, align 8
  %105 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %104, i32 0, i32 3
  %106 = load %struct.ptnet_queue*, %struct.ptnet_queue** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %106, i64 %108
  store %struct.ptnet_queue* %109, %struct.ptnet_queue** %11, align 8
  store void (i8*)* @ptnet_tx_intr, void (i8*)** %12, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.ptnet_softc*, %struct.ptnet_softc** %3, align 8
  %112 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp sge i32 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  store void (i8*)* @ptnet_rx_intr, void (i8*)** %12, align 8
  br label %116

116:                                              ; preds = %115, %103
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.ptnet_queue*, %struct.ptnet_queue** %11, align 8
  %119 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @INTR_TYPE_NET, align 4
  %122 = load i32, i32* @INTR_MPSAFE, align 4
  %123 = or i32 %121, %122
  %124 = load void (i8*)*, void (i8*)** %12, align 8
  %125 = load %struct.ptnet_queue*, %struct.ptnet_queue** %11, align 8
  %126 = load %struct.ptnet_queue*, %struct.ptnet_queue** %11, align 8
  %127 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %126, i32 0, i32 3
  %128 = call i32 @bus_setup_intr(i32 %117, i32* %120, i32 %123, i32* null, void (i8*)* %124, %struct.ptnet_queue* %125, i32* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %116
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 (i32, i8*, ...) @device_printf(i32 %132, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  br label %200

135:                                              ; preds = %116
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.ptnet_queue*, %struct.ptnet_queue** %11, align 8
  %138 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.ptnet_queue*, %struct.ptnet_queue** %11, align 8
  %141 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @bus_describe_intr(i32 %136, i32* %139, i32 %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @CPU_NEXT(i32 %145)
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %135
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %99

150:                                              ; preds = %99
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i32 (i32, i8*, ...) @device_printf(i32 %151, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  %154 = call i32 (...) @CPU_FIRST()
  store i32 %154, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %155

155:                                              ; preds = %196, %150
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %199

159:                                              ; preds = %155
  %160 = load %struct.ptnet_softc*, %struct.ptnet_softc** %3, align 8
  %161 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %160, i32 0, i32 3
  %162 = load %struct.ptnet_queue*, %struct.ptnet_queue** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %162, i64 %164
  store %struct.ptnet_queue* %165, %struct.ptnet_queue** %13, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.ptnet_softc*, %struct.ptnet_softc** %3, align 8
  %168 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %166, %169
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, void (i8*, i32)* @ptnet_tx_task, void (i8*, i32)* @ptnet_rx_task
  store void (i8*, i32)* %172, void (i8*, i32)** @ptnet_irqs_init.handler, align 8
  %173 = load %struct.ptnet_queue*, %struct.ptnet_queue** %13, align 8
  %174 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %173, i32 0, i32 1
  %175 = load void (i8*, i32)*, void (i8*, i32)** @ptnet_irqs_init.handler, align 8
  %176 = load %struct.ptnet_queue*, %struct.ptnet_queue** %13, align 8
  %177 = call i32 @TASK_INIT(i32* %174, i32 0, void (i8*, i32)* %175, %struct.ptnet_queue* %176)
  %178 = load i32, i32* @M_NOWAIT, align 4
  %179 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %180 = load %struct.ptnet_queue*, %struct.ptnet_queue** %13, align 8
  %181 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %180, i32 0, i32 0
  %182 = call i32 @taskqueue_create_fast(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %178, i32 %179, i32* %181)
  %183 = load %struct.ptnet_queue*, %struct.ptnet_queue** %13, align 8
  %184 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = load %struct.ptnet_queue*, %struct.ptnet_queue** %13, align 8
  %186 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %185, i32 0, i32 0
  %187 = load i32, i32* @PI_NET, align 4
  %188 = load %struct.ptnet_softc*, %struct.ptnet_softc** %3, align 8
  %189 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @device_get_nameunit(i32 %190)
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @taskqueue_start_threads(i32* %186, i32 1, i32 %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %191, i32 %192)
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @CPU_NEXT(i32 %194)
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %159
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  br label %155

199:                                              ; preds = %155
  store i32 0, i32* %2, align 4
  br label %204

200:                                              ; preds = %131, %88, %60, %52
  %201 = load %struct.ptnet_softc*, %struct.ptnet_softc** %3, align 8
  %202 = call i32 @ptnet_irqs_fini(%struct.ptnet_softc* %201)
  %203 = load i32, i32* %7, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %200, %199, %43, %27
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @CPU_FIRST(...) #1

declare dso_local void @ptnet_tx_intr(i8*) #1

declare dso_local void @ptnet_rx_intr(i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, void (i8*)*, %struct.ptnet_queue*, i32*) #1

declare dso_local i32 @bus_describe_intr(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @CPU_NEXT(i32) #1

declare dso_local void @ptnet_tx_task(i8*, i32) #1

declare dso_local void @ptnet_rx_task(i8*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, void (i8*, i32)*, %struct.ptnet_queue*) #1

declare dso_local i32 @taskqueue_create_fast(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @ptnet_irqs_fini(%struct.ptnet_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
