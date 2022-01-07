; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_tso_fill_packet_with_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_tso_fill_packet_with_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { i32, i32, i32* }
%struct.sfxge_tso_state = type { i32, i32, i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"TSO input length went negative\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"TSO packet space went negative\00", align 1
@SFXGE_FATSOV2 = common dso_local global i32 0, align 4
@EFX_TX_FATSOV2_DMA_SEGS_PER_PKT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_txq*, %struct.sfxge_tso_state*)* @tso_fill_packet_with_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tso_fill_packet_with_fragment(%struct.sfxge_txq* %0, %struct.sfxge_tso_state* %1) #0 {
  %3 = alloca %struct.sfxge_txq*, align 8
  %4 = alloca %struct.sfxge_tso_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %3, align 8
  store %struct.sfxge_tso_state* %1, %struct.sfxge_tso_state** %4, align 8
  %9 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %10 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %13 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %18 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  br label %167

22:                                               ; preds = %16
  %23 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %24 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %30 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %36 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SFXGE_FATSOV2, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %103

41:                                               ; preds = %22
  %42 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %43 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %48 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %53 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %57 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %60 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %41
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %66 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %70 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 4
  br label %102

73:                                               ; preds = %41
  %74 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %75 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %79 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %77, %80
  %82 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %83 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = srem i32 %81, %84
  %86 = sub nsw i32 %76, %85
  %87 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %88 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @EFX_TX_FATSOV2_DMA_SEGS_PER_PKT_MAX, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %92 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %95 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %93, %96
  %98 = zext i1 %97 to i32
  %99 = sub nsw i32 %90, %98
  %100 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %101 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %73, %63
  br label %132

103:                                              ; preds = %22
  %104 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %105 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %108 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @min(i32 %106, i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %113 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %119 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %124 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %129 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %103, %102
  %133 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %134 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %139 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = or i32 %137, %142
  %144 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %4, align 8
  %145 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = or i32 %143, %148
  store i32 %149, i32* %8, align 4
  %150 = load %struct.sfxge_txq*, %struct.sfxge_txq** %3, align 8
  %151 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.sfxge_txq*, %struct.sfxge_txq** %3, align 8
  %154 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  store i32* %158, i32** %5, align 8
  %159 = load %struct.sfxge_txq*, %struct.sfxge_txq** %3, align 8
  %160 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %8, align 4
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 @efx_tx_qdesc_dma_create(i32 %161, i32 %162, i32 %163, i32 %164, i32* %165)
  br label %167

167:                                              ; preds = %132, %21
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @efx_tx_qdesc_dma_create(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
