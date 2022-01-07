; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_init_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_init_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%union.init_op = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@STAGE_START = common dso_local global i32 0, align 4
@STAGE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i64, i64)* @ecore_init_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_init_block(%struct.bxe_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.init_op*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %17 = call i64* @INIT_OPS_OFFSETS(%struct.bxe_softc* %16)
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @STAGE_START, align 4
  %21 = call i64 @BLOCK_OPS_IDX(i64 %18, i64 %19, i32 %20)
  %22 = getelementptr inbounds i64, i64* %17, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %25 = call i64* @INIT_OPS_OFFSETS(%struct.bxe_softc* %24)
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @STAGE_END, align 4
  %29 = call i64 @BLOCK_OPS_IDX(i64 %26, i64 %27, i32 %28)
  %30 = getelementptr inbounds i64, i64* %25, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %174

36:                                               ; preds = %3
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %38 = call i64* @INIT_DATA(%struct.bxe_softc* %37)
  store i64* %38, i64** %15, align 8
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %171, %36
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %174

44:                                               ; preds = %40
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %46 = call i32* @INIT_OPS(%struct.bxe_softc* %45)
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = bitcast i32* %48 to %union.init_op*
  store %union.init_op* %49, %union.init_op** %9, align 8
  %50 = load %union.init_op*, %union.init_op** %9, align 8
  %51 = bitcast %union.init_op* %50 to %struct.TYPE_6__*
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %11, align 8
  %54 = load %union.init_op*, %union.init_op** %9, align 8
  %55 = bitcast %union.init_op* %54 to %struct.TYPE_6__*
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %12, align 8
  %58 = load %union.init_op*, %union.init_op** %9, align 8
  %59 = bitcast %union.init_op* %58 to %struct.TYPE_9__*
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %13, align 8
  %62 = load i64*, i64** %15, align 8
  %63 = load %union.init_op*, %union.init_op** %9, align 8
  %64 = bitcast %union.init_op* %63 to %struct.TYPE_9__*
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %62, i64 %67
  store i64* %68, i64** %14, align 8
  %69 = load i64, i64* %11, align 8
  switch i64 %69, label %169 [
    i64 137, label %70
    i64 131, label %74
    i64 135, label %82
    i64 133, label %88
    i64 141, label %94
    i64 128, label %99
    i64 132, label %107
    i64 129, label %115
    i64 130, label %124
    i64 140, label %130
    i64 139, label %151
    i64 138, label %168
    i64 136, label %168
    i64 142, label %168
    i64 134, label %168
  ]

70:                                               ; preds = %44
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @REG_RD(%struct.bxe_softc* %71, i64 %72)
  br label %170

74:                                               ; preds = %44
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load %union.init_op*, %union.init_op** %9, align 8
  %78 = bitcast %union.init_op* %77 to %struct.TYPE_7__*
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @REG_WR(%struct.bxe_softc* %75, i64 %76, i32 %80)
  br label %170

82:                                               ; preds = %44
  %83 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64*, i64** %14, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @ecore_init_str_wr(%struct.bxe_softc* %83, i64 %84, i64* %85, i64 %86)
  br label %170

88:                                               ; preds = %44
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64*, i64** %14, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @ecore_init_wr_wb(%struct.bxe_softc* %89, i64 %90, i64* %91, i64 %92)
  br label %170

94:                                               ; preds = %44
  %95 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %13, align 8
  %98 = call i32 @ecore_init_fw(%struct.bxe_softc* %95, i64 %96, i64 %97)
  br label %170

99:                                               ; preds = %44
  %100 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load %union.init_op*, %union.init_op** %9, align 8
  %103 = bitcast %union.init_op* %102 to %struct.TYPE_8__*
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @ecore_init_fill(%struct.bxe_softc* %100, i64 %101, i32 0, i32 %105, i32 0)
  br label %170

107:                                              ; preds = %44
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load %union.init_op*, %union.init_op** %9, align 8
  %111 = bitcast %union.init_op* %110 to %struct.TYPE_8__*
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @ecore_init_fill(%struct.bxe_softc* %108, i64 %109, i32 0, i32 %113, i32 1)
  br label %170

115:                                              ; preds = %44
  %116 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* %13, align 8
  %119 = load %union.init_op*, %union.init_op** %9, align 8
  %120 = bitcast %union.init_op* %119 to %struct.TYPE_9__*
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ecore_init_wr_zp(%struct.bxe_softc* %116, i64 %117, i64 %118, i32 %122)
  br label %170

124:                                              ; preds = %44
  %125 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64*, i64** %14, align 8
  %128 = load i64, i64* %13, align 8
  %129 = call i32 @ecore_init_wr_64(%struct.bxe_softc* %125, i64 %126, i64* %127, i64 %128)
  br label %170

130:                                              ; preds = %44
  %131 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %132 = call i32 @INIT_MODE_FLAGS(%struct.bxe_softc* %131)
  %133 = load %union.init_op*, %union.init_op** %9, align 8
  %134 = bitcast %union.init_op* %133 to %struct.TYPE_10__*
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %132, %136
  %138 = load %union.init_op*, %union.init_op** %9, align 8
  %139 = bitcast %union.init_op* %138 to %struct.TYPE_10__*
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %137, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %130
  %144 = load %union.init_op*, %union.init_op** %9, align 8
  %145 = bitcast %union.init_op* %144 to %struct.TYPE_10__*
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %10, align 8
  %149 = add nsw i64 %148, %147
  store i64 %149, i64* %10, align 8
  br label %150

150:                                              ; preds = %143, %130
  br label %170

151:                                              ; preds = %44
  %152 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %153 = call i32 @INIT_MODE_FLAGS(%struct.bxe_softc* %152)
  %154 = load %union.init_op*, %union.init_op** %9, align 8
  %155 = bitcast %union.init_op* %154 to %struct.TYPE_10__*
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %153, %157
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %151
  %161 = load %union.init_op*, %union.init_op** %9, align 8
  %162 = bitcast %union.init_op* %161 to %struct.TYPE_10__*
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %10, align 8
  %166 = add nsw i64 %165, %164
  store i64 %166, i64* %10, align 8
  br label %167

167:                                              ; preds = %160, %151
  br label %170

168:                                              ; preds = %44, %44, %44, %44
  br label %169

169:                                              ; preds = %44, %168
  br label %170

170:                                              ; preds = %169, %167, %150, %124, %115, %107, %99, %94, %88, %82, %74, %70
  br label %171

171:                                              ; preds = %170
  %172 = load i64, i64* %10, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %10, align 8
  br label %40

174:                                              ; preds = %35, %40
  ret void
}

declare dso_local i64* @INIT_OPS_OFFSETS(%struct.bxe_softc*) #1

declare dso_local i64 @BLOCK_OPS_IDX(i64, i64, i32) #1

declare dso_local i64* @INIT_DATA(%struct.bxe_softc*) #1

declare dso_local i32* @INIT_OPS(%struct.bxe_softc*) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @ecore_init_str_wr(%struct.bxe_softc*, i64, i64*, i64) #1

declare dso_local i32 @ecore_init_wr_wb(%struct.bxe_softc*, i64, i64*, i64) #1

declare dso_local i32 @ecore_init_fw(%struct.bxe_softc*, i64, i64) #1

declare dso_local i32 @ecore_init_fill(%struct.bxe_softc*, i64, i32, i32, i32) #1

declare dso_local i32 @ecore_init_wr_zp(%struct.bxe_softc*, i64, i64, i32) #1

declare dso_local i32 @ecore_init_wr_64(%struct.bxe_softc*, i64, i64*, i64) #1

declare dso_local i32 @INIT_MODE_FLAGS(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
