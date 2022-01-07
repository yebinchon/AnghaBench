; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_attach_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_attach_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.ixgbe_hw, i32, %struct.TYPE_7__*, i32, i32 }
%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.adapter* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_7__ = type { i32, i32, i32*, i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i8**, i8** }

@.str = private unnamed_addr constant [18 x i8] c"ixv_attach: begin\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"ixv_allocate_pci_resources() failed!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@ixv_sysctl_debug = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Debug Info\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"ixgbe_init_ops_vf() failed!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"...reset_hw() failure: Reset Failed!\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"...reset_hw() failed with error %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"...init_hw() failed with error %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Mailbox API negotiation failed during attach!\0A\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@DBA_ALIGN = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@CSUM_IP6_TCP = common dso_local global i32 0, align 4
@CSUM_IP6_UDP = common dso_local global i32 0, align 4
@CSUM_IP6_TSO = common dso_local global i32 0, align 4
@IXGBE_82599_SCATTER = common dso_local global i32 0, align 4
@IXGBE_TSO_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ixgbe_txrx = common dso_local global i32 0, align 4
@IXGBE_CAPS = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"ixv_if_attach_pre: end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ixv_if_attach_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixv_if_attach_pre(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %8, align 4
  %11 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @iflib_get_dev(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.adapter* @iflib_get_softc(i32 %14)
  store %struct.adapter* %15, %struct.adapter** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.adapter*, %struct.adapter** %4, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = load %struct.adapter*, %struct.adapter** %4, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 1
  store %struct.adapter* %22, %struct.adapter** %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call %struct.TYPE_7__* @iflib_get_softc_ctx(i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 2
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %6, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @iflib_get_media(i32 %30)
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.adapter*, %struct.adapter** %4, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  store %struct.ixgbe_hw* %35, %struct.ixgbe_hw** %7, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @ixv_allocate_pci_resources(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %8, align 4
  br label %260

43:                                               ; preds = %1
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @device_get_sysctl_ctx(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @device_get_sysctl_tree(i32 %46)
  %48 = call i32 @SYSCTL_CHILDREN(i32 %47)
  %49 = load i32, i32* @OID_AUTO, align 4
  %50 = load i32, i32* @CTLTYPE_INT, align 4
  %51 = load i32, i32* @CTLFLAG_RW, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.adapter*, %struct.adapter** %4, align 8
  %54 = load i32, i32* @ixv_sysctl_debug, align 4
  %55 = call i32 @SYSCTL_ADD_PROC(i32 %45, i32 %48, i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %52, %struct.adapter* %53, i32 0, i32 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @ixv_identify_hardware(i32 %56)
  %58 = load %struct.adapter*, %struct.adapter** %4, align 8
  %59 = call i32 @ixv_init_device_features(%struct.adapter* %58)
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %61 = call i32 @ixgbe_init_ops_vf(%struct.ixgbe_hw* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %43
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i32, i32* @EIO, align 4
  store i32 %67, i32* %8, align 4
  br label %260

68:                                               ; preds = %43
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %70 = call i32 @ixgbe_init_mbx_params_vf(%struct.ixgbe_hw* %69)
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %74, align 8
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %77 = bitcast %struct.ixgbe_hw* %76 to %struct.ixgbe_hw.0*
  %78 = call i32 %75(%struct.ixgbe_hw.0* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @IXGBE_ERR_RESET_FAILED, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %68
  %83 = load i32, i32* %5, align 4
  %84 = call i32 (i32, i8*, ...) @device_printf(i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %93

85:                                               ; preds = %68
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %85
  br label %93

93:                                               ; preds = %92, %82
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* @EIO, align 4
  store i32 %97, i32* %8, align 4
  br label %260

98:                                               ; preds = %93
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %102, align 8
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %105 = bitcast %struct.ixgbe_hw* %104 to %struct.ixgbe_hw.1*
  %106 = call i32 %103(%struct.ixgbe_hw.1* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %98
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (i32, i8*, ...) @device_printf(i32 %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EIO, align 4
  store i32 %113, i32* %8, align 4
  br label %260

114:                                              ; preds = %98
  %115 = load %struct.adapter*, %struct.adapter** %4, align 8
  %116 = call i32 @ixv_negotiate_api(%struct.adapter* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* %5, align 4
  %121 = call i32 (i32, i8*, ...) @device_printf(i32 %120, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  br label %260

122:                                              ; preds = %114
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %124 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ixv_check_ether_addr(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %159, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %131 = zext i32 %130 to i64
  %132 = call i8* @llvm.stacksave()
  store i8* %132, i8** %9, align 8
  %133 = alloca i32, i64 %131, align 16
  store i64 %131, i64* %10, align 8
  %134 = bitcast i32* %133 to i32**
  %135 = mul nuw i64 4, %131
  %136 = trunc i64 %135 to i32
  %137 = call i32 @arc4rand(i32** %134, i32 %136, i32 0)
  %138 = getelementptr inbounds i32, i32* %133, i64 0
  %139 = load i32, i32* %138, align 16
  %140 = and i32 %139, 254
  store i32 %140, i32* %138, align 16
  %141 = getelementptr inbounds i32, i32* %133, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = or i32 %142, 2
  store i32 %143, i32* %141, align 16
  %144 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %145 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = mul nuw i64 4, %131
  %149 = trunc i64 %148 to i32
  %150 = call i32 @bcopy(i32* %133, i32 %147, i32 %149)
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %152 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = mul nuw i64 4, %131
  %156 = trunc i64 %155 to i32
  %157 = call i32 @bcopy(i32* %133, i32 %154, i32 %156)
  %158 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %158)
  br label %159

159:                                              ; preds = %129, %122
  %160 = load i32, i32* %3, align 4
  %161 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %162 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @iflib_set_mac(i32 %160, i32 %164)
  %166 = load %struct.adapter*, %struct.adapter** %4, align 8
  %167 = getelementptr inbounds %struct.adapter, %struct.adapter* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  switch i32 %170, label %176 [
    i32 128, label %171
    i32 129, label %171
    i32 130, label %171
  ]

171:                                              ; preds = %159, %159, %159
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  store i32 2, i32* %173, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  store i32 2, i32* %175, align 8
  br label %181

176:                                              ; preds = %159
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  store i32 1, i32* %178, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  store i32 1, i32* %180, align 8
  br label %181

181:                                              ; preds = %176, %171
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = mul i64 %187, 4
  %189 = add i64 %188, 4
  %190 = trunc i64 %189 to i32
  %191 = load i32, i32* @DBA_ALIGN, align 4
  %192 = call i8* @roundup2(i32 %190, i32 %191)
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 14
  %195 = load i8**, i8*** %194, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 0
  store i8* %192, i8** %196, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = mul i64 %202, 4
  %204 = trunc i64 %203 to i32
  %205 = load i32, i32* @DBA_ALIGN, align 4
  %206 = call i8* @roundup2(i32 %204, i32 %205)
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 13
  %209 = load i8**, i8*** %208, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i64 0
  store i8* %206, i8** %210, align 8
  %211 = load i32, i32* @CSUM_IP, align 4
  %212 = load i32, i32* @CSUM_TCP, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @CSUM_UDP, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @CSUM_TSO, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @CSUM_IP6_TCP, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @CSUM_IP6_UDP, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @CSUM_IP6_TSO, align 4
  %223 = or i32 %221, %222
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 4
  store i32 %223, i32* %225, align 8
  %226 = load i32, i32* @IXGBE_82599_SCATTER, align 4
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 10
  store i32 %226, i32* %228, align 8
  %229 = load i32, i32* %5, align 4
  %230 = call i32 @pci_msix_table_bar(i32 %229)
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 12
  store i32 %230, i32* %232, align 8
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 10
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 11
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* @IXGBE_TSO_SIZE, align 4
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 9
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* @PAGE_SIZE, align 4
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 8
  store i32 %241, i32* %243, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 7
  store i32* @ixgbe_txrx, i32** %245, align 8
  %246 = load i32, i32* @IXGBE_CAPS, align 4
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 5
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* @IFCAP_WOL, align 4
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 4
  %253 = xor i32 %252, %249
  store i32 %253, i32* %251, align 4
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 6
  store i32 %256, i32* %258, align 8
  %259 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %264

260:                                              ; preds = %119, %109, %96, %64, %39
  %261 = load i32, i32* %3, align 4
  %262 = call i32 @ixv_free_pci_resources(i32 %261)
  %263 = load i32, i32* %8, align 4
  store i32 %263, i32* %2, align 4
  br label %264

264:                                              ; preds = %260, %181
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.TYPE_7__* @iflib_get_softc_ctx(i32) #1

declare dso_local i32 @iflib_get_media(i32) #1

declare dso_local i64 @ixv_allocate_pci_resources(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, %struct.adapter*, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @ixv_identify_hardware(i32) #1

declare dso_local i32 @ixv_init_device_features(%struct.adapter*) #1

declare dso_local i32 @ixgbe_init_ops_vf(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_init_mbx_params_vf(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixv_negotiate_api(%struct.adapter*) #1

declare dso_local i32 @ixv_check_ether_addr(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @arc4rand(i32**, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @iflib_set_mac(i32, i32) #1

declare dso_local i8* @roundup2(i32, i32) #1

declare dso_local i32 @pci_msix_table_bar(i32) #1

declare dso_local i32 @ixv_free_pci_resources(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
