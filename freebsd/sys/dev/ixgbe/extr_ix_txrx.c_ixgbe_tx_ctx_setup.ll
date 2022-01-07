; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ix_txrx.c_ixgbe_tx_ctx_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ix_txrx.c_ixgbe_tx_ctx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adv_tx_context_desc = type { i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_VLAN_SHIFT = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@ETHER_VLAN_ENCAP_LEN = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_MACLEN_SHIFT = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_MSS_SHIFT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_L4LEN_SHIFT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_PAYLEN_SHIFT = common dso_local global i32 0, align 4
@IPI_TX_IPV4 = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_TUCMD_IPV4 = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@IXGBE_TXD_POPTS_IXSM = common dso_local global i32 0, align 4
@IPI_TX_IPV6 = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_TUCMD_IPV6 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CSUM_IP_TCP = common dso_local global i32 0, align 4
@CSUM_IP6_TCP = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_TUCMD_L4T_TCP = common dso_local global i32 0, align 4
@CSUM_IP_UDP = common dso_local global i32 0, align 4
@CSUM_IP6_UDP = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_TUCMD_L4T_UDP = common dso_local global i32 0, align 4
@CSUM_IP_SCTP = common dso_local global i32 0, align 4
@CSUM_IP6_SCTP = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_TUCMD_L4T_SCTP = common dso_local global i32 0, align 4
@IXGBE_TXD_POPTS_TXSM = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_DCMD_DEXT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_DTYP_CTXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adv_tx_context_desc*, %struct.TYPE_3__*)* @ixgbe_tx_ctx_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_tx_ctx_setup(%struct.ixgbe_adv_tx_context_desc* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ixgbe_adv_tx_context_desc*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_adv_tx_context_desc* %0, %struct.ixgbe_adv_tx_context_desc** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %10, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @htole16(i64 %15)
  %17 = load i32, i32* @IXGBE_ADVTXD_VLAN_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load i32, i32* @ETHER_HDR_LEN, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @ETHER_VLAN_ENCAP_LEN, align 4
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %43

38:                                               ; preds = %2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %38, %34
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @IXGBE_ADVTXD_MACLEN_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %9, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CSUM_TSO, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %43
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %63, %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  store i32 %71, i32* %9, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IXGBE_ADVTXD_MSS_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IXGBE_ADVTXD_L4LEN_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %58, %43
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @IXGBE_ADVTXD_PAYLEN_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IPI_TX_IPV4, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %86
  %99 = load i32, i32* @IXGBE_ADVTXD_TUCMD_IPV4, align 4
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @CSUM_IP, align 4
  %106 = load i32, i32* @CSUM_TSO, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %98
  %111 = load i32, i32* @IXGBE_TXD_POPTS_IXSM, align 4
  %112 = shl i32 %111, 8
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %110, %98
  br label %130

116:                                              ; preds = %86
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IPI_TX_IPV6, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i32, i32* @IXGBE_ADVTXD_TUCMD_IPV6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %6, align 4
  br label %129

127:                                              ; preds = %116
  %128 = load i32, i32* @FALSE, align 4
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %127, %123
  br label %130

130:                                              ; preds = %129, %115
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %5, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  switch i32 %138, label %189 [
    i32 129, label %139
    i32 128, label %157
    i32 130, label %173
  ]

139:                                              ; preds = %130
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @CSUM_IP_TCP, align 4
  %144 = load i32, i32* @CSUM_IP6_TCP, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @CSUM_TSO, align 4
  %147 = or i32 %145, %146
  %148 = and i32 %142, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %139
  %151 = load i32, i32* @IXGBE_ADVTXD_TUCMD_L4T_TCP, align 4
  %152 = load i32, i32* %6, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %6, align 4
  br label %156

154:                                              ; preds = %139
  %155 = load i32, i32* @FALSE, align 4
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %154, %150
  br label %191

157:                                              ; preds = %130
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @CSUM_IP_UDP, align 4
  %162 = load i32, i32* @CSUM_IP6_UDP, align 4
  %163 = or i32 %161, %162
  %164 = and i32 %160, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %157
  %167 = load i32, i32* @IXGBE_ADVTXD_TUCMD_L4T_UDP, align 4
  %168 = load i32, i32* %6, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %6, align 4
  br label %172

170:                                              ; preds = %157
  %171 = load i32, i32* @FALSE, align 4
  store i32 %171, i32* %10, align 4
  br label %172

172:                                              ; preds = %170, %166
  br label %191

173:                                              ; preds = %130
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @CSUM_IP_SCTP, align 4
  %178 = load i32, i32* @CSUM_IP6_SCTP, align 4
  %179 = or i32 %177, %178
  %180 = and i32 %176, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %173
  %183 = load i32, i32* @IXGBE_ADVTXD_TUCMD_L4T_SCTP, align 4
  %184 = load i32, i32* %6, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %6, align 4
  br label %188

186:                                              ; preds = %173
  %187 = load i32, i32* @FALSE, align 4
  store i32 %187, i32* %10, align 4
  br label %188

188:                                              ; preds = %186, %182
  br label %191

189:                                              ; preds = %130
  %190 = load i32, i32* @FALSE, align 4
  store i32 %190, i32* %10, align 4
  br label %191

191:                                              ; preds = %189, %188, %172, %156
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i32, i32* @IXGBE_TXD_POPTS_TXSM, align 4
  %196 = shl i32 %195, 8
  %197 = load i32, i32* %7, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %7, align 4
  br label %199

199:                                              ; preds = %194, %191
  %200 = load i32, i32* @IXGBE_ADVTXD_DCMD_DEXT, align 4
  %201 = load i32, i32* @IXGBE_ADVTXD_DTYP_CTXT, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* %6, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %5, align 4
  %206 = call i8* @htole32(i32 %205)
  %207 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %3, align 8
  %208 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %207, i32 0, i32 3
  store i8* %206, i8** %208, align 8
  %209 = load i32, i32* %6, align 4
  %210 = call i8* @htole32(i32 %209)
  %211 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %3, align 8
  %212 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %211, i32 0, i32 2
  store i8* %210, i8** %212, align 8
  %213 = call i8* @htole32(i32 0)
  %214 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %3, align 8
  %215 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %214, i32 0, i32 1
  store i8* %213, i8** %215, align 8
  %216 = load i32, i32* %8, align 4
  %217 = call i8* @htole32(i32 %216)
  %218 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %3, align 8
  %219 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %218, i32 0, i32 0
  store i8* %217, i8** %219, align 8
  %220 = load i32, i32* %7, align 4
  ret i32 %220
}

declare dso_local i32 @htole16(i64) #1

declare dso_local i8* @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
