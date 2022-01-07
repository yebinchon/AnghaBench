; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_tx_queues_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_tx_queues_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.ix_tx_queue*, %struct.TYPE_2__* }
%struct.ix_tx_queue = type { %struct.adapter*, %struct.tx_ring }
%struct.tx_ring = type { i32, i64, i64, i32, %union.ixgbe_adv_tx_desc*, i32, i32*, %struct.adapter* }
%union.ixgbe_adv_tx_desc = type { i32 }
%struct.TYPE_2__ = type { i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to allocate TX ring memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QIDX_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"allocated for %d queues\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32*, i32, i32)* @ixv_if_tx_queues_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixv_if_tx_queues_alloc(i32 %0, i64* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.adapter*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca %struct.ix_tx_queue*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tx_ring*, align 8
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.adapter* @iflib_get_softc(i32 %19)
  store %struct.adapter* %20, %struct.adapter** %12, align 8
  %21 = load %struct.adapter*, %struct.adapter** %12, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %13, align 8
  %24 = load %struct.adapter*, %struct.adapter** %12, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @MPASS(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i32 @MPASS(i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 72, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @M_DEVBUF, align 4
  %40 = load i32, i32* @M_NOWAIT, align 4
  %41 = load i32, i32* @M_ZERO, align 4
  %42 = or i32 %40, %41
  %43 = call i64 @malloc(i32 %38, i32 %39, i32 %42)
  %44 = inttoptr i64 %43 to %struct.ix_tx_queue*
  %45 = load %struct.adapter*, %struct.adapter** %12, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 1
  store %struct.ix_tx_queue* %44, %struct.ix_tx_queue** %46, align 8
  %47 = load %struct.adapter*, %struct.adapter** %12, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 1
  %49 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %48, align 8
  %50 = icmp ne %struct.ix_tx_queue* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %5
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @iflib_get_dev(i32 %52)
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %6, align 4
  br label %160

56:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  %57 = load %struct.adapter*, %struct.adapter** %12, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 1
  %59 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %58, align 8
  store %struct.ix_tx_queue* %59, %struct.ix_tx_queue** %14, align 8
  br label %60

60:                                               ; preds = %144, %56
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %149

64:                                               ; preds = %60
  %65 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %14, align 8
  %66 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %65, i32 0, i32 1
  store %struct.tx_ring* %66, %struct.tx_ring** %18, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %69 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.adapter*, %struct.adapter** %12, align 8
  %71 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %14, align 8
  %72 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %71, i32 0, i32 0
  store %struct.adapter* %70, %struct.adapter** %72, align 8
  %73 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %74 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %73, i32 0, i32 7
  store %struct.adapter* %70, %struct.adapter** %74, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @M_DEVBUF, align 4
  %84 = load i32, i32* @M_NOWAIT, align 4
  %85 = load i32, i32* @M_ZERO, align 4
  %86 = or i32 %84, %85
  %87 = call i64 @malloc(i32 %82, i32 %83, i32 %86)
  %88 = inttoptr i64 %87 to i32*
  %89 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %90 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %89, i32 0, i32 6
  store i32* %88, i32** %90, align 8
  %91 = icmp ne i32* %88, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %64
  %93 = load i32, i32* @ENOMEM, align 4
  store i32 %93, i32* %17, align 4
  br label %156

94:                                               ; preds = %64
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %111, %94
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %96, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %95
  %104 = load i32, i32* @QIDX_INVALID, align 4
  %105 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %106 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %105, i32 0, i32 6
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %104, i32* %110, align 4
  br label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %16, align 4
  br label %95

114:                                              ; preds = %95
  %115 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %116 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @IXGBE_VFTDT(i32 %117)
  %119 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %120 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 8
  %121 = load i64*, i64** %8, align 8
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %10, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %121, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to %union.ixgbe_adv_tx_desc*
  %129 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %130 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %129, i32 0, i32 4
  store %union.ixgbe_adv_tx_desc* %128, %union.ixgbe_adv_tx_desc** %130, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %10, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %139 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %141 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %140, i32 0, i32 2
  store i64 0, i64* %141, align 8
  %142 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %143 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  br label %144

144:                                              ; preds = %114
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  %147 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %14, align 8
  %148 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %147, i32 1
  store %struct.ix_tx_queue* %148, %struct.ix_tx_queue** %14, align 8
  br label %60

149:                                              ; preds = %60
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @iflib_get_dev(i32 %150)
  %152 = load %struct.adapter*, %struct.adapter** %12, align 8
  %153 = getelementptr inbounds %struct.adapter, %struct.adapter* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i32, i8*, ...) @device_printf(i32 %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %154)
  store i32 0, i32* %6, align 4
  br label %160

156:                                              ; preds = %92
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @ixv_if_queues_free(i32 %157)
  %159 = load i32, i32* %17, align 4
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %156, %149, %51
  %161 = load i32, i32* %6, align 4
  ret i32 %161
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @IXGBE_VFTDT(i32) #1

declare dso_local i32 @ixv_if_queues_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
