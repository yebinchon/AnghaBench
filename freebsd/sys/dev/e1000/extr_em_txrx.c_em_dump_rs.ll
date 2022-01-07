; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_em_txrx.c_em_dump_rs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_em_txrx.c_em_dump_rs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, %struct.em_tx_queue*, %struct.TYPE_8__* }
%struct.em_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i64, i64, i64*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@E1000_TXD_STAT_DD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"qid[%d]->tx_rsq[%d]: %d clear \00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"qid[%d]->tx_rsq[rs_cidx-1=%d]: %d  \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"cidx_prev=%d rs_pidx=%d \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%d set \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @em_dump_rs(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.em_tx_queue*, align 8
  %5 = alloca %struct.tx_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %3, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %119, %1
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %122

27:                                               ; preds = %21
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 1
  %30 = load %struct.em_tx_queue*, %struct.em_tx_queue** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %30, i64 %31
  store %struct.em_tx_queue* %32, %struct.em_tx_queue** %4, align 8
  %33 = load %struct.em_tx_queue*, %struct.em_tx_queue** %4, align 8
  %34 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %33, i32 0, i32 0
  store %struct.tx_ring* %34, %struct.tx_ring** %5, align 8
  %35 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %36 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %40 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %27
  %44 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %45 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  %50 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %51 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %50, i32 0, i32 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @E1000_TXD_STAT_DD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %43
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %65, i64 %66)
  br label %68

68:                                               ; preds = %63, %43
  br label %85

69:                                               ; preds = %27
  %70 = load i64, i64* %10, align 8
  %71 = sub i64 %70, 1
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %72, 1
  %74 = and i64 %71, %73
  store i64 %74, i64* %10, align 8
  %75 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %76 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %81, i64 %82, i64 %83)
  br label %85

85:                                               ; preds = %69, %68
  %86 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %87 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %90 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %88, i64 %91)
  store i64 0, i64* %6, align 8
  br label %93

93:                                               ; preds = %114, %85
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %93
  %98 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %99 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %98, i32 0, i32 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @E1000_TXD_STAT_DD, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %97
  %111 = load i64, i64* %6, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %111)
  br label %113

113:                                              ; preds = %110, %97
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %6, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %6, align 8
  br label %93

117:                                              ; preds = %93
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117
  %120 = load i64, i64* %8, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %8, align 8
  br label %21

122:                                              ; preds = %21
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
