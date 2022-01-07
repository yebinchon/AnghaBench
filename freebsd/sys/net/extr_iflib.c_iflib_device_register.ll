; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_device_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_45__ = type { i32 }
%struct.TYPE_48__ = type { i32, %struct.TYPE_44__* }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_49__ = type { i32, %struct.TYPE_49__*, i32, i32, i32, %struct.TYPE_43__, i32, i32, i32, i32, i32, %struct.TYPE_47__, %struct.TYPE_48__* }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_47__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32*, i32, i32* }
%struct.TYPE_46__ = type { %struct.TYPE_42__* }
%struct.TYPE_42__ = type { i32 }

@M_IFLIB = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IFC_SC_ALLOCATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"iflib_register failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"IFDI_ATTACH_PRE failed %d\0A\00", align 1
@IFLIB_DRIVER_MEDIA = common dso_local global i32 0, align 4
@IFCAP_HWSTATS = common dso_local global i32 0, align 4
@IFCAP_NOMAP = common dso_local global i32 0, align 4
@IFLIB_HAS_TXCQ = common dso_local global i32 0, align 4
@IFLIB_HAS_RXCQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Using %d TX descriptors and %d RX descriptors\0A\00", align 1
@MAX_SINGLE_PACKET_FRACTION = common dso_local global i32 0, align 4
@IFCAP_TSO = common dso_local global i32 0, align 4
@IP_MAXPACKET = common dso_local global i32 0, align 4
@_task_fn_admin = common dso_local global i32 0, align 4
@qgroup_if_config_tqg = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@INTR_CPUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Unable to fetch CPU list\0A\00", align 1
@all_cpus = common dso_local global i32 0, align 4
@IFLIB_SKIP_MSIX = common dso_local global i32 0, align 4
@IFLIB_INTR_LEGACY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"Unable to allocate queue memory\0A\00", align 1
@ifdi_rx_queue_intr_enable_desc = common dso_local global %struct.TYPE_45__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"MSI-X requires ifdi_rx_queue_intr_enable method\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ifdi_tx_queue_intr_enable_desc = common dso_local global %struct.TYPE_45__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"MSI-X requires ifdi_tx_queue_intr_enable method\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"IFDI_MSIX_INTR_ASSIGN failed %d\0A\00", align 1
@IFLIB_INTR_MSIX = common dso_local global i64 0, align 8
@IFLIB_INTR_MSI = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"irq0\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"iflib_legacy_setup failed %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Cannot use iflib with only 1 MSI-X interrupt!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"IFDI_ATTACH_POST failed %d\0A\00", align 1
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"netmap attach failed: %d\0A\00", align 1
@iflib = common dso_local global i32 0, align 4
@iflib_if_get_counter = common dso_local global i32 0, align 4
@IFC_INIT_DONE = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iflib_device_register(i32 %0, i8* %1, %struct.TYPE_48__* %2, %struct.TYPE_49__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_48__*, align 8
  %9 = alloca %struct.TYPE_49__**, align 8
  %10 = alloca %struct.TYPE_49__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_47__*, align 8
  %13 = alloca %struct.TYPE_45__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_48__* %2, %struct.TYPE_48__** %8, align 8
  store %struct.TYPE_49__** %3, %struct.TYPE_49__*** %9, align 8
  %20 = load i32, i32* @M_IFLIB, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @malloc(i32 176, i32 %20, i32 %23)
  %25 = bitcast i8* %24 to %struct.TYPE_49__*
  store %struct.TYPE_49__* %25, %struct.TYPE_49__** %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %4
  %29 = load %struct.TYPE_48__*, %struct.TYPE_48__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_44__*, %struct.TYPE_44__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @M_IFLIB, align 4
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = load i32, i32* @M_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = call i8* @malloc(i32 %33, i32 %34, i32 %37)
  store i8* %38, i8** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %41 = call i32 @device_set_softc(i32 %39, %struct.TYPE_49__* %40)
  %42 = load i32, i32* @IFC_SC_ALLOCATED, align 4
  %43 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %28, %4
  %48 = load %struct.TYPE_48__*, %struct.TYPE_48__** %8, align 8
  %49 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %49, i32 0, i32 12
  store %struct.TYPE_48__* %48, %struct.TYPE_48__** %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = bitcast i8* %54 to %struct.TYPE_49__*
  %56 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %56, i32 0, i32 1
  store %struct.TYPE_49__* %55, %struct.TYPE_49__** %57, align 8
  %58 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %59 = call i32 @iflib_register(%struct.TYPE_49__* %58)
  store i32 %59, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %47
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %539

65:                                               ; preds = %47
  %66 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %67 = call i32 @iflib_add_device_sysctl_pre(%struct.TYPE_49__* %66)
  %68 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %68, i32 0, i32 11
  store %struct.TYPE_47__* %69, %struct.TYPE_47__** %12, align 8
  %70 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %11, align 4
  %73 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %74 = call i32 @iflib_reset_qvalues(%struct.TYPE_49__* %73)
  %75 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %76 = call i32 @CTX_LOCK(%struct.TYPE_49__* %75)
  %77 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %78 = call i32 @IFDI_ATTACH_PRE(%struct.TYPE_49__* %77)
  store i32 %78, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %65
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %534

84:                                               ; preds = %65
  %85 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %86 = call i32 @_iflib_pre_assert(%struct.TYPE_47__* %85)
  %87 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %87, i32 0, i32 19
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %91, i32 0, i32 10
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_48__*, %struct.TYPE_48__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IFLIB_DRIVER_MEDIA, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %84
  %100 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %100, i32 0, i32 18
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %103, i32 0, i32 9
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %84
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @IFCAP_HWSTATS, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @IFCAP_NOMAP, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @if_setcapabilities(i32 %106, i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @IFCAP_HWSTATS, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @IFCAP_NOMAP, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @if_setcapenable(i32 %115, i32 %122)
  %124 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %141, label %128

128:                                              ; preds = %105
  %129 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %128
  %134 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %133, %105
  %142 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %133, %128
  %148 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %165, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %152
  %158 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %157, %147
  %166 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %165, %157, %152
  %172 = load %struct.TYPE_48__*, %struct.TYPE_48__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @IFLIB_HAS_TXCQ, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 1, i32 0
  %180 = sext i32 %179 to i64
  store i64 %180, i64* %19, align 8
  %181 = load %struct.TYPE_48__*, %struct.TYPE_48__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @IFLIB_HAS_RXCQ, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 1, i32 0
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %18, align 8
  %190 = load i32, i32* %6, align 4
  %191 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %191, i32 0, i32 7
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* %19, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %197, i32 0, i32 17
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* %18, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i32, i8*, ...) @device_printf(i32 %190, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %196, i32 %202)
  %204 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %204, i32 0, i32 8
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %207, i32 0, i32 7
  %209 = load i32*, i32** %208, align 8
  %210 = load i64, i64* %19, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @MAX_SINGLE_PACKET_FRACTION, align 4
  %214 = sdiv i32 %212, %213
  %215 = icmp sgt i32 %206, %214
  br i1 %215, label %216, label %229

216:                                              ; preds = %171
  %217 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %217, i32 0, i32 7
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* %19, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @MAX_SINGLE_PACKET_FRACTION, align 4
  %224 = sdiv i32 %222, %223
  %225 = call i8* @max(i32 1, i32 %224)
  %226 = ptrtoint i8* %225 to i32
  %227 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %227, i32 0, i32 8
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %216, %171
  %230 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %230, i32 0, i32 9
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %233, i32 0, i32 7
  %235 = load i32*, i32** %234, align 8
  %236 = load i64, i64* %19, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @MAX_SINGLE_PACKET_FRACTION, align 4
  %240 = sdiv i32 %238, %239
  %241 = icmp sgt i32 %232, %240
  br i1 %241, label %242, label %255

242:                                              ; preds = %229
  %243 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %243, i32 0, i32 7
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* %19, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @MAX_SINGLE_PACKET_FRACTION, align 4
  %250 = sdiv i32 %248, %249
  %251 = call i8* @max(i32 1, i32 %250)
  %252 = ptrtoint i8* %251 to i32
  %253 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %253, i32 0, i32 9
  store i32 %252, i32* %254, align 4
  br label %255

255:                                              ; preds = %242, %229
  %256 = load i32, i32* %11, align 4
  %257 = call i32 @if_getcapabilities(i32 %256)
  %258 = load i32, i32* @IFCAP_TSO, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %280

261:                                              ; preds = %255
  %262 = load i32, i32* %11, align 4
  %263 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %263, i32 0, i32 16
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @IP_MAXPACKET, align 4
  %267 = call i32 @min(i32 %265, i32 %266)
  %268 = call i32 @if_sethwtsomax(i32 %262, i32 %267)
  %269 = load i32, i32* %11, align 4
  %270 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %270, i32 0, i32 9
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 %272, 3
  %274 = call i32 @if_sethwtsomaxsegcount(i32 %269, i32 %273)
  %275 = load i32, i32* %11, align 4
  %276 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %276, i32 0, i32 15
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @if_sethwtsomaxsegsize(i32 %275, i32 %278)
  br label %280

280:                                              ; preds = %261, %255
  %281 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %281, i32 0, i32 10
  %283 = load i32, i32* %282, align 8
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %286, i32 0, i32 10
  store i32 64, i32* %287, align 8
  br label %288

288:                                              ; preds = %285, %280
  %289 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %289, i32 0, i32 10
  %291 = load i32, i32* %290, align 8
  %292 = sub nsw i32 %291, 1
  %293 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %294 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %293, i32 0, i32 11
  store i32 %292, i32* %294, align 4
  %295 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %295, i32 0, i32 3
  %297 = load i32, i32* @_task_fn_admin, align 4
  %298 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %299 = call i32 @GROUPTASK_INIT(i32* %296, i32 0, i32 %297, %struct.TYPE_49__* %298)
  %300 = load i32, i32* @qgroup_if_config_tqg, align 4
  %301 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %301, i32 0, i32 3
  %303 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %304 = call i32 @taskqgroup_attach(i32 %300, i32* %302, %struct.TYPE_49__* %303, i32* null, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %305 = load i32, i32* %6, align 4
  %306 = load i32, i32* @INTR_CPUS, align 4
  %307 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %307, i32 0, i32 8
  %309 = call i64 @bus_get_cpus(i32 %305, i32 %306, i32 4, i32* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %288
  %312 = load i32, i32* %6, align 4
  %313 = call i32 (i32, i8*, ...) @device_printf(i32 %312, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %314 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %314, i32 0, i32 8
  %316 = call i32 @CPU_COPY(i32* @all_cpus, i32* %315)
  br label %317

317:                                              ; preds = %311, %288
  %318 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %318, i32 0, i32 8
  %320 = call i64 @CPU_COUNT(i32* %319)
  %321 = icmp sgt i64 %320, 0
  %322 = zext i1 %321 to i32
  %323 = call i32 @MPASS(i32 %322)
  %324 = load %struct.TYPE_48__*, %struct.TYPE_48__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @IFLIB_SKIP_MSIX, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %317
  %331 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %332 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %331, i32 0, i32 12
  %333 = load i32, i32* %332, align 8
  store i32 %333, i32* %16, align 4
  br label %353

334:                                              ; preds = %317
  %335 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %336 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %335, i32 0, i32 13
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %334
  %340 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %341 = call i32 @iflib_msix_init(%struct.TYPE_49__* %340)
  store i32 %341, i32* %16, align 4
  br label %352

342:                                              ; preds = %334
  %343 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %344 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %343, i32 0, i32 12
  store i32 1, i32* %344, align 8
  %345 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %346 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %345, i32 0, i32 3
  store i32 1, i32* %346, align 4
  %347 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %348 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %347, i32 0, i32 5
  store i32 1, i32* %348, align 4
  %349 = load i64, i64* @IFLIB_INTR_LEGACY, align 8
  %350 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %351 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %350, i32 0, i32 14
  store i64 %349, i64* %351, align 8
  store i32 0, i32* %16, align 4
  br label %352

352:                                              ; preds = %342, %339
  br label %353

353:                                              ; preds = %352, %330
  %354 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %355 = call i32 @iflib_queues_alloc(%struct.TYPE_49__* %354)
  store i32 %355, i32* %15, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %353
  %358 = load i32, i32* %6, align 4
  %359 = call i32 (i32, i8*, ...) @device_printf(i32 %358, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %520

360:                                              ; preds = %353
  %361 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %362 = call i32 @iflib_qset_structures_setup(%struct.TYPE_49__* %361)
  store i32 %362, i32* %15, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %360
  br label %523

365:                                              ; preds = %360
  %366 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %367 = call i32 @get_ctx_core_offset(%struct.TYPE_49__* %366)
  %368 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %369 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %368, i32 0, i32 7
  store i32 %367, i32* %369, align 4
  %370 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %371 = call i32 @IFDI_INTR_DISABLE(%struct.TYPE_49__* %370)
  %372 = load i32, i32* %16, align 4
  %373 = icmp sgt i32 %372, 1
  br i1 %373, label %374, label %419

374:                                              ; preds = %365
  store %struct.TYPE_45__* @ifdi_rx_queue_intr_enable_desc, %struct.TYPE_45__** %13, align 8
  %375 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %376 = bitcast %struct.TYPE_49__* %375 to %struct.TYPE_46__*
  %377 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_42__*, %struct.TYPE_42__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %382 = call i32* @kobj_lookup_method(i32 %380, i32* null, %struct.TYPE_45__* %381)
  store i32* %382, i32** %14, align 8
  %383 = load i32*, i32** %14, align 8
  %384 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %385 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %384, i32 0, i32 0
  %386 = icmp eq i32* %383, %385
  br i1 %386, label %387, label %391

387:                                              ; preds = %374
  %388 = load i32, i32* %6, align 4
  %389 = call i32 (i32, i8*, ...) @device_printf(i32 %388, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %390 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %390, i32* %15, align 4
  br label %523

391:                                              ; preds = %374
  store %struct.TYPE_45__* @ifdi_tx_queue_intr_enable_desc, %struct.TYPE_45__** %13, align 8
  %392 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %393 = bitcast %struct.TYPE_49__* %392 to %struct.TYPE_46__*
  %394 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %393, i32 0, i32 0
  %395 = load %struct.TYPE_42__*, %struct.TYPE_42__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %399 = call i32* @kobj_lookup_method(i32 %397, i32* null, %struct.TYPE_45__* %398)
  store i32* %399, i32** %14, align 8
  %400 = load i32*, i32** %14, align 8
  %401 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %402 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %401, i32 0, i32 0
  %403 = icmp eq i32* %400, %402
  br i1 %403, label %404, label %408

404:                                              ; preds = %391
  %405 = load i32, i32* %6, align 4
  %406 = call i32 (i32, i8*, ...) @device_printf(i32 %405, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %407 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %407, i32* %15, align 4
  br label %523

408:                                              ; preds = %391
  %409 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %410 = load i32, i32* %16, align 4
  %411 = call i32 @IFDI_MSIX_INTR_ASSIGN(%struct.TYPE_49__* %409, i32 %410)
  store i32 %411, i32* %15, align 4
  %412 = load i32, i32* %15, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %408
  %415 = load i32, i32* %6, align 4
  %416 = load i32, i32* %15, align 4
  %417 = call i32 (i32, i8*, ...) @device_printf(i32 %415, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %416)
  br label %523

418:                                              ; preds = %408
  br label %456

419:                                              ; preds = %365
  %420 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %421 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %420, i32 0, i32 14
  %422 = load i64, i64* %421, align 8
  %423 = load i64, i64* @IFLIB_INTR_MSIX, align 8
  %424 = icmp ne i64 %422, %423
  br i1 %424, label %425, label %451

425:                                              ; preds = %419
  store i32 0, i32* %17, align 4
  %426 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %427 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %426, i32 0, i32 14
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* @IFLIB_INTR_MSI, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %436

431:                                              ; preds = %425
  %432 = load i32, i32* %16, align 4
  %433 = icmp eq i32 %432, 1
  %434 = zext i1 %433 to i32
  %435 = call i32 @MPASS(i32 %434)
  store i32 1, i32* %17, align 4
  br label %436

436:                                              ; preds = %431, %425
  %437 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %438 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %439 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %438, i32 0, i32 6
  %440 = load i32, i32* %439, align 8
  %441 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %442 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %441, i32 0, i32 1
  %443 = load %struct.TYPE_49__*, %struct.TYPE_49__** %442, align 8
  %444 = call i32 @iflib_legacy_setup(%struct.TYPE_49__* %437, i32 %440, %struct.TYPE_49__* %443, i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i32 %444, i32* %15, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %450

446:                                              ; preds = %436
  %447 = load i32, i32* %6, align 4
  %448 = load i32, i32* %15, align 4
  %449 = call i32 (i32, i8*, ...) @device_printf(i32 %447, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %448)
  br label %523

450:                                              ; preds = %436
  br label %455

451:                                              ; preds = %419
  %452 = load i32, i32* %6, align 4
  %453 = call i32 (i32, i8*, ...) @device_printf(i32 %452, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  %454 = load i32, i32* @ENODEV, align 4
  store i32 %454, i32* %15, align 4
  br label %520

455:                                              ; preds = %450
  br label %456

456:                                              ; preds = %455, %418
  %457 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %458 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %457, i32 0, i32 4
  %459 = load i32, i32* %458, align 8
  %460 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %461 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %460, i32 0, i32 5
  %462 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = call i32 @ether_ifattach(i32 %459, i32 %463)
  %465 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %466 = call i32 @IFDI_ATTACH_POST(%struct.TYPE_49__* %465)
  store i32 %466, i32* %15, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %472

468:                                              ; preds = %456
  %469 = load i32, i32* %6, align 4
  %470 = load i32, i32* %15, align 4
  %471 = call i32 (i32, i8*, ...) @device_printf(i32 %469, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %470)
  br label %515

472:                                              ; preds = %456
  %473 = load i32, i32* %11, align 4
  %474 = call i32 @if_getcapabilities(i32 %473)
  %475 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %476 = and i32 %474, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %481

478:                                              ; preds = %472
  %479 = load i32, i32* %11, align 4
  %480 = call i32 @if_setifheaderlen(i32 %479, i32 4)
  br label %481

481:                                              ; preds = %478, %472
  %482 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %483 = call i32 @iflib_netmap_attach(%struct.TYPE_49__* %482)
  store i32 %483, i32* %15, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %491

485:                                              ; preds = %481
  %486 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %487 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 8
  %489 = load i32, i32* %15, align 4
  %490 = call i32 (i32, i8*, ...) @device_printf(i32 %488, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %489)
  br label %515

491:                                              ; preds = %481
  %492 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %493 = load %struct.TYPE_49__**, %struct.TYPE_49__*** %9, align 8
  store %struct.TYPE_49__* %492, %struct.TYPE_49__** %493, align 8
  %494 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %495 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %494, i32 0, i32 4
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* @iflib, align 4
  %498 = call i32 @DEBUGNET_SET(i32 %496, i32 %497)
  %499 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %500 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %499, i32 0, i32 4
  %501 = load i32, i32* %500, align 8
  %502 = load i32, i32* @iflib_if_get_counter, align 4
  %503 = call i32 @if_setgetcounterfn(i32 %501, i32 %502)
  %504 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %505 = call i32 @iflib_add_device_sysctl_post(%struct.TYPE_49__* %504)
  %506 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %507 = call i32 @iflib_add_pfil(%struct.TYPE_49__* %506)
  %508 = load i32, i32* @IFC_INIT_DONE, align 4
  %509 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %510 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = or i32 %511, %508
  store i32 %512, i32* %510, align 8
  %513 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %514 = call i32 @CTX_UNLOCK(%struct.TYPE_49__* %513)
  store i32 0, i32* %5, align 4
  br label %561

515:                                              ; preds = %485, %468
  %516 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %517 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %516, i32 0, i32 4
  %518 = load i32, i32* %517, align 8
  %519 = call i32 @ether_ifdetach(i32 %518)
  br label %520

520:                                              ; preds = %515, %451, %357
  %521 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %522 = call i32 @iflib_free_intr_mem(%struct.TYPE_49__* %521)
  br label %523

523:                                              ; preds = %520, %446, %414, %404, %387, %364
  %524 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %525 = call i32 @iflib_tx_structures_free(%struct.TYPE_49__* %524)
  %526 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %527 = call i32 @iflib_rx_structures_free(%struct.TYPE_49__* %526)
  %528 = load i32, i32* @qgroup_if_config_tqg, align 4
  %529 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %530 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %529, i32 0, i32 3
  %531 = call i32 @taskqgroup_detach(i32 %528, i32* %530)
  %532 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %533 = call i32 @IFDI_DETACH(%struct.TYPE_49__* %532)
  br label %534

534:                                              ; preds = %523, %80
  %535 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %536 = call i32 @CTX_UNLOCK(%struct.TYPE_49__* %535)
  %537 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %538 = call i32 @iflib_deregister(%struct.TYPE_49__* %537)
  br label %539

539:                                              ; preds = %534, %61
  %540 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %541 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %540, i32 0, i32 2
  %542 = load i32, i32* %541, align 8
  %543 = call i32 @device_set_softc(i32 %542, %struct.TYPE_49__* null)
  %544 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %545 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = load i32, i32* @IFC_SC_ALLOCATED, align 4
  %548 = and i32 %546, %547
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %556

550:                                              ; preds = %539
  %551 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %552 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %551, i32 0, i32 1
  %553 = load %struct.TYPE_49__*, %struct.TYPE_49__** %552, align 8
  %554 = load i32, i32* @M_IFLIB, align 4
  %555 = call i32 @free(%struct.TYPE_49__* %553, i32 %554)
  br label %556

556:                                              ; preds = %550, %539
  %557 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %558 = load i32, i32* @M_IFLIB, align 4
  %559 = call i32 @free(%struct.TYPE_49__* %557, i32 %558)
  %560 = load i32, i32* %15, align 4
  store i32 %560, i32* %5, align 4
  br label %561

561:                                              ; preds = %556, %491
  %562 = load i32, i32* %5, align 4
  ret i32 %562
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_set_softc(i32, %struct.TYPE_49__*) #1

declare dso_local i32 @iflib_register(%struct.TYPE_49__*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @iflib_add_device_sysctl_pre(%struct.TYPE_49__*) #1

declare dso_local i32 @iflib_reset_qvalues(%struct.TYPE_49__*) #1

declare dso_local i32 @CTX_LOCK(%struct.TYPE_49__*) #1

declare dso_local i32 @IFDI_ATTACH_PRE(%struct.TYPE_49__*) #1

declare dso_local i32 @_iflib_pre_assert(%struct.TYPE_47__*) #1

declare dso_local i32 @if_setcapabilities(i32, i32) #1

declare dso_local i32 @if_setcapenable(i32, i32) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @if_getcapabilities(i32) #1

declare dso_local i32 @if_sethwtsomax(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @if_sethwtsomaxsegcount(i32, i32) #1

declare dso_local i32 @if_sethwtsomaxsegsize(i32, i32) #1

declare dso_local i32 @GROUPTASK_INIT(i32*, i32, i32, %struct.TYPE_49__*) #1

declare dso_local i32 @taskqgroup_attach(i32, i32*, %struct.TYPE_49__*, i32*, i32*, i8*) #1

declare dso_local i64 @bus_get_cpus(i32, i32, i32, i32*) #1

declare dso_local i32 @CPU_COPY(i32*, i32*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @CPU_COUNT(i32*) #1

declare dso_local i32 @iflib_msix_init(%struct.TYPE_49__*) #1

declare dso_local i32 @iflib_queues_alloc(%struct.TYPE_49__*) #1

declare dso_local i32 @iflib_qset_structures_setup(%struct.TYPE_49__*) #1

declare dso_local i32 @get_ctx_core_offset(%struct.TYPE_49__*) #1

declare dso_local i32 @IFDI_INTR_DISABLE(%struct.TYPE_49__*) #1

declare dso_local i32* @kobj_lookup_method(i32, i32*, %struct.TYPE_45__*) #1

declare dso_local i32 @IFDI_MSIX_INTR_ASSIGN(%struct.TYPE_49__*, i32) #1

declare dso_local i32 @iflib_legacy_setup(%struct.TYPE_49__*, i32, %struct.TYPE_49__*, i32*, i8*) #1

declare dso_local i32 @ether_ifattach(i32, i32) #1

declare dso_local i32 @IFDI_ATTACH_POST(%struct.TYPE_49__*) #1

declare dso_local i32 @if_setifheaderlen(i32, i32) #1

declare dso_local i32 @iflib_netmap_attach(%struct.TYPE_49__*) #1

declare dso_local i32 @DEBUGNET_SET(i32, i32) #1

declare dso_local i32 @if_setgetcounterfn(i32, i32) #1

declare dso_local i32 @iflib_add_device_sysctl_post(%struct.TYPE_49__*) #1

declare dso_local i32 @iflib_add_pfil(%struct.TYPE_49__*) #1

declare dso_local i32 @CTX_UNLOCK(%struct.TYPE_49__*) #1

declare dso_local i32 @ether_ifdetach(i32) #1

declare dso_local i32 @iflib_free_intr_mem(%struct.TYPE_49__*) #1

declare dso_local i32 @iflib_tx_structures_free(%struct.TYPE_49__*) #1

declare dso_local i32 @iflib_rx_structures_free(%struct.TYPE_49__*) #1

declare dso_local i32 @taskqgroup_detach(i32, i32*) #1

declare dso_local i32 @IFDI_DETACH(%struct.TYPE_49__*) #1

declare dso_local i32 @iflib_deregister(%struct.TYPE_49__*) #1

declare dso_local i32 @free(%struct.TYPE_49__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
