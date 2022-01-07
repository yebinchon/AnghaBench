; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_initialize_transmit_units.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_initialize_transmit_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.ix_tx_queue*, %struct.TYPE_4__*, %struct.ixgbe_hw }
%struct.ix_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@QIDX_INVALID = common dso_local global i32 0, align 4
@IXGBE_DCA_TXCTRL_DESC_WRO_EN = common dso_local global i32 0, align 4
@IXGBE_DMATXCTL = common dso_local global i32 0, align 4
@IXGBE_DMATXCTL_TE = common dso_local global i32 0, align 4
@IXGBE_RTTDCS = common dso_local global i32 0, align 4
@IXGBE_RTTDCS_ARBDIS = common dso_local global i32 0, align 4
@IXGBE_MTQC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixgbe_initialize_transmit_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_initialize_transmit_units(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.ix_tx_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tx_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.adapter* @iflib_get_softc(i32 %15)
  store %struct.adapter* %16, %struct.adapter** %3, align 8
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 4
  store %struct.ixgbe_hw* %18, %struct.ixgbe_hw** %4, align 8
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %7, align 4
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 2
  %24 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %23, align 8
  store %struct.ix_tx_queue* %24, %struct.ix_tx_queue** %6, align 8
  br label %25

25:                                               ; preds = %149, %1
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %154

31:                                               ; preds = %25
  %32 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %6, align 8
  %33 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %32, i32 0, i32 0
  store %struct.tx_ring* %33, %struct.tx_ring** %8, align 8
  %34 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %35 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %37 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %38 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @IXGBE_TDBAL(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = and i64 %44, 4294967295
  %46 = trunc i64 %45 to i32
  %47 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %40, i32 %42, i32 %46)
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @IXGBE_TDBAH(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = ashr i32 %51, 32
  %53 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %48, i32 %50, i32 %52)
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @IXGBE_TDLEN(i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %54, i32 %56, i32 %64)
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @IXGBE_TDH(i32 %67)
  %69 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %66, i32 %68, i32 0)
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @IXGBE_TDT(i32 %71)
  %73 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %70, i32 %72, i32 0)
  %74 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %75 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @IXGBE_TDT(i32 %76)
  %78 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %79 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  %80 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %81 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %84 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %92 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %109, %31
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %94, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %93
  %102 = load i32, i32* @QIDX_INVALID, align 4
  %103 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %104 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  br label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %93

112:                                              ; preds = %93
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %114 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %122 [
    i32 128, label %117
  ]

117:                                              ; preds = %112
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @IXGBE_DCA_TXCTRL(i32 %119)
  %121 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %118, i32 %120)
  store i32 %121, i32* %10, align 4
  br label %127

122:                                              ; preds = %112
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @IXGBE_DCA_TXCTRL_82599(i32 %124)
  %126 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %123, i32 %125)
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %122, %117
  %128 = load i32, i32* @IXGBE_DCA_TXCTRL_DESC_WRO_EN, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %10, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %10, align 4
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %133 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  switch i32 %135, label %142 [
    i32 128, label %136
  ]

136:                                              ; preds = %127
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @IXGBE_DCA_TXCTRL(i32 %138)
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %137, i32 %139, i32 %140)
  br label %148

142:                                              ; preds = %127
  %143 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @IXGBE_DCA_TXCTRL_82599(i32 %144)
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %143, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %142, %136
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  %152 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %6, align 8
  %153 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %152, i32 1
  store %struct.ix_tx_queue* %153, %struct.ix_tx_queue** %6, align 8
  br label %25

154:                                              ; preds = %25
  %155 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %156 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 128
  br i1 %159, label %160, label %196

160:                                              ; preds = %154
  %161 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %162 = load i32, i32* @IXGBE_DMATXCTL, align 4
  %163 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %161, i32 %162)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* @IXGBE_DMATXCTL_TE, align 4
  %165 = load i32, i32* %13, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %13, align 4
  %167 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %168 = load i32, i32* @IXGBE_DMATXCTL, align 4
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %167, i32 %168, i32 %169)
  %171 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %172 = load i32, i32* @IXGBE_RTTDCS, align 4
  %173 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %171, i32 %172)
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* @IXGBE_RTTDCS_ARBDIS, align 4
  %175 = load i32, i32* %14, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %14, align 4
  %177 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %178 = load i32, i32* @IXGBE_RTTDCS, align 4
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %177, i32 %178, i32 %179)
  %181 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %182 = load i32, i32* @IXGBE_MTQC, align 4
  %183 = load %struct.adapter*, %struct.adapter** %3, align 8
  %184 = getelementptr inbounds %struct.adapter, %struct.adapter* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @ixgbe_get_mtqc(i32 %185)
  %187 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %181, i32 %182, i32 %186)
  %188 = load i32, i32* @IXGBE_RTTDCS_ARBDIS, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %14, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %14, align 4
  %192 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %193 = load i32, i32* @IXGBE_RTTDCS, align 4
  %194 = load i32, i32* %14, align 4
  %195 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %192, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %160, %154
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_TDBAL(i32) #1

declare dso_local i32 @IXGBE_TDBAH(i32) #1

declare dso_local i32 @IXGBE_TDLEN(i32) #1

declare dso_local i32 @IXGBE_TDH(i32) #1

declare dso_local i32 @IXGBE_TDT(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_DCA_TXCTRL(i32) #1

declare dso_local i32 @IXGBE_DCA_TXCTRL_82599(i32) #1

declare dso_local i32 @ixgbe_get_mtqc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
