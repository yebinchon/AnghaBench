; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ix_txrx.c_ixgbe_isc_txd_credits_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ix_txrx.c_ixgbe_isc_txd_credits_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.ix_tx_queue*, %struct.TYPE_6__* }
%struct.ix_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i64, i64, i64*, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64* }

@IXGBE_TXD_STAT_DD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @ixgbe_isc_txd_credits_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_isc_txd_credits_update(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.ix_tx_queue*, align 8
  %11 = alloca %struct.tx_ring*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.adapter*
  store %struct.adapter* %21, %struct.adapter** %8, align 8
  %22 = load %struct.adapter*, %struct.adapter** %8, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %9, align 8
  %25 = load %struct.adapter*, %struct.adapter** %8, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %27, i64 %28
  store %struct.ix_tx_queue* %29, %struct.ix_tx_queue** %10, align 8
  %30 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %10, align 8
  %31 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %30, i32 0, i32 0
  store %struct.tx_ring* %31, %struct.tx_ring** %11, align 8
  store i64 0, i64* %12, align 8
  %32 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %33 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %17, align 8
  %35 = load i64, i64* %17, align 8
  %36 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %37 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %143

41:                                               ; preds = %3
  %42 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %43 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %17, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %14, align 8
  %48 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %49 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %48, i32 0, i32 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* @IXGBE_TXD_STAT_DD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %143

66:                                               ; preds = %41
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %143

70:                                               ; preds = %66
  %71 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %72 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %15, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %16, align 8
  br label %79

79:                                               ; preds = %129, %70
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* %14, align 8
  %82 = icmp ne i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @MPASS(i32 %83)
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %15, align 8
  %87 = sub nsw i64 %85, %86
  store i64 %87, i64* %18, align 8
  %88 = load i64, i64* %18, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %79
  %91 = load i64, i64* %16, align 8
  %92 = load i64, i64* %18, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %18, align 8
  br label %94

94:                                               ; preds = %90, %79
  %95 = load i64, i64* %18, align 8
  %96 = icmp sgt i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @MPASS(i32 %97)
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* %12, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %14, align 8
  store i64 %102, i64* %15, align 8
  %103 = load i64, i64* %17, align 8
  %104 = add i64 %103, 1
  %105 = load i64, i64* %16, align 8
  %106 = sub i64 %105, 1
  %107 = and i64 %104, %106
  store i64 %107, i64* %17, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %110 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %94
  br label %134

114:                                              ; preds = %94
  %115 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %116 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %115, i32 0, i32 2
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* %17, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %14, align 8
  %121 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %122 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %121, i32 0, i32 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i64, i64* %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %19, align 4
  br label %129

129:                                              ; preds = %114
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* @IXGBE_TXD_STAT_DD, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %79, label %134

134:                                              ; preds = %129, %113
  %135 = load i64, i64* %17, align 8
  %136 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %137 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load i64, i64* %15, align 8
  %139 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %140 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %139, i32 0, i32 3
  store i64 %138, i64* %140, align 8
  %141 = load i64, i64* %12, align 8
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %134, %69, %65, %40
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
