; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_attach_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_attach_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32*, i32, i32, i8*, i8* }
%struct.vmxnet3_softc = type { i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32 }

@VMXNET3_TX_MAXSEGS = common dso_local global i8* null, align 8
@VMXNET3_TSO_MAXSIZE = common dso_local global i32 0, align 4
@VMXNET3_TX_MAXSEGSIZE = common dso_local global i32 0, align 4
@vmxnet3_txrx = common dso_local global i32 0, align 4
@VMXNET3_DEF_RX_QUEUES = common dso_local global i64 0, align 8
@VMXNET3_MAX_RX_QUEUES = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@VMXNET3_DEF_TX_QUEUES = common dso_local global i64 0, align 8
@VMXNET3_MAX_TX_QUEUES = common dso_local global i32 0, align 4
@UPT1_RSS_MAX_IND_TABLE_SIZE = common dso_local global i32 0, align 4
@VMXNET3_CMD_GET_INTRCFG = common dso_local global i32 0, align 4
@VMXNET3_CSUM_ALL_OFFLOAD = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_JUMBO_MTU = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vmxnet3_attach_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_attach_pre(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.vmxnet3_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @iflib_get_dev(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.vmxnet3_softc* @iflib_get_softc(i32 %11)
  store %struct.vmxnet3_softc* %12, %struct.vmxnet3_softc** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %15 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %18 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @iflib_get_sctx(i32 %19)
  %21 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.TYPE_3__* @iflib_get_softc_ctx(i32 %23)
  %25 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %25, i32 0, i32 2
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @iflib_get_ifp(i32 %27)
  %29 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %30 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @iflib_get_media(i32 %31)
  %33 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %34 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %36 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %5, align 8
  %38 = load i8*, i8** @VMXNET3_TX_MAXSEGS, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 18
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @VMXNET3_TX_MAXSEGS, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 17
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @VMXNET3_TSO_MAXSIZE, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 16
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @VMXNET3_TX_MAXSEGSIZE, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 15
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 14
  store i32* @vmxnet3_txrx, i32** %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %1
  %57 = load i64, i64* @VMXNET3_DEF_RX_QUEUES, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %1
  %61 = load i32, i32* @VMXNET3_MAX_RX_QUEUES, align 4
  %62 = load i32, i32* @mp_ncpus, align 4
  %63 = call i8* @min(i32 %61, i32 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 13
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load i64, i64* @VMXNET3_DEF_TX_QUEUES, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %60
  %75 = load i32, i32* @VMXNET3_MAX_TX_QUEUES, align 4
  %76 = load i32, i32* @mp_ncpus, align 4
  %77 = call i8* @min(i32 %75, i32 %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 12
  store i8* %77, i8** %79, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %84, i32* %88, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 4, %94
  %96 = trunc i64 %95 to i32
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %96, i32* %100, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 4, %106
  %108 = trunc i64 %107 to i32
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %108, i32* %112, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  store i32 %117, i32* %121, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %126, %131
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 4
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %132, i32* %136, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 4, %142
  %144 = trunc i64 %143 to i32
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 %144, i32* %148, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 4, %154
  %156 = trunc i64 %155 to i32
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 %156, i32* %160, align 4
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 2
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = mul i64 4, %166
  %168 = trunc i64 %167 to i32
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 5
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  store i32 %168, i32* %172, align 4
  %173 = load i32, i32* @UPT1_RSS_MAX_IND_TABLE_SIZE, align 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 11
  store i32 %173, i32* %175, align 4
  %176 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %177 = call i32 @vmxnet3_alloc_resources(%struct.vmxnet3_softc* %176)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %74
  br label %254

181:                                              ; preds = %74
  %182 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %183 = call i32 @vmxnet3_check_version(%struct.vmxnet3_softc* %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %254

187:                                              ; preds = %181
  %188 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %189 = load i32, i32* @VMXNET3_CMD_GET_INTRCFG, align 4
  %190 = call i32 @vmxnet3_read_cmd(%struct.vmxnet3_softc* %188, i32 %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = ashr i32 %191, 2
  %193 = and i32 %192, 3
  %194 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %195 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load i32, i32* %7, align 4
  %197 = and i32 %196, 3
  switch i32 %197, label %211 [
    i32 131, label %198
    i32 128, label %198
    i32 129, label %203
    i32 130, label %208
  ]

198:                                              ; preds = %187, %187
  %199 = load i32, i32* %4, align 4
  %200 = call i32 @pci_msix_table_bar(i32 %199)
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 6
  store i32 %200, i32* %202, align 8
  br label %211

203:                                              ; preds = %187
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 6
  store i32 -1, i32* %205, align 8
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 7
  store i32 1, i32* %207, align 4
  br label %211

208:                                              ; preds = %187
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 6
  store i32 0, i32* %210, align 8
  br label %211

211:                                              ; preds = %187, %208, %203, %198
  %212 = load i32, i32* @VMXNET3_CSUM_ALL_OFFLOAD, align 4
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 10
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* @IFCAP_TXCSUM, align 4
  %216 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @IFCAP_TSO4, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @IFCAP_TSO6, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @IFCAP_RXCSUM, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @IFCAP_JUMBO_MTU, align 4
  %235 = or i32 %233, %234
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 9
  store i32 %235, i32* %237, align 4
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 8
  store i32 %235, i32* %239, align 8
  %240 = load i32, i32* @IFCAP_LRO, align 4
  %241 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %242 = or i32 %240, %241
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 8
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  %247 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %248 = call i32 @vmxnet3_get_lladdr(%struct.vmxnet3_softc* %247)
  %249 = load i32, i32* %3, align 4
  %250 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %251 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @iflib_set_mac(i32 %249, i32 %252)
  store i32 0, i32* %2, align 4
  br label %258

254:                                              ; preds = %186, %180
  %255 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %256 = call i32 @vmxnet3_free_resources(%struct.vmxnet3_softc* %255)
  %257 = load i32, i32* %8, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %254, %211
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local %struct.vmxnet3_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_sctx(i32) #1

declare dso_local %struct.TYPE_3__* @iflib_get_softc_ctx(i32) #1

declare dso_local i32 @iflib_get_ifp(i32) #1

declare dso_local i32 @iflib_get_media(i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @vmxnet3_alloc_resources(%struct.vmxnet3_softc*) #1

declare dso_local i32 @vmxnet3_check_version(%struct.vmxnet3_softc*) #1

declare dso_local i32 @vmxnet3_read_cmd(%struct.vmxnet3_softc*, i32) #1

declare dso_local i32 @pci_msix_table_bar(i32) #1

declare dso_local i32 @vmxnet3_get_lladdr(%struct.vmxnet3_softc*) #1

declare dso_local i32 @iflib_set_mac(i32, i32) #1

declare dso_local i32 @vmxnet3_free_resources(%struct.vmxnet3_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
