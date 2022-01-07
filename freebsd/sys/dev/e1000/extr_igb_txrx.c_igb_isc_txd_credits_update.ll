; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_igb_txrx.c_igb_isc_txd_credits_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_igb_txrx.c_igb_isc_txd_credits_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.em_tx_queue*, %struct.TYPE_4__* }
%struct.em_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i64, i64, i64*, i64, i32* }
%struct.TYPE_4__ = type { i64* }
%union.e1000_adv_tx_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@E1000_TXD_STAT_DD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @igb_isc_txd_credits_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_isc_txd_credits_update(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.em_tx_queue*, align 8
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
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %9, align 8
  %25 = load %struct.adapter*, %struct.adapter** %8, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = load %struct.em_tx_queue*, %struct.em_tx_queue** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %27, i64 %28
  store %struct.em_tx_queue* %29, %struct.em_tx_queue** %10, align 8
  %30 = load %struct.em_tx_queue*, %struct.em_tx_queue** %10, align 8
  %31 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %30, i32 0, i32 0
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
  br label %145

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
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = bitcast i32* %52 to %union.e1000_adv_tx_desc*
  %54 = bitcast %union.e1000_adv_tx_desc* %53 to %struct.TYPE_3__*
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* @E1000_TXD_STAT_DD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %145

67:                                               ; preds = %41
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 1, i32* %4, align 4
  br label %145

71:                                               ; preds = %67
  %72 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %73 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %15, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %16, align 8
  br label %80

80:                                               ; preds = %131, %71
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %14, align 8
  %83 = icmp ne i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @MPASS(i32 %84)
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* %15, align 8
  %88 = sub nsw i64 %86, %87
  store i64 %88, i64* %18, align 8
  %89 = load i64, i64* %18, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %80
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %18, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %18, align 8
  br label %95

95:                                               ; preds = %91, %80
  %96 = load i64, i64* %18, align 8
  %97 = icmp sgt i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @MPASS(i32 %98)
  %100 = load i64, i64* %18, align 8
  %101 = load i64, i64* %12, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %12, align 8
  %103 = load i64, i64* %14, align 8
  store i64 %103, i64* %15, align 8
  %104 = load i64, i64* %17, align 8
  %105 = add i64 %104, 1
  %106 = load i64, i64* %16, align 8
  %107 = sub i64 %106, 1
  %108 = and i64 %105, %107
  store i64 %108, i64* %17, align 8
  %109 = load i64, i64* %17, align 8
  %110 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %111 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %95
  br label %136

115:                                              ; preds = %95
  %116 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %117 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %116, i32 0, i32 2
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* %17, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %14, align 8
  %122 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %123 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %14, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = bitcast i32* %126 to %union.e1000_adv_tx_desc*
  %128 = bitcast %union.e1000_adv_tx_desc* %127 to %struct.TYPE_3__*
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %19, align 4
  br label %131

131:                                              ; preds = %115
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* @E1000_TXD_STAT_DD, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %80, label %136

136:                                              ; preds = %131, %114
  %137 = load i64, i64* %17, align 8
  %138 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %139 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load i64, i64* %15, align 8
  %141 = load %struct.tx_ring*, %struct.tx_ring** %11, align 8
  %142 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %141, i32 0, i32 3
  store i64 %140, i64* %142, align 8
  %143 = load i64, i64* %12, align 8
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %136, %70, %66, %40
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
