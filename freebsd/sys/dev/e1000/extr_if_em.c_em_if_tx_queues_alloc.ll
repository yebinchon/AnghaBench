; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_tx_queues_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_tx_queues_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.em_tx_queue*, %struct.TYPE_2__* }
%struct.em_tx_queue = type { i32, %struct.adapter*, %struct.tx_ring }
%struct.tx_ring = type { i32, i32, %struct.e1000_tx_desc*, i32*, %struct.adapter* }
%struct.e1000_tx_desc = type { i32 }
%struct.TYPE_2__ = type { i32* }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to allocate queue memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to allocate rs_idxs memory\0A\00", align 1
@QIDX_INVALID = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"allocated for %d tx_queues\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32*, i32, i32)* @em_if_tx_queues_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_if_tx_queues_alloc(i32 %0, i64* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.adapter*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.em_tx_queue*, align 8
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
  %24 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %24, i32* %14, align 4
  %25 = load %struct.adapter*, %struct.adapter** %12, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @MPASS(i32 %29)
  %31 = load %struct.adapter*, %struct.adapter** %12, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @MPASS(i32 %36)
  %38 = load %struct.adapter*, %struct.adapter** %12, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 48, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @M_DEVBUF, align 4
  %45 = load i32, i32* @M_NOWAIT, align 4
  %46 = load i32, i32* @M_ZERO, align 4
  %47 = or i32 %45, %46
  %48 = call i64 @malloc(i32 %43, i32 %44, i32 %47)
  %49 = inttoptr i64 %48 to %struct.em_tx_queue*
  %50 = load %struct.adapter*, %struct.adapter** %12, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 1
  store %struct.em_tx_queue* %49, %struct.em_tx_queue** %51, align 8
  %52 = icmp ne %struct.em_tx_queue* %49, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %5
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @iflib_get_dev(i32 %54)
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @ENOMEM, align 4
  store i32 %57, i32* %6, align 4
  br label %163

58:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  %59 = load %struct.adapter*, %struct.adapter** %12, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 1
  %61 = load %struct.em_tx_queue*, %struct.em_tx_queue** %60, align 8
  store %struct.em_tx_queue* %61, %struct.em_tx_queue** %15, align 8
  br label %62

62:                                               ; preds = %143, %58
  %63 = load i32, i32* %16, align 4
  %64 = load %struct.adapter*, %struct.adapter** %12, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %148

68:                                               ; preds = %62
  %69 = load %struct.em_tx_queue*, %struct.em_tx_queue** %15, align 8
  %70 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %69, i32 0, i32 2
  store %struct.tx_ring* %70, %struct.tx_ring** %18, align 8
  %71 = load %struct.adapter*, %struct.adapter** %12, align 8
  %72 = load %struct.em_tx_queue*, %struct.em_tx_queue** %15, align 8
  %73 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %72, i32 0, i32 1
  store %struct.adapter* %71, %struct.adapter** %73, align 8
  %74 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %75 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %74, i32 0, i32 4
  store %struct.adapter* %71, %struct.adapter** %75, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %78 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.em_tx_queue*, %struct.em_tx_queue** %15, align 8
  %80 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 4, %86
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* @M_DEVBUF, align 4
  %90 = load i32, i32* @M_NOWAIT, align 4
  %91 = load i32, i32* @M_ZERO, align 4
  %92 = or i32 %90, %91
  %93 = call i64 @malloc(i32 %88, i32 %89, i32 %92)
  %94 = inttoptr i64 %93 to i32*
  %95 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %96 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %95, i32 0, i32 3
  store i32* %94, i32** %96, align 8
  %97 = icmp ne i32* %94, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %68
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @iflib_get_dev(i32 %99)
  %101 = call i32 (i32, i8*, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @ENOMEM, align 4
  store i32 %102, i32* %14, align 4
  br label %159

103:                                              ; preds = %68
  store i32 0, i32* %17, align 4
  br label %104

104:                                              ; preds = %120, %103
  %105 = load i32, i32* %17, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %105, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %104
  %113 = load i32, i32* @QIDX_INVALID, align 4
  %114 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %115 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %113, i32* %119, align 4
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %17, align 4
  br label %104

123:                                              ; preds = %104
  %124 = load i64*, i64** %8, align 8
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %10, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %124, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to %struct.e1000_tx_desc*
  %132 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %133 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %132, i32 0, i32 2
  store %struct.e1000_tx_desc* %131, %struct.e1000_tx_desc** %133, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %10, align 4
  %137 = mul nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %142 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %123
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  %146 = load %struct.em_tx_queue*, %struct.em_tx_queue** %15, align 8
  %147 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %146, i32 1
  store %struct.em_tx_queue* %147, %struct.em_tx_queue** %15, align 8
  br label %62

148:                                              ; preds = %62
  %149 = load i64, i64* @bootverbose, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @iflib_get_dev(i32 %152)
  %154 = load %struct.adapter*, %struct.adapter** %12, align 8
  %155 = getelementptr inbounds %struct.adapter, %struct.adapter* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i32, i8*, ...) @device_printf(i32 %153, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %151, %148
  store i32 0, i32* %6, align 4
  br label %163

159:                                              ; preds = %98
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @em_if_queues_free(i32 %160)
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %159, %158, %53
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @em_if_queues_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
