; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_igb_txrx.c_igb_tx_ctx_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_igb_txrx.c_igb_tx_ctx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_ring = type { i32, i32*, %struct.adapter* }
%struct.adapter = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.e1000_adv_tx_context_desc = type { i8*, i8*, i8*, i8* }

@CSUM_TSO = common dso_local global i32 0, align 4
@E1000_ADVTXD_PAYLEN_SHIFT = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@E1000_ADVTXD_VLAN_SHIFT = common dso_local global i32 0, align 4
@IGB_CSUM_OFFLOAD = common dso_local global i32 0, align 4
@E1000_ADVTXD_MACLEN_SHIFT = common dso_local global i32 0, align 4
@E1000_ADVTXD_TUCMD_IPV4 = common dso_local global i32 0, align 4
@E1000_ADVTXD_TUCMD_IPV6 = common dso_local global i32 0, align 4
@E1000_ADVTXD_DCMD_DEXT = common dso_local global i32 0, align 4
@E1000_ADVTXD_DTYP_CTXT = common dso_local global i32 0, align 4
@CSUM_IP_TCP = common dso_local global i32 0, align 4
@CSUM_IP6_TCP = common dso_local global i32 0, align 4
@E1000_ADVTXD_TUCMD_L4T_TCP = common dso_local global i32 0, align 4
@E1000_TXD_POPTS_TXSM = common dso_local global i32 0, align 4
@CSUM_IP_UDP = common dso_local global i32 0, align 4
@CSUM_IP6_UDP = common dso_local global i32 0, align 4
@E1000_ADVTXD_TUCMD_L4T_UDP = common dso_local global i32 0, align 4
@CSUM_IP_SCTP = common dso_local global i32 0, align 4
@CSUM_IP6_SCTP = common dso_local global i32 0, align 4
@E1000_ADVTXD_TUCMD_L4T_SCTP = common dso_local global i32 0, align 4
@e1000_82575 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tx_ring*, %struct.TYPE_8__*, i32*, i32*)* @igb_tx_ctx_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_tx_ctx_setup(%struct.tx_ring* %0, %struct.TYPE_8__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tx_ring*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.e1000_adv_tx_context_desc*, align 8
  %11 = alloca %struct.adapter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tx_ring* %0, %struct.tx_ring** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %16 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %15, i32 0, i32 2
  %17 = load %struct.adapter*, %struct.adapter** %16, align 8
  store %struct.adapter* %17, %struct.adapter** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CSUM_TSO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @igb_tso_setup(%struct.tx_ring* %25, %struct.TYPE_8__* %26, i32* %27, i32* %28)
  store i32 %29, i32* %5, align 4
  br label %191

30:                                               ; preds = %4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @E1000_ADVTXD_PAYLEN_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %40 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = bitcast i32* %45 to %struct.e1000_adv_tx_context_desc*
  store %struct.e1000_adv_tx_context_desc* %46, %struct.e1000_adv_tx_context_desc** %10, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @M_VLANTAG, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %30
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @E1000_ADVTXD_VLAN_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %12, align 4
  br label %70

61:                                               ; preds = %30
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IGB_CSUM_OFFLOAD, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %191

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %53
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @E1000_ADVTXD_MACLEN_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %12, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %12, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %89 [
    i32 132, label %81
    i32 131, label %85
  ]

81:                                               ; preds = %70
  %82 = load i32, i32* @E1000_ADVTXD_TUCMD_IPV4, align 4
  %83 = load i32, i32* %13, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %13, align 4
  br label %90

85:                                               ; preds = %70
  %86 = load i32, i32* @E1000_ADVTXD_TUCMD_IPV6, align 4
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %13, align 4
  br label %90

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %89, %85, %81
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* @E1000_ADVTXD_DCMD_DEXT, align 4
  %97 = load i32, i32* @E1000_ADVTXD_DTYP_CTXT, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %13, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %13, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %161 [
    i32 129, label %104
    i32 128, label %123
    i32 130, label %142
  ]

104:                                              ; preds = %90
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CSUM_IP_TCP, align 4
  %109 = load i32, i32* @CSUM_IP6_TCP, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %104
  %114 = load i32, i32* @E1000_ADVTXD_TUCMD_L4T_TCP, align 4
  %115 = load i32, i32* %13, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* @E1000_TXD_POPTS_TXSM, align 4
  %118 = shl i32 %117, 8
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %118
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %113, %104
  br label %162

123:                                              ; preds = %90
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @CSUM_IP_UDP, align 4
  %128 = load i32, i32* @CSUM_IP6_UDP, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %123
  %133 = load i32, i32* @E1000_ADVTXD_TUCMD_L4T_UDP, align 4
  %134 = load i32, i32* %13, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* @E1000_TXD_POPTS_TXSM, align 4
  %137 = shl i32 %136, 8
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %137
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %132, %123
  br label %162

142:                                              ; preds = %90
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CSUM_IP_SCTP, align 4
  %147 = load i32, i32* @CSUM_IP6_SCTP, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %142
  %152 = load i32, i32* @E1000_ADVTXD_TUCMD_L4T_SCTP, align 4
  %153 = load i32, i32* %13, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* @E1000_TXD_POPTS_TXSM, align 4
  %156 = shl i32 %155, 8
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %156
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %151, %142
  br label %162

161:                                              ; preds = %90
  br label %162

162:                                              ; preds = %161, %160, %141, %122
  %163 = load %struct.adapter*, %struct.adapter** %11, align 8
  %164 = getelementptr inbounds %struct.adapter, %struct.adapter* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @e1000_82575, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %162
  %171 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %172 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = shl i32 %173, 4
  store i32 %174, i32* %14, align 4
  br label %175

175:                                              ; preds = %170, %162
  %176 = load i32, i32* %12, align 4
  %177 = call i8* @htole32(i32 %176)
  %178 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %10, align 8
  %179 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %178, i32 0, i32 3
  store i8* %177, i8** %179, align 8
  %180 = load i32, i32* %13, align 4
  %181 = call i8* @htole32(i32 %180)
  %182 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %10, align 8
  %183 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %182, i32 0, i32 2
  store i8* %181, i8** %183, align 8
  %184 = call i8* @htole32(i32 0)
  %185 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %10, align 8
  %186 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %185, i32 0, i32 1
  store i8* %184, i8** %186, align 8
  %187 = load i32, i32* %14, align 4
  %188 = call i8* @htole32(i32 %187)
  %189 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %10, align 8
  %190 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %189, i32 0, i32 0
  store i8* %188, i8** %190, align 8
  store i32 1, i32* %5, align 4
  br label %191

191:                                              ; preds = %175, %68, %24
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i32 @igb_tso_setup(%struct.tx_ring*, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i8* @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
