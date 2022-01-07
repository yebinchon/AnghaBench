; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_tx_queues_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_tx_queues_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i32, %struct.ix_tx_queue*, %struct.TYPE_2__* }
%struct.ix_tx_queue = type { %struct.adapter*, %struct.tx_ring }
%struct.tx_ring = type { i32, i64, i64, i32, %union.ixgbe_adv_tx_desc*, i32, i32, i32*, %struct.adapter* }
%union.ixgbe_adv_tx_desc = type { i32 }
%struct.TYPE_2__ = type { i32* }

@M_IXGBE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to allocate TX ring memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QIDX_INVALID = common dso_local global i32 0, align 4
@IXGBE_FEATURE_FDIR = common dso_local global i32 0, align 4
@atr_sample_rate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"allocated for %d queues\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32*, i32, i32)* @ixgbe_if_tx_queues_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_if_tx_queues_alloc(i32 %0, i64* %1, i32* %2, i32 %3, i32 %4) #0 {
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
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %13, align 8
  %24 = load %struct.adapter*, %struct.adapter** %12, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @MPASS(i32 %28)
  %30 = load %struct.adapter*, %struct.adapter** %12, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @MPASS(i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 1
  %39 = zext i1 %38 to i32
  %40 = call i32 @MPASS(i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 72, %42
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @M_IXGBE, align 4
  %46 = load i32, i32* @M_NOWAIT, align 4
  %47 = load i32, i32* @M_ZERO, align 4
  %48 = or i32 %46, %47
  %49 = call i64 @malloc(i32 %44, i32 %45, i32 %48)
  %50 = inttoptr i64 %49 to %struct.ix_tx_queue*
  %51 = load %struct.adapter*, %struct.adapter** %12, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 4
  store %struct.ix_tx_queue* %50, %struct.ix_tx_queue** %52, align 8
  %53 = load %struct.adapter*, %struct.adapter** %12, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 4
  %55 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %54, align 8
  %56 = icmp ne %struct.ix_tx_queue* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %5
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @iflib_get_dev(i32 %58)
  %60 = call i32 (i32, i8*, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %6, align 4
  br label %183

62:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  %63 = load %struct.adapter*, %struct.adapter** %12, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 4
  %65 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %64, align 8
  store %struct.ix_tx_queue* %65, %struct.ix_tx_queue** %14, align 8
  br label %66

66:                                               ; preds = %167, %62
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %172

70:                                               ; preds = %66
  %71 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %14, align 8
  %72 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %71, i32 0, i32 1
  store %struct.tx_ring* %72, %struct.tx_ring** %18, align 8
  %73 = load %struct.adapter*, %struct.adapter** %12, align 8
  %74 = getelementptr inbounds %struct.adapter, %struct.adapter* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.adapter*, %struct.adapter** %12, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @ixgbe_vf_que_index(i32 %75, i32 %78, i32 %79)
  %81 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %82 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.adapter*, %struct.adapter** %12, align 8
  %84 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %14, align 8
  %85 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %84, i32 0, i32 0
  store %struct.adapter* %83, %struct.adapter** %85, align 8
  %86 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %87 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %86, i32 0, i32 8
  store %struct.adapter* %83, %struct.adapter** %87, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 4, %93
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* @M_IXGBE, align 4
  %97 = load i32, i32* @M_NOWAIT, align 4
  %98 = load i32, i32* @M_ZERO, align 4
  %99 = or i32 %97, %98
  %100 = call i64 @malloc(i32 %95, i32 %96, i32 %99)
  %101 = inttoptr i64 %100 to i32*
  %102 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %103 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %102, i32 0, i32 7
  store i32* %101, i32** %103, align 8
  %104 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %105 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %104, i32 0, i32 7
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %70
  %109 = load i32, i32* @ENOMEM, align 4
  store i32 %109, i32* %17, align 4
  br label %179

110:                                              ; preds = %70
  store i32 0, i32* %16, align 4
  br label %111

111:                                              ; preds = %127, %110
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %112, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %111
  %120 = load i32, i32* @QIDX_INVALID, align 4
  %121 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %122 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %121, i32 0, i32 7
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %120, i32* %126, align 4
  br label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  br label %111

130:                                              ; preds = %111
  %131 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %132 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @IXGBE_TDT(i32 %133)
  %135 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %136 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 4
  %137 = load i64*, i64** %8, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to %union.ixgbe_adv_tx_desc*
  %143 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %144 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %143, i32 0, i32 4
  store %union.ixgbe_adv_tx_desc* %142, %union.ixgbe_adv_tx_desc** %144, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %151 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 8
  %152 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %153 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %152, i32 0, i32 2
  store i64 0, i64* %153, align 8
  %154 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %155 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %154, i32 0, i32 1
  store i64 0, i64* %155, align 8
  %156 = load %struct.adapter*, %struct.adapter** %12, align 8
  %157 = getelementptr inbounds %struct.adapter, %struct.adapter* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @IXGBE_FEATURE_FDIR, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %130
  %163 = load i32, i32* @atr_sample_rate, align 4
  %164 = load %struct.tx_ring*, %struct.tx_ring** %18, align 8
  %165 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  br label %166

166:                                              ; preds = %162, %130
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %15, align 4
  %170 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %14, align 8
  %171 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %170, i32 1
  store %struct.ix_tx_queue* %171, %struct.ix_tx_queue** %14, align 8
  br label %66

172:                                              ; preds = %66
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @iflib_get_dev(i32 %173)
  %175 = load %struct.adapter*, %struct.adapter** %12, align 8
  %176 = getelementptr inbounds %struct.adapter, %struct.adapter* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32, i8*, ...) @device_printf(i32 %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %177)
  store i32 0, i32* %6, align 4
  br label %183

179:                                              ; preds = %108
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @ixgbe_if_queues_free(i32 %180)
  %182 = load i32, i32* %17, align 4
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %179, %172, %57
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @ixgbe_vf_que_index(i32, i32, i32) #1

declare dso_local i32 @IXGBE_TDT(i32) #1

declare dso_local i32 @ixgbe_if_queues_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
