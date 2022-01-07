; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_msix_intr_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_msix_intr_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i32, i32, i32, %struct.adapter*, i32, %struct.ix_tx_queue*, %struct.TYPE_3__ }
%struct.ix_tx_queue = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ix_rx_queue = type { i32, i32, i32, i32, i32, i32, %struct.ix_rx_queue*, i32, %struct.ix_tx_queue*, %struct.TYPE_3__ }

@.str = private unnamed_addr constant [6 x i8] c"rxq%d\00", align 1
@IFLIB_INTR_RX = common dso_local global i32 0, align 4
@ixgbe_msix_que = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to allocate que int %d err: %d\00", align 1
@IXGBE_FEATURE_RSS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"txq%d\00", align 1
@IFLIB_INTR_TX = common dso_local global i32 0, align 4
@IFLIB_INTR_ADMIN = common dso_local global i32 0, align 4
@ixgbe_msix_link = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"aq\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to register admin handler\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ixgbe_if_msix_intr_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_if_msix_intr_assign(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.ix_rx_queue*, align 8
  %8 = alloca %struct.ix_tx_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.ix_rx_queue* @iflib_get_softc(i32 %17)
  %19 = bitcast %struct.ix_rx_queue* %18 to %struct.adapter*
  store %struct.adapter* %19, %struct.adapter** %6, align 8
  %20 = load %struct.adapter*, %struct.adapter** %6, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 6
  %22 = load %struct.adapter*, %struct.adapter** %21, align 8
  %23 = bitcast %struct.adapter* %22 to %struct.ix_rx_queue*
  store %struct.ix_rx_queue* %23, %struct.ix_rx_queue** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %87, %2
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.adapter*, %struct.adapter** %6, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %94

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @snprintf(i8* %35, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %7, align 8
  %40 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %39, i32 0, i32 5
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @IFLIB_INTR_RX, align 4
  %43 = load i32, i32* @ixgbe_msix_que, align 4
  %44 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %7, align 8
  %45 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %7, align 8
  %46 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %45, i32 0, i32 9
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %50 = call i32 @iflib_irq_alloc_generic(i32 %38, i32* %40, i32 %41, i32 %42, i32 %43, %struct.ix_rx_queue* %44, i32 %48, i8* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %32
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @iflib_get_dev(i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  %61 = load %struct.adapter*, %struct.adapter** %6, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %162

63:                                               ; preds = %32
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %7, align 8
  %66 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.adapter*, %struct.adapter** %6, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IXGBE_FEATURE_RSS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load i32, i32* %14, align 4
  %75 = call i32 (...) @rss_getnumbuckets()
  %76 = srem i32 %74, %75
  %77 = call i32 @rss_getcpu(i32 %76)
  store i32 %77, i32* %12, align 4
  br label %86

78:                                               ; preds = %63
  %79 = load %struct.adapter*, %struct.adapter** %6, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %83, %78
  br label %86

86:                                               ; preds = %85, %73
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  %92 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %7, align 8
  %93 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %92, i32 1
  store %struct.ix_rx_queue* %93, %struct.ix_rx_queue** %7, align 8
  br label %26

94:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %95

95:                                               ; preds = %136, %94
  %96 = load i32, i32* %15, align 4
  %97 = load %struct.adapter*, %struct.adapter** %6, align 8
  %98 = getelementptr inbounds %struct.adapter, %struct.adapter* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %139

101:                                              ; preds = %95
  %102 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @snprintf(i8* %102, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load %struct.adapter*, %struct.adapter** %6, align 8
  %106 = getelementptr inbounds %struct.adapter, %struct.adapter* %105, i32 0, i32 8
  %107 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %107, i64 %109
  store %struct.ix_tx_queue* %110, %struct.ix_tx_queue** %8, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load %struct.adapter*, %struct.adapter** %6, align 8
  %113 = getelementptr inbounds %struct.adapter, %struct.adapter* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = srem i32 %111, %114
  %116 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %8, align 8
  %117 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.adapter*, %struct.adapter** %6, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 6
  %121 = load %struct.adapter*, %struct.adapter** %120, align 8
  %122 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %8, align 8
  %123 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.adapter, %struct.adapter* %121, i64 %125
  %127 = getelementptr inbounds %struct.adapter, %struct.adapter* %126, i32 0, i32 5
  %128 = load i32, i32* @IFLIB_INTR_TX, align 4
  %129 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %8, align 8
  %130 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %8, align 8
  %131 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %135 = call i32 @iflib_softirq_alloc_generic(i32 %118, i32* %127, i32 %128, %struct.ix_tx_queue* %129, i32 %133, i8* %134)
  br label %136

136:                                              ; preds = %101
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %95

139:                                              ; preds = %95
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load %struct.adapter*, %struct.adapter** %6, align 8
  %144 = getelementptr inbounds %struct.adapter, %struct.adapter* %143, i32 0, i32 7
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @IFLIB_INTR_ADMIN, align 4
  %147 = load i32, i32* @ixgbe_msix_link, align 4
  %148 = load %struct.adapter*, %struct.adapter** %6, align 8
  %149 = bitcast %struct.adapter* %148 to %struct.ix_rx_queue*
  %150 = call i32 @iflib_irq_alloc_generic(i32 %142, i32* %144, i32 %145, i32 %146, i32 %147, %struct.ix_rx_queue* %149, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %139
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @iflib_get_dev(i32 %154)
  %156 = call i32 (i32, i8*, ...) @device_printf(i32 %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %3, align 4
  br label %189

158:                                              ; preds = %139
  %159 = load i32, i32* %11, align 4
  %160 = load %struct.adapter*, %struct.adapter** %6, align 8
  %161 = getelementptr inbounds %struct.adapter, %struct.adapter* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  store i32 0, i32* %3, align 4
  br label %189

162:                                              ; preds = %53
  %163 = load i32, i32* %4, align 4
  %164 = load %struct.adapter*, %struct.adapter** %6, align 8
  %165 = getelementptr inbounds %struct.adapter, %struct.adapter* %164, i32 0, i32 7
  %166 = call i32 @iflib_irq_free(i32 %163, i32* %165)
  %167 = load %struct.adapter*, %struct.adapter** %6, align 8
  %168 = getelementptr inbounds %struct.adapter, %struct.adapter* %167, i32 0, i32 6
  %169 = load %struct.adapter*, %struct.adapter** %168, align 8
  %170 = bitcast %struct.adapter* %169 to %struct.ix_rx_queue*
  store %struct.ix_rx_queue* %170, %struct.ix_rx_queue** %7, align 8
  store i32 0, i32* %16, align 4
  br label %171

171:                                              ; preds = %182, %162
  %172 = load i32, i32* %16, align 4
  %173 = load %struct.adapter*, %struct.adapter** %6, align 8
  %174 = getelementptr inbounds %struct.adapter, %struct.adapter* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %171
  %178 = load i32, i32* %4, align 4
  %179 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %7, align 8
  %180 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %179, i32 0, i32 5
  %181 = call i32 @iflib_irq_free(i32 %178, i32* %180)
  br label %182

182:                                              ; preds = %177
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %16, align 4
  %185 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %7, align 8
  %186 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %185, i32 1
  store %struct.ix_rx_queue* %186, %struct.ix_rx_queue** %7, align 8
  br label %171

187:                                              ; preds = %171
  %188 = load i32, i32* %9, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %187, %158, %153
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.ix_rx_queue* @iflib_get_softc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @iflib_irq_alloc_generic(i32, i32*, i32, i32, i32, %struct.ix_rx_queue*, i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @rss_getcpu(i32) #1

declare dso_local i32 @rss_getnumbuckets(...) #1

declare dso_local i32 @iflib_softirq_alloc_generic(i32, i32*, i32, %struct.ix_tx_queue*, i32, i8*) #1

declare dso_local i32 @iflib_irq_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
