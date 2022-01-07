; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_tx_queues_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_tx_queues_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { %struct.ixl_vsi }
%struct.ixl_vsi = type { i32, %struct.ixl_tx_queue*, %struct.TYPE_2__* }
%struct.ixl_tx_queue = type { %struct.ixl_vsi*, %struct.tx_ring }
%struct.tx_ring = type { i32, %struct.ixl_tx_queue*, i32, %struct.i40e_tx_desc*, i32, i32* }
%struct.i40e_tx_desc = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@M_IAVF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to allocate TX ring memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to allocate tx_rsq memory\0A\00", align 1
@QIDX_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32*, i32, i32)* @iavf_if_tx_queues_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_if_tx_queues_alloc(i32 %0, i64* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iavf_sc*, align 8
  %13 = alloca %struct.ixl_vsi*, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca %struct.ixl_tx_queue*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.tx_ring*, align 8
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.iavf_sc* @iflib_get_softc(i32 %20)
  store %struct.iavf_sc* %21, %struct.iavf_sc** %12, align 8
  %22 = load %struct.iavf_sc*, %struct.iavf_sc** %12, align 8
  %23 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %22, i32 0, i32 0
  store %struct.ixl_vsi* %23, %struct.ixl_vsi** %13, align 8
  %24 = load %struct.ixl_vsi*, %struct.ixl_vsi** %13, align 8
  %25 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %14, align 8
  store i32 0, i32* %18, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @MPASS(i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @MPASS(i32 %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @MPASS(i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 56, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @M_IAVF, align 4
  %49 = load i32, i32* @M_NOWAIT, align 4
  %50 = load i32, i32* @M_ZERO, align 4
  %51 = or i32 %49, %50
  %52 = call i32* @malloc(i32 %47, i32 %48, i32 %51)
  %53 = bitcast i32* %52 to %struct.ixl_tx_queue*
  %54 = load %struct.ixl_vsi*, %struct.ixl_vsi** %13, align 8
  %55 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %54, i32 0, i32 1
  store %struct.ixl_tx_queue* %53, %struct.ixl_tx_queue** %55, align 8
  %56 = icmp ne %struct.ixl_tx_queue* %53, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %5
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @iflib_get_dev(i32 %58)
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %6, align 4
  br label %163

62:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  %63 = load %struct.ixl_vsi*, %struct.ixl_vsi** %13, align 8
  %64 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %63, i32 0, i32 1
  %65 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %64, align 8
  store %struct.ixl_tx_queue* %65, %struct.ixl_tx_queue** %15, align 8
  br label %66

66:                                               ; preds = %153, %62
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %158

70:                                               ; preds = %66
  %71 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %15, align 8
  %72 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %71, i32 0, i32 1
  store %struct.tx_ring* %72, %struct.tx_ring** %19, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.tx_ring*, %struct.tx_ring** %19, align 8
  %75 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ixl_vsi*, %struct.ixl_vsi** %13, align 8
  %77 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %15, align 8
  %78 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %77, i32 0, i32 0
  store %struct.ixl_vsi* %76, %struct.ixl_vsi** %78, align 8
  %79 = load %struct.ixl_vsi*, %struct.ixl_vsi** %13, align 8
  %80 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %124, label %83

83:                                               ; preds = %70
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* @M_IAVF, align 4
  %93 = load i32, i32* @M_NOWAIT, align 4
  %94 = call i32* @malloc(i32 %91, i32 %92, i32 %93)
  %95 = load %struct.tx_ring*, %struct.tx_ring** %19, align 8
  %96 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %95, i32 0, i32 5
  store i32* %94, i32** %96, align 8
  %97 = icmp ne i32* %94, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %83
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @iflib_get_dev(i32 %99)
  %101 = call i32 @device_printf(i32 %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @ENOMEM, align 4
  store i32 %102, i32* %18, align 4
  br label %159

103:                                              ; preds = %83
  store i32 0, i32* %17, align 4
  br label %104

104:                                              ; preds = %120, %103
  %105 = load i32, i32* %17, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %105, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %104
  %113 = load i32, i32* @QIDX_INVALID, align 4
  %114 = load %struct.tx_ring*, %struct.tx_ring** %19, align 8
  %115 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %114, i32 0, i32 5
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
  br label %124

124:                                              ; preds = %123, %70
  %125 = load %struct.tx_ring*, %struct.tx_ring** %19, align 8
  %126 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @I40E_QTX_TAIL1(i32 %127)
  %129 = load %struct.tx_ring*, %struct.tx_ring** %19, align 8
  %130 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load i64*, i64** %8, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %10, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %131, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to %struct.i40e_tx_desc*
  %139 = load %struct.tx_ring*, %struct.tx_ring** %19, align 8
  %140 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %139, i32 0, i32 3
  store %struct.i40e_tx_desc* %138, %struct.i40e_tx_desc** %140, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %10, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.tx_ring*, %struct.tx_ring** %19, align 8
  %149 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %15, align 8
  %151 = load %struct.tx_ring*, %struct.tx_ring** %19, align 8
  %152 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %151, i32 0, i32 1
  store %struct.ixl_tx_queue* %150, %struct.ixl_tx_queue** %152, align 8
  br label %153

153:                                              ; preds = %124
  %154 = load i32, i32* %16, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %16, align 4
  %156 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %15, align 8
  %157 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %156, i32 1
  store %struct.ixl_tx_queue* %157, %struct.ixl_tx_queue** %15, align 8
  br label %66

158:                                              ; preds = %66
  store i32 0, i32* %6, align 4
  br label %163

159:                                              ; preds = %98
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @iavf_if_queues_free(i32 %160)
  %162 = load i32, i32* %18, align 4
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %159, %158, %57
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local %struct.iavf_sc* @iflib_get_softc(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @I40E_QTX_TAIL1(i32) #1

declare dso_local i32 @iavf_if_queues_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
