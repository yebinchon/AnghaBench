; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_msix_intr_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_msix_intr_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i32, i32, %struct.adapter*, i32, %struct.TYPE_8__, %struct.ix_tx_queue*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.ix_tx_queue = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ix_rx_queue = type { i32, i32, i32, i32, i32, %struct.ix_rx_queue*, i32, %struct.TYPE_8__, %struct.ix_tx_queue*, %struct.TYPE_5__ }

@.str = private unnamed_addr constant [6 x i8] c"rxq%d\00", align 1
@IFLIB_INTR_RX = common dso_local global i32 0, align 4
@ixv_msix_que = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to allocate que int %d err: %d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"txq%d\00", align 1
@IFLIB_INTR_TX = common dso_local global i32 0, align 4
@IFLIB_INTR_ADMIN = common dso_local global i32 0, align 4
@ixv_msix_mbx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"aq\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to register admin handler\00", align 1
@ixgbe_mac_82599_vf = common dso_local global i64 0, align 8
@PCIY_MSIX = common dso_local global i32 0, align 4
@PCIR_MSIX_CTRL = common dso_local global i64 0, align 8
@PCIM_MSIXCTRL_MSIX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ixv_if_msix_intr_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixv_if_msix_intr_assign(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ix_rx_queue*, align 8
  %9 = alloca %struct.ix_tx_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.ix_rx_queue* @iflib_get_softc(i32 %18)
  %20 = bitcast %struct.ix_rx_queue* %19 to %struct.adapter*
  store %struct.adapter* %20, %struct.adapter** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @iflib_get_dev(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.adapter*, %struct.adapter** %6, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 5
  %25 = load %struct.adapter*, %struct.adapter** %24, align 8
  %26 = bitcast %struct.adapter* %25 to %struct.ix_rx_queue*
  store %struct.ix_rx_queue* %26, %struct.ix_rx_queue** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %68, %2
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.adapter*, %struct.adapter** %6, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %75

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @snprintf(i8* %36, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %8, align 8
  %41 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %40, i32 0, i32 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @IFLIB_INTR_RX, align 4
  %44 = load i32, i32* @ixv_msix_que, align 4
  %45 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %8, align 8
  %46 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %8, align 8
  %47 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %46, i32 0, i32 9
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %51 = call i32 @iflib_irq_alloc_generic(i32 %39, i32* %41, i32 %42, i32 %43, i32 %44, %struct.ix_rx_queue* %45, i32 %49, i8* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %33
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @iflib_get_dev(i32 %55)
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (i32, i8*, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  %62 = load %struct.adapter*, %struct.adapter** %6, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %170

64:                                               ; preds = %33
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %8, align 8
  %67 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  %73 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %8, align 8
  %74 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %73, i32 1
  store %struct.ix_rx_queue* %74, %struct.ix_rx_queue** %8, align 8
  br label %27

75:                                               ; preds = %27
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %117, %75
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.adapter*, %struct.adapter** %6, align 8
  %79 = getelementptr inbounds %struct.adapter, %struct.adapter* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %76
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @snprintf(i8* %83, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.adapter*, %struct.adapter** %6, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 8
  %88 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %88, i64 %90
  store %struct.ix_tx_queue* %91, %struct.ix_tx_queue** %9, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.adapter*, %struct.adapter** %6, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = srem i32 %92, %95
  %97 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %9, align 8
  %98 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.adapter*, %struct.adapter** %6, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 5
  %102 = load %struct.adapter*, %struct.adapter** %101, align 8
  %103 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %9, align 8
  %104 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.adapter, %struct.adapter* %102, i64 %106
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 4
  %109 = load i32, i32* @IFLIB_INTR_TX, align 4
  %110 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %9, align 8
  %111 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %9, align 8
  %112 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %116 = call i32 @iflib_softirq_alloc_generic(i32 %99, i32* %108, i32 %109, %struct.ix_tx_queue* %110, i32 %114, i8* %115)
  br label %117

117:                                              ; preds = %82
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %76

120:                                              ; preds = %76
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.adapter*, %struct.adapter** %6, align 8
  %125 = getelementptr inbounds %struct.adapter, %struct.adapter* %124, i32 0, i32 6
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @IFLIB_INTR_ADMIN, align 4
  %128 = load i32, i32* @ixv_msix_mbx, align 4
  %129 = load %struct.adapter*, %struct.adapter** %6, align 8
  %130 = bitcast %struct.adapter* %129 to %struct.ix_rx_queue*
  %131 = call i32 @iflib_irq_alloc_generic(i32 %123, i32* %125, i32 %126, i32 %127, i32 %128, %struct.ix_rx_queue* %130, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %120
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @iflib_get_dev(i32 %135)
  %137 = call i32 (i32, i8*, ...) @device_printf(i32 %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %3, align 4
  br label %197

139:                                              ; preds = %120
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.adapter*, %struct.adapter** %6, align 8
  %142 = getelementptr inbounds %struct.adapter, %struct.adapter* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load %struct.adapter*, %struct.adapter** %6, align 8
  %144 = getelementptr inbounds %struct.adapter, %struct.adapter* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ixgbe_mac_82599_vf, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %169

150:                                              ; preds = %139
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @PCIY_MSIX, align 4
  %153 = call i32 @pci_find_cap(i32 %151, i32 %152, i32* %11)
  %154 = load i64, i64* @PCIR_MSIX_CTRL, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @pci_read_config(i32 %159, i32 %160, i32 2)
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* @PCIM_MSIXCTRL_MSIX_ENABLE, align 4
  %163 = load i32, i32* %16, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %16, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @pci_write_config(i32 %165, i32 %166, i32 %167, i32 2)
  br label %169

169:                                              ; preds = %150, %139
  store i32 0, i32* %3, align 4
  br label %197

170:                                              ; preds = %54
  %171 = load i32, i32* %4, align 4
  %172 = load %struct.adapter*, %struct.adapter** %6, align 8
  %173 = getelementptr inbounds %struct.adapter, %struct.adapter* %172, i32 0, i32 6
  %174 = call i32 @iflib_irq_free(i32 %171, i32* %173)
  %175 = load %struct.adapter*, %struct.adapter** %6, align 8
  %176 = getelementptr inbounds %struct.adapter, %struct.adapter* %175, i32 0, i32 5
  %177 = load %struct.adapter*, %struct.adapter** %176, align 8
  %178 = bitcast %struct.adapter* %177 to %struct.ix_rx_queue*
  store %struct.ix_rx_queue* %178, %struct.ix_rx_queue** %8, align 8
  store i32 0, i32* %17, align 4
  br label %179

179:                                              ; preds = %190, %170
  %180 = load i32, i32* %17, align 4
  %181 = load %struct.adapter*, %struct.adapter** %6, align 8
  %182 = getelementptr inbounds %struct.adapter, %struct.adapter* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %179
  %186 = load i32, i32* %4, align 4
  %187 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %8, align 8
  %188 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %187, i32 0, i32 4
  %189 = call i32 @iflib_irq_free(i32 %186, i32* %188)
  br label %190

190:                                              ; preds = %185
  %191 = load i32, i32* %17, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %17, align 4
  %193 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %8, align 8
  %194 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %193, i32 1
  store %struct.ix_rx_queue* %194, %struct.ix_rx_queue** %8, align 8
  br label %179

195:                                              ; preds = %179
  %196 = load i32, i32* %10, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %195, %169, %134
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local %struct.ix_rx_queue* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @iflib_irq_alloc_generic(i32, i32*, i32, i32, i32, %struct.ix_rx_queue*, i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @iflib_softirq_alloc_generic(i32, i32*, i32, %struct.ix_tx_queue*, i32, i8*) #1

declare dso_local i32 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @iflib_irq_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
