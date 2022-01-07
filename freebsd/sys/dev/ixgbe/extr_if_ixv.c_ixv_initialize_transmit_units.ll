; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_initialize_transmit_units.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_initialize_transmit_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.ixgbe_hw, %struct.ix_tx_queue*, %struct.TYPE_2__* }
%struct.ixgbe_hw = type { i32 }
%struct.ix_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@QIDX_INVALID = common dso_local global i32 0, align 4
@IXGBE_DCA_TXCTRL_DESC_WRO_EN = common dso_local global i32 0, align 4
@IXGBE_TXDCTL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixv_initialize_transmit_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixv_initialize_transmit_units(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca %struct.ix_tx_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tx_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call %struct.adapter* @iflib_get_softc(i32 %14)
  store %struct.adapter* %15, %struct.adapter** %3, align 8
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 1
  store %struct.ixgbe_hw* %17, %struct.ixgbe_hw** %4, align 8
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %5, align 8
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 2
  %23 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %22, align 8
  store %struct.ix_tx_queue* %23, %struct.ix_tx_queue** %6, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %148, %1
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %153

30:                                               ; preds = %24
  %31 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %6, align 8
  %32 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %31, i32 0, i32 0
  store %struct.tx_ring* %32, %struct.tx_ring** %8, align 8
  %33 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %34 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  %36 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %37 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @IXGBE_VFTXDCTL(i32 %40)
  %42 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %39, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, 524288
  store i32 %44, i32* %11, align 4
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @IXGBE_VFTXDCTL(i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %45, i32 %47, i32 %48)
  %50 = load %struct.adapter*, %struct.adapter** %3, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 1
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @IXGBE_VFTDH(i32 %52)
  %54 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %51, i32 %53, i32 0)
  %55 = load %struct.adapter*, %struct.adapter** %3, align 8
  %56 = getelementptr inbounds %struct.adapter, %struct.adapter* %55, i32 0, i32 1
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @IXGBE_VFTDT(i32 %57)
  %59 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %56, i32 %58, i32 0)
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @IXGBE_VFTDT(i32 %60)
  %62 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %63 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  %64 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %65 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %68 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %76 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %93, %30
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %78, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %77
  %86 = load i32, i32* @QIDX_INVALID, align 4
  %87 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %88 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %77

96:                                               ; preds = %77
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @IXGBE_VFTDBAL(i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = and i64 %101, 4294967295
  %103 = trunc i64 %102 to i32
  %104 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %97, i32 %99, i32 %103)
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @IXGBE_VFTDBAH(i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = ashr i32 %108, 32
  %110 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %105, i32 %107, i32 %109)
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @IXGBE_VFTDLEN(i32 %112)
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 4
  %121 = trunc i64 %120 to i32
  %122 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %111, i32 %113, i32 %121)
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @IXGBE_VFDCA_TXCTRL(i32 %124)
  %126 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %123, i32 %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* @IXGBE_DCA_TXCTRL_DESC_WRO_EN, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %10, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %10, align 4
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @IXGBE_VFDCA_TXCTRL(i32 %132)
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %131, i32 %133, i32 %134)
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @IXGBE_VFTXDCTL(i32 %137)
  %139 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %136, i32 %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* @IXGBE_TXDCTL_ENABLE, align 4
  %141 = load i32, i32* %11, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %11, align 4
  %143 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @IXGBE_VFTXDCTL(i32 %144)
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %143, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %96
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  %151 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %6, align 8
  %152 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %151, i32 1
  store %struct.ix_tx_queue* %152, %struct.ix_tx_queue** %6, align 8
  br label %24

153:                                              ; preds = %24
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFTXDCTL(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VFTDH(i32) #1

declare dso_local i32 @IXGBE_VFTDT(i32) #1

declare dso_local i32 @IXGBE_VFTDBAL(i32) #1

declare dso_local i32 @IXGBE_VFTDBAH(i32) #1

declare dso_local i32 @IXGBE_VFTDLEN(i32) #1

declare dso_local i32 @IXGBE_VFDCA_TXCTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
