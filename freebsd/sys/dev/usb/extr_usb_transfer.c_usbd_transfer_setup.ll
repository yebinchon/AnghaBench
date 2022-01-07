; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i32 }
%struct.usb_config = type { i64, i64, i64, i64, %struct.TYPE_24__, i32* }
%struct.TYPE_24__ = type { i64 }
%struct.usb_device = type { %struct.TYPE_18__*, %struct.TYPE_27__, i32, %struct.TYPE_25__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32 (%struct.usb_xfer*)* }
%struct.usb_xfer = type { i64, i32, i64, i32*, i64, i8*, i8*, i8*, i8*, i8*, i64, %struct.usb_endpoint*, %struct.usb_xfer*, i32*, i32, %struct.usb_xfer_root*, i8*, i32, %struct.usb_config*, i8*, %struct.usb_device* }
%struct.usb_endpoint = type { i64, i64, i32* }
%struct.usb_xfer_root = type { i32, i64, %struct.TYPE_18__*, i32, %struct.TYPE_23__*, %struct.TYPE_21__, %struct.TYPE_20__, %struct.usb_device*, i32, %struct.mtx*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_23__ = type { %struct.usb_xfer_root*, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i32*, i32 }
%struct.TYPE_20__ = type { i32*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.usb_xfer, %struct.usb_xfer }
%struct.TYPE_25__ = type { i64 }
%struct.usb_setup_params = type { i64, i32, i64, i32*, i64, i8*, i8*, i8*, i8*, i8*, i64, %struct.usb_endpoint*, %struct.usb_setup_params*, i32*, i32, %struct.usb_xfer_root*, i8*, i32, %struct.usb_config*, i8*, %struct.usb_device* }

@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"usbd_transfer_setup can sleep!\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"setup array has zero length!\0A\00", align 1
@USB_ERR_INVAL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"ifaces array is NULL!\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"using global lock\0A\00", align 1
@Giant = common dso_local global %struct.mtx zeroinitializer, align 4
@USB_ERR_BAD_BUFSIZE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"invalid bufsize\0A\00", align 1
@USB_ERR_NO_CALLBACK = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"no callback\0A\00", align 1
@USB_SPEED_MAX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"WDRAIN\00", align 1
@usbd_callback_wrapper = common dso_local global i32 0, align 4
@usb_callback_proc = common dso_local global i32 0, align 4
@usb_control_ep_cfg = common dso_local global %struct.usb_config* null, align 8
@usb_control_ep_quirk_cfg = common dso_local global %struct.usb_config* null, align 8
@USB_EP_MODE_STREAMS = common dso_local global i64 0, align 8
@USB_EP_MODE_DEFAULT = common dso_local global i64 0, align 8
@USB_MAX_EP_STREAMS = common dso_local global i64 0, align 8
@USB_MODE_DUAL = common dso_local global i64 0, align 8
@USB_ERR_NO_PIPE = common dso_local global i64 0, align 8
@USB_HOST_ALIGN = common dso_local global i32 0, align 4
@USB_EP_REF_MAX = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [49 x i8] c"usbd_transfer_setup(): Refcount wrapped to zero\0A\00", align 1
@USB_EP_MAX = common dso_local global i32 0, align 4
@M_USB = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@USB_ERR_NOMEM = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [59 x i8] c"cannot allocate memory block for configuration (%d bytes)\0A\00", align 1
@usb_bdma_done_event = common dso_local global i32 0, align 4
@usb_bdma_work_loop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @usbd_transfer_setup(%struct.usb_device* %0, i64* %1, %struct.usb_xfer** %2, %struct.usb_config* %3, i32 %4, i8* %5, %struct.mtx* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.usb_xfer**, align 8
  %12 = alloca %struct.usb_config*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.mtx*, align 8
  %16 = alloca %struct.usb_config*, align 8
  %17 = alloca %struct.usb_config*, align 8
  %18 = alloca %struct.usb_setup_params*, align 8
  %19 = alloca %struct.usb_endpoint*, align 8
  %20 = alloca %struct.usb_xfer_root*, align 8
  %21 = alloca %struct.usb_xfer*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %9, align 8
  store i64* %1, i64** %10, align 8
  store %struct.usb_xfer** %2, %struct.usb_xfer*** %11, align 8
  store %struct.usb_config* %3, %struct.usb_config** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store %struct.mtx* %6, %struct.mtx** %15, align 8
  %27 = load %struct.usb_config*, %struct.usb_config** %12, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %27, i64 %29
  store %struct.usb_config* %30, %struct.usb_config** %16, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  %31 = load i32, i32* @WARN_GIANTOK, align 4
  %32 = load i32, i32* @WARN_SLEEPOK, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @WITNESS_WARN(i32 %33, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %7
  %38 = call i32 (i32, i8*, ...) @DPRINTFN(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** @USB_ERR_INVAL, align 8
  store i8* %39, i8** %8, align 8
  br label %853

40:                                               ; preds = %7
  %41 = load i64*, i64** %10, align 8
  %42 = icmp eq i64* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = call i32 (i32, i8*, ...) @DPRINTFN(i32 6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i8*, i8** @USB_ERR_INVAL, align 8
  store i8* %45, i8** %8, align 8
  br label %853

46:                                               ; preds = %40
  %47 = load %struct.mtx*, %struct.mtx** %15, align 8
  %48 = icmp eq %struct.mtx* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (i32, i8*, ...) @DPRINTFN(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store %struct.mtx* @Giant, %struct.mtx** %15, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = load %struct.usb_config*, %struct.usb_config** %12, align 8
  store %struct.usb_config* %52, %struct.usb_config** %17, align 8
  store i32 0, i32* %24, align 4
  br label %53

53:                                               ; preds = %78, %51
  %54 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %55 = load %struct.usb_config*, %struct.usb_config** %16, align 8
  %56 = icmp ne %struct.usb_config* %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %53
  %58 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %59 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** @USB_ERR_BAD_BUFSIZE, align 8
  store i8* %63, i8** %23, align 8
  %64 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %67 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i8*, i8** @USB_ERR_NO_CALLBACK, align 8
  store i8* %71, i8** %23, align 8
  %72 = call i32 @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.usb_xfer**, %struct.usb_xfer*** %11, align 8
  %75 = load i32, i32* %24, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %74, i64 %76
  store %struct.usb_xfer* null, %struct.usb_xfer** %77, align 8
  br label %78

78:                                               ; preds = %73
  %79 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %80 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %79, i32 1
  store %struct.usb_config* %80, %struct.usb_config** %17, align 8
  %81 = load i32, i32* %24, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %24, align 4
  br label %53

83:                                               ; preds = %53
  %84 = load i8*, i8** %23, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i8*, i8** %23, align 8
  store i8* %87, i8** %8, align 8
  br label %853

88:                                               ; preds = %83
  %89 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %90 = call i64 @usbd_ctrl_lock(%struct.usb_device* %89)
  store i64 %90, i64* %26, align 8
  store i32 0, i32* %25, align 4
  store %struct.usb_xfer_root* null, %struct.usb_xfer_root** %20, align 8
  %91 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %92 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 1
  %97 = bitcast %struct.usb_xfer* %96 to %struct.usb_setup_params*
  store %struct.usb_setup_params* %97, %struct.usb_setup_params** %18, align 8
  %98 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %99 = bitcast %struct.usb_setup_params* %98 to %struct.usb_xfer*
  %100 = call i32 @memset(%struct.usb_xfer* %99, i32 0, i32 168)
  %101 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %102 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %103 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %102, i32 0, i32 20
  store %struct.usb_device* %101, %struct.usb_device** %103, align 8
  %104 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %105 = call i64 @usbd_get_speed(%struct.usb_device* %104)
  %106 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %107 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %109 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %108, i32 0, i32 1
  store i32 1, i32* %109, align 8
  %110 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %111 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @USB_SPEED_MAX, align 8
  %114 = icmp sge i64 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %88
  %116 = load i8*, i8** @USB_ERR_INVAL, align 8
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %119 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  br label %816

120:                                              ; preds = %88
  br label %121

121:                                              ; preds = %120, %770
  %122 = load i8*, i8** %22, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %247

124:                                              ; preds = %121
  %125 = load i8*, i8** %22, align 8
  %126 = call i8* @USB_ADD_BYTES(i8* %125, i32 0)
  %127 = bitcast i8* %126 to %struct.usb_xfer_root*
  store %struct.usb_xfer_root* %127, %struct.usb_xfer_root** %20, align 8
  %128 = load i8*, i8** %22, align 8
  %129 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %130 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %129, i32 0, i32 15
  store i8* %128, i8** %130, align 8
  %131 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %132 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %137 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i8*, i8** %22, align 8
  %139 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %140 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 5
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @USB_ADD_BYTES(i8* %138, i32 %143)
  %145 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %146 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %145, i32 0, i32 12
  store i8* %144, i8** %146, align 8
  %147 = load i8*, i8** %22, align 8
  %148 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %149 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @USB_ADD_BYTES(i8* %147, i32 %152)
  %154 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %155 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %154, i32 0, i32 11
  store i8* %153, i8** %155, align 8
  %156 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %157 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %156, i32 0, i32 10
  %158 = call i32 @cv_init(i32* %157, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %159 = load %struct.mtx*, %struct.mtx** %15, align 8
  %160 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %161 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %160, i32 0, i32 9
  store %struct.mtx* %159, %struct.mtx** %161, align 8
  %162 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %163 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %162, i32 0, i32 0
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %163, align 8
  %165 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %166 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %165, i32 0, i32 2
  store %struct.TYPE_18__* %164, %struct.TYPE_18__** %166, align 8
  %167 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %168 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %169 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %168, i32 0, i32 7
  store %struct.usb_device* %167, %struct.usb_device** %169, align 8
  %170 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %171 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %170, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = call i32 @TAILQ_INIT(i32* %172)
  %174 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %175 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %174, i32 0, i32 6
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 0
  store i32* @usbd_callback_wrapper, i32** %176, align 8
  %177 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %178 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %177, i32 0, i32 4
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  store i32* @usb_callback_proc, i32** %182, align 8
  %183 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %184 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %185 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %184, i32 0, i32 4
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  store %struct.usb_xfer_root* %183, %struct.usb_xfer_root** %188, align 8
  %189 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %190 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %189, i32 0, i32 4
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i64 1
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 0
  store i32* @usb_callback_proc, i32** %194, align 8
  %195 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %196 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %197 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %196, i32 0, i32 4
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i64 1
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  store %struct.usb_xfer_root* %195, %struct.usb_xfer_root** %200, align 8
  %201 = load %struct.usb_config*, %struct.usb_config** %12, align 8
  %202 = load %struct.usb_config*, %struct.usb_config** @usb_control_ep_cfg, align 8
  %203 = icmp eq %struct.usb_config* %201, %202
  br i1 %203, label %208, label %204

204:                                              ; preds = %124
  %205 = load %struct.usb_config*, %struct.usb_config** %12, align 8
  %206 = load %struct.usb_config*, %struct.usb_config** @usb_control_ep_quirk_cfg, align 8
  %207 = icmp eq %struct.usb_config* %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %204, %124
  %209 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %210 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %209, i32 0, i32 0
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = call i32 @USB_BUS_CONTROL_XFER_PROC(%struct.TYPE_18__* %211)
  %213 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %214 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %213, i32 0, i32 3
  store i32 %212, i32* %214, align 8
  br label %246

215:                                              ; preds = %204
  %216 = load %struct.mtx*, %struct.mtx** %15, align 8
  %217 = icmp eq %struct.mtx* %216, @Giant
  br i1 %217, label %218, label %225

218:                                              ; preds = %215
  %219 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %220 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %219, i32 0, i32 0
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %220, align 8
  %222 = call i32 @USB_BUS_GIANT_PROC(%struct.TYPE_18__* %221)
  %223 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %224 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %223, i32 0, i32 3
  store i32 %222, i32* %224, align 8
  br label %245

225:                                              ; preds = %215
  %226 = load %struct.usb_config*, %struct.usb_config** %12, align 8
  %227 = load i32, i32* %13, align 4
  %228 = call i64 @usbd_transfer_setup_has_bulk(%struct.usb_config* %226, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %232 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %231, i32 0, i32 0
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %232, align 8
  %234 = call i32 @USB_BUS_NON_GIANT_BULK_PROC(%struct.TYPE_18__* %233)
  %235 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %236 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 8
  br label %244

237:                                              ; preds = %225
  %238 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %239 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %238, i32 0, i32 0
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %239, align 8
  %241 = call i32 @USB_BUS_NON_GIANT_ISOC_PROC(%struct.TYPE_18__* %240)
  %242 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %243 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 8
  br label %244

244:                                              ; preds = %237, %230
  br label %245

245:                                              ; preds = %244, %218
  br label %246

246:                                              ; preds = %245, %208
  br label %247

247:                                              ; preds = %246, %121
  %248 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %249 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %248, i32 0, i32 3
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  store i32 0, i32* %251, align 4
  %252 = load i8*, i8** %22, align 8
  %253 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %254 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %253, i32 0, i32 19
  store i8* %252, i8** %254, align 8
  %255 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %256 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %255, i32 0, i32 3
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = add i64 %260, 144
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %258, align 4
  %263 = load %struct.usb_config*, %struct.usb_config** %12, align 8
  store %struct.usb_config* %263, %struct.usb_config** %17, align 8
  store i32 0, i32* %24, align 4
  br label %264

264:                                              ; preds = %505, %247
  %265 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %266 = load %struct.usb_config*, %struct.usb_config** %16, align 8
  %267 = icmp ne %struct.usb_config* %265, %266
  br i1 %267, label %268, label %510

268:                                              ; preds = %264
  %269 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %270 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %269, i32 0, i32 5
  %271 = load i32*, i32** %270, align 8
  %272 = icmp eq i32* %271, null
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  br label %505

274:                                              ; preds = %268
  %275 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %276 = load i64*, i64** %10, align 8
  %277 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %278 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds i64, i64* %276, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %283 = call %struct.usb_endpoint* @usbd_get_endpoint(%struct.usb_device* %275, i64 %281, %struct.usb_config* %282)
  store %struct.usb_endpoint* %283, %struct.usb_endpoint** %19, align 8
  %284 = load %struct.usb_endpoint*, %struct.usb_endpoint** %19, align 8
  %285 = icmp eq %struct.usb_endpoint* %284, null
  br i1 %285, label %320, label %286

286:                                              ; preds = %274
  %287 = load %struct.usb_endpoint*, %struct.usb_endpoint** %19, align 8
  %288 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %287, i32 0, i32 2
  %289 = load i32*, i32** %288, align 8
  %290 = icmp eq i32* %289, null
  br i1 %290, label %320, label %291

291:                                              ; preds = %286
  %292 = load %struct.usb_endpoint*, %struct.usb_endpoint** %19, align 8
  %293 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @USB_EP_MODE_STREAMS, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %303

297:                                              ; preds = %291
  %298 = load %struct.usb_endpoint*, %struct.usb_endpoint** %19, align 8
  %299 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @USB_EP_MODE_DEFAULT, align 8
  %302 = icmp ne i64 %300, %301
  br i1 %302, label %320, label %303

303:                                              ; preds = %297, %291
  %304 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %305 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %347

308:                                              ; preds = %303
  %309 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %310 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @USB_MAX_EP_STREAMS, align 8
  %313 = icmp sge i64 %311, %312
  br i1 %313, label %320, label %314

314:                                              ; preds = %308
  %315 = load %struct.usb_endpoint*, %struct.usb_endpoint** %19, align 8
  %316 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @USB_EP_MODE_STREAMS, align 8
  %319 = icmp ne i64 %317, %318
  br i1 %319, label %320, label %347

320:                                              ; preds = %314, %308, %297, %286, %274
  %321 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %322 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %321, i32 0, i32 4
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %320
  br label %505

327:                                              ; preds = %320
  %328 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %329 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %328, i32 0, i32 3
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @USB_MODE_DUAL, align 8
  %332 = icmp ne i64 %330, %331
  br i1 %332, label %333, label %343

333:                                              ; preds = %327
  %334 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %335 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %338 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %336, %340
  br i1 %341, label %342, label %343

342:                                              ; preds = %333
  br label %505

343:                                              ; preds = %333, %327
  %344 = load i64, i64* @USB_ERR_NO_PIPE, align 8
  %345 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %346 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %345, i32 0, i32 2
  store i64 %344, i64* %346, align 8
  br label %816

347:                                              ; preds = %314, %303
  %348 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %349 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %348, i32 0, i32 3
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 0
  %352 = load i32, i32* %351, align 4
  %353 = sub nsw i32 0, %352
  %354 = load i32, i32* @USB_HOST_ALIGN, align 4
  %355 = sub nsw i32 %354, 1
  %356 = and i32 %353, %355
  %357 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %358 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %357, i32 0, i32 3
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 0
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %361, %356
  store i32 %362, i32* %360, align 4
  %363 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %364 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %365 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %364, i32 0, i32 18
  store %struct.usb_config* %363, %struct.usb_config** %365, align 8
  %366 = load i8*, i8** %22, align 8
  %367 = icmp ne i8* %366, null
  br i1 %367, label %368, label %395

368:                                              ; preds = %347
  %369 = load i8*, i8** %22, align 8
  %370 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %371 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %370, i32 0, i32 3
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 0
  %374 = load i32, i32* %373, align 4
  %375 = call i8* @USB_ADD_BYTES(i8* %369, i32 %374)
  %376 = bitcast i8* %375 to %struct.usb_xfer*
  store %struct.usb_xfer* %376, %struct.usb_xfer** %21, align 8
  %377 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %378 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.usb_xfer*, %struct.usb_xfer** %21, align 8
  %381 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %380, i32 0, i32 17
  store i32 %379, i32* %381, align 8
  %382 = load i8*, i8** %14, align 8
  %383 = load %struct.usb_xfer*, %struct.usb_xfer** %21, align 8
  %384 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %383, i32 0, i32 16
  store i8* %382, i8** %384, align 8
  %385 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %386 = load %struct.usb_xfer*, %struct.usb_xfer** %21, align 8
  %387 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %386, i32 0, i32 15
  store %struct.usb_xfer_root* %385, %struct.usb_xfer_root** %387, align 8
  %388 = load %struct.usb_xfer*, %struct.usb_xfer** %21, align 8
  %389 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %388, i32 0, i32 14
  %390 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %391 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %390, i32 0, i32 0
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 1
  %394 = call i32 @usb_callout_init_mtx(i32* %389, i32* %393, i32 0)
  br label %406

395:                                              ; preds = %347
  %396 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %397 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %397, i32 0, i32 0
  %399 = load %struct.TYPE_26__*, %struct.TYPE_26__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %399, i64 0
  %401 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %400, i32 0, i32 0
  store %struct.usb_xfer* %401, %struct.usb_xfer** %21, align 8
  %402 = load %struct.usb_xfer*, %struct.usb_xfer** %21, align 8
  %403 = call i32 @memset(%struct.usb_xfer* %402, i32 0, i32 168)
  %404 = load i32, i32* %25, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %25, align 4
  br label %406

406:                                              ; preds = %395, %368
  %407 = load %struct.usb_endpoint*, %struct.usb_endpoint** %19, align 8
  %408 = load %struct.usb_xfer*, %struct.usb_xfer** %21, align 8
  %409 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %408, i32 0, i32 11
  store %struct.usb_endpoint* %407, %struct.usb_endpoint** %409, align 8
  %410 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %411 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %410, i32 0, i32 2
  %412 = load i64, i64* %411, align 8
  %413 = load %struct.usb_xfer*, %struct.usb_xfer** %21, align 8
  %414 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %413, i32 0, i32 4
  store i64 %412, i64* %414, align 8
  %415 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %416 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %415, i32 0, i32 3
  %417 = load i32*, i32** %416, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 0
  %419 = load i32, i32* %418, align 4
  %420 = sext i32 %419 to i64
  %421 = add i64 %420, 168
  %422 = trunc i64 %421 to i32
  store i32 %422, i32* %418, align 4
  %423 = load %struct.usb_xfer*, %struct.usb_xfer** %21, align 8
  %424 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %423, i32 0, i32 11
  %425 = load %struct.usb_endpoint*, %struct.usb_endpoint** %424, align 8
  %426 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %425, i32 0, i32 2
  %427 = load i32*, i32** %426, align 8
  %428 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %429 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %428, i32 0, i32 13
  store i32* %427, i32** %429, align 8
  %430 = load %struct.usb_xfer*, %struct.usb_xfer** %21, align 8
  %431 = bitcast %struct.usb_xfer* %430 to %struct.usb_setup_params*
  %432 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %433 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %432, i32 0, i32 12
  store %struct.usb_setup_params* %431, %struct.usb_setup_params** %433, align 8
  %434 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %435 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %434, i32 0, i32 0
  %436 = load %struct.TYPE_18__*, %struct.TYPE_18__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %436, i32 0, i32 0
  %438 = load %struct.TYPE_17__*, %struct.TYPE_17__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %438, i32 0, i32 0
  %440 = load i32 (%struct.usb_xfer*)*, i32 (%struct.usb_xfer*)** %439, align 8
  %441 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %442 = bitcast %struct.usb_setup_params* %441 to %struct.usb_xfer*
  %443 = call i32 %440(%struct.usb_xfer* %442)
  %444 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %445 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %444, i32 0, i32 2
  %446 = load i64, i64* %445, align 8
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %449

448:                                              ; preds = %406
  br label %816

449:                                              ; preds = %406
  %450 = load i8*, i8** %22, align 8
  %451 = icmp ne i8* %450, null
  br i1 %451, label %452, label %498

452:                                              ; preds = %449
  %453 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %454 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %453, i32 0, i32 2
  %455 = load %struct.TYPE_18__*, %struct.TYPE_18__** %454, align 8
  %456 = call i32 @USB_BUS_LOCK(%struct.TYPE_18__* %455)
  %457 = load %struct.usb_xfer*, %struct.usb_xfer** %21, align 8
  %458 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %457, i32 0, i32 11
  %459 = load %struct.usb_endpoint*, %struct.usb_endpoint** %458, align 8
  %460 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %459, i32 0, i32 1
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @USB_EP_REF_MAX, align 8
  %463 = icmp sge i64 %461, %462
  br i1 %463, label %464, label %469

464:                                              ; preds = %452
  %465 = load i8*, i8** @USB_ERR_INVAL, align 8
  %466 = ptrtoint i8* %465 to i64
  %467 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %468 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %467, i32 0, i32 2
  store i64 %466, i64* %468, align 8
  br label %469

469:                                              ; preds = %464, %452
  %470 = load %struct.usb_xfer*, %struct.usb_xfer** %21, align 8
  %471 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %470, i32 0, i32 11
  %472 = load %struct.usb_endpoint*, %struct.usb_endpoint** %471, align 8
  %473 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %472, i32 0, i32 1
  %474 = load i64, i64* %473, align 8
  %475 = add nsw i64 %474, 1
  store i64 %475, i64* %473, align 8
  %476 = load %struct.usb_xfer*, %struct.usb_xfer** %21, align 8
  %477 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %476, i32 0, i32 11
  %478 = load %struct.usb_endpoint*, %struct.usb_endpoint** %477, align 8
  %479 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %478, i32 0, i32 1
  %480 = load i64, i64* %479, align 8
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %482, label %484

482:                                              ; preds = %469
  %483 = call i32 @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %484

484:                                              ; preds = %482, %469
  %485 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %486 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %485, i32 0, i32 2
  %487 = load %struct.TYPE_18__*, %struct.TYPE_18__** %486, align 8
  %488 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_18__* %487)
  %489 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %490 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %489, i32 0, i32 1
  %491 = load i64, i64* %490, align 8
  %492 = add nsw i64 %491, 1
  store i64 %492, i64* %490, align 8
  %493 = load %struct.usb_xfer*, %struct.usb_xfer** %21, align 8
  %494 = load %struct.usb_xfer**, %struct.usb_xfer*** %11, align 8
  %495 = load i32, i32* %24, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %494, i64 %496
  store %struct.usb_xfer* %493, %struct.usb_xfer** %497, align 8
  br label %498

498:                                              ; preds = %484, %449
  %499 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %500 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %499, i32 0, i32 2
  %501 = load i64, i64* %500, align 8
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %504

503:                                              ; preds = %498
  br label %816

504:                                              ; preds = %498
  br label %505

505:                                              ; preds = %504, %342, %326, %273
  %506 = load %struct.usb_config*, %struct.usb_config** %17, align 8
  %507 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %506, i32 1
  store %struct.usb_config* %507, %struct.usb_config** %17, align 8
  %508 = load i32, i32* %24, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %24, align 4
  br label %264

510:                                              ; preds = %264
  %511 = load i8*, i8** %22, align 8
  %512 = icmp ne i8* %511, null
  br i1 %512, label %518, label %513

513:                                              ; preds = %510
  %514 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %515 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %514, i32 0, i32 2
  %516 = load i64, i64* %515, align 8
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %519

518:                                              ; preds = %513, %510
  br label %816

519:                                              ; preds = %513
  %520 = load i32, i32* %25, align 4
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %523

522:                                              ; preds = %519
  br label %816

523:                                              ; preds = %519
  %524 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %525 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %524, i32 0, i32 3
  %526 = load i32*, i32** %525, align 8
  %527 = getelementptr inbounds i32, i32* %526, i64 0
  %528 = load i32, i32* %527, align 4
  %529 = sub nsw i32 0, %528
  %530 = load i32, i32* @USB_HOST_ALIGN, align 4
  %531 = sub nsw i32 %530, 1
  %532 = and i32 %529, %531
  %533 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %534 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %533, i32 0, i32 3
  %535 = load i32*, i32** %534, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 0
  %537 = load i32, i32* %536, align 4
  %538 = add nsw i32 %537, %532
  store i32 %538, i32* %536, align 4
  %539 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %540 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %539, i32 0, i32 3
  %541 = load i32*, i32** %540, align 8
  %542 = getelementptr inbounds i32, i32* %541, i64 0
  %543 = load i32, i32* %542, align 4
  %544 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %545 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %544, i32 0, i32 3
  %546 = load i32*, i32** %545, align 8
  %547 = getelementptr inbounds i32, i32* %546, i64 1
  store i32 %543, i32* %547, align 4
  %548 = load i32, i32* %13, align 4
  %549 = load i32, i32* @USB_EP_MAX, align 4
  %550 = call i32 @MIN(i32 %548, i32 %549)
  %551 = mul nsw i32 3, %550
  %552 = sext i32 %551 to i64
  %553 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %554 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %553, i32 0, i32 10
  %555 = load i64, i64* %554, align 8
  %556 = add nsw i64 %555, %552
  store i64 %556, i64* %554, align 8
  %557 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %558 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %557, i32 0, i32 10
  %559 = load i64, i64* %558, align 8
  %560 = add nsw i64 %559, 8
  store i64 %560, i64* %558, align 8
  %561 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %562 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %561, i32 0, i32 10
  %563 = load i64, i64* %562, align 8
  %564 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %565 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %564, i32 0, i32 9
  %566 = load i8*, i8** %565, align 8
  %567 = getelementptr i8, i8* %566, i64 %563
  store i8* %567, i8** %565, align 8
  %568 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %569 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %568, i32 0, i32 9
  %570 = load i8*, i8** %569, align 8
  %571 = bitcast i8* %570 to i64*
  %572 = ptrtoint i64* %571 to i64
  %573 = sub i64 %572, 0
  %574 = sdiv exact i64 %573, 8
  %575 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %576 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %575, i32 0, i32 3
  %577 = load i32*, i32** %576, align 8
  %578 = getelementptr inbounds i32, i32* %577, i64 0
  %579 = load i32, i32* %578, align 4
  %580 = sext i32 %579 to i64
  %581 = add nsw i64 %580, %574
  %582 = trunc i64 %581 to i32
  store i32 %582, i32* %578, align 4
  %583 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %584 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %583, i32 0, i32 3
  %585 = load i32*, i32** %584, align 8
  %586 = getelementptr inbounds i32, i32* %585, i64 0
  %587 = load i32, i32* %586, align 4
  %588 = sub nsw i32 0, %587
  %589 = load i32, i32* @USB_HOST_ALIGN, align 4
  %590 = sub nsw i32 %589, 1
  %591 = and i32 %588, %590
  %592 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %593 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %592, i32 0, i32 3
  %594 = load i32*, i32** %593, align 8
  %595 = getelementptr inbounds i32, i32* %594, i64 0
  %596 = load i32, i32* %595, align 4
  %597 = add nsw i32 %596, %591
  store i32 %597, i32* %595, align 4
  %598 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %599 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %598, i32 0, i32 3
  %600 = load i32*, i32** %599, align 8
  %601 = getelementptr inbounds i32, i32* %600, i64 0
  %602 = load i32, i32* %601, align 4
  %603 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %604 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %603, i32 0, i32 3
  %605 = load i32*, i32** %604, align 8
  %606 = getelementptr inbounds i32, i32* %605, i64 3
  store i32 %602, i32* %606, align 4
  %607 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %608 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %607, i32 0, i32 8
  %609 = load i8*, i8** %608, align 8
  %610 = bitcast i8* %609 to i64*
  %611 = ptrtoint i64* %610 to i64
  %612 = sub i64 %611, 0
  %613 = sdiv exact i64 %612, 8
  %614 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %615 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %614, i32 0, i32 3
  %616 = load i32*, i32** %615, align 8
  %617 = getelementptr inbounds i32, i32* %616, i64 0
  %618 = load i32, i32* %617, align 4
  %619 = sext i32 %618 to i64
  %620 = add nsw i64 %619, %613
  %621 = trunc i64 %620 to i32
  store i32 %621, i32* %617, align 4
  %622 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %623 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %622, i32 0, i32 3
  %624 = load i32*, i32** %623, align 8
  %625 = getelementptr inbounds i32, i32* %624, i64 0
  %626 = load i32, i32* %625, align 4
  %627 = sub nsw i32 0, %626
  %628 = load i32, i32* @USB_HOST_ALIGN, align 4
  %629 = sub nsw i32 %628, 1
  %630 = and i32 %627, %629
  %631 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %632 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %631, i32 0, i32 3
  %633 = load i32*, i32** %632, align 8
  %634 = getelementptr inbounds i32, i32* %633, i64 0
  %635 = load i32, i32* %634, align 4
  %636 = add nsw i32 %635, %630
  store i32 %636, i32* %634, align 4
  %637 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %638 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %637, i32 0, i32 3
  %639 = load i32*, i32** %638, align 8
  %640 = getelementptr inbounds i32, i32* %639, i64 0
  %641 = load i32, i32* %640, align 4
  %642 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %643 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %642, i32 0, i32 3
  %644 = load i32*, i32** %643, align 8
  %645 = getelementptr inbounds i32, i32* %644, i64 4
  store i32 %641, i32* %645, align 4
  %646 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %647 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %646, i32 0, i32 7
  %648 = load i8*, i8** %647, align 8
  %649 = bitcast i8* %648 to i64*
  %650 = ptrtoint i64* %649 to i64
  %651 = sub i64 %650, 0
  %652 = sdiv exact i64 %651, 8
  %653 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %654 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %653, i32 0, i32 3
  %655 = load i32*, i32** %654, align 8
  %656 = getelementptr inbounds i32, i32* %655, i64 0
  %657 = load i32, i32* %656, align 4
  %658 = sext i32 %657 to i64
  %659 = add nsw i64 %658, %652
  %660 = trunc i64 %659 to i32
  store i32 %660, i32* %656, align 4
  %661 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %662 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %661, i32 0, i32 3
  %663 = load i32*, i32** %662, align 8
  %664 = getelementptr inbounds i32, i32* %663, i64 0
  %665 = load i32, i32* %664, align 4
  %666 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %667 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %666, i32 0, i32 3
  %668 = load i32*, i32** %667, align 8
  %669 = getelementptr inbounds i32, i32* %668, i64 5
  store i32 %665, i32* %669, align 4
  %670 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %671 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %670, i32 0, i32 6
  %672 = load i8*, i8** %671, align 8
  %673 = bitcast i8* %672 to i64*
  %674 = ptrtoint i64* %673 to i64
  %675 = sub i64 %674, 0
  %676 = sdiv exact i64 %675, 8
  %677 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %678 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %677, i32 0, i32 3
  %679 = load i32*, i32** %678, align 8
  %680 = getelementptr inbounds i32, i32* %679, i64 0
  %681 = load i32, i32* %680, align 4
  %682 = sext i32 %681 to i64
  %683 = add nsw i64 %682, %676
  %684 = trunc i64 %683 to i32
  store i32 %684, i32* %680, align 4
  %685 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %686 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %685, i32 0, i32 3
  %687 = load i32*, i32** %686, align 8
  %688 = getelementptr inbounds i32, i32* %687, i64 0
  %689 = load i32, i32* %688, align 4
  %690 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %691 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %690, i32 0, i32 3
  %692 = load i32*, i32** %691, align 8
  %693 = getelementptr inbounds i32, i32* %692, i64 2
  store i32 %689, i32* %693, align 4
  %694 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %695 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %694, i32 0, i32 3
  %696 = load i32*, i32** %695, align 8
  %697 = getelementptr inbounds i32, i32* %696, i64 0
  %698 = load i32, i32* %697, align 4
  %699 = sub nsw i32 0, %698
  %700 = load i32, i32* @USB_HOST_ALIGN, align 4
  %701 = sub nsw i32 %700, 1
  %702 = and i32 %699, %701
  %703 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %704 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %703, i32 0, i32 3
  %705 = load i32*, i32** %704, align 8
  %706 = getelementptr inbounds i32, i32* %705, i64 0
  %707 = load i32, i32* %706, align 4
  %708 = add nsw i32 %707, %702
  store i32 %708, i32* %706, align 4
  %709 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %710 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %709, i32 0, i32 3
  %711 = load i32*, i32** %710, align 8
  %712 = getelementptr inbounds i32, i32* %711, i64 0
  %713 = load i32, i32* %712, align 4
  %714 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %715 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %714, i32 0, i32 3
  %716 = load i32*, i32** %715, align 8
  %717 = getelementptr inbounds i32, i32* %716, i64 6
  store i32 %713, i32* %717, align 4
  %718 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %719 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %718, i32 0, i32 5
  %720 = load i8*, i8** %719, align 8
  %721 = bitcast i8* %720 to i64*
  %722 = ptrtoint i64* %721 to i64
  %723 = sub i64 %722, 0
  %724 = sdiv exact i64 %723, 8
  %725 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %726 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %725, i32 0, i32 3
  %727 = load i32*, i32** %726, align 8
  %728 = getelementptr inbounds i32, i32* %727, i64 0
  %729 = load i32, i32* %728, align 4
  %730 = sext i32 %729 to i64
  %731 = add nsw i64 %730, %724
  %732 = trunc i64 %731 to i32
  store i32 %732, i32* %728, align 4
  %733 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %734 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %733, i32 0, i32 3
  %735 = load i32*, i32** %734, align 8
  %736 = getelementptr inbounds i32, i32* %735, i64 0
  %737 = load i32, i32* %736, align 4
  %738 = sub nsw i32 0, %737
  %739 = load i32, i32* @USB_HOST_ALIGN, align 4
  %740 = sub nsw i32 %739, 1
  %741 = and i32 %738, %740
  %742 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %743 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %742, i32 0, i32 3
  %744 = load i32*, i32** %743, align 8
  %745 = getelementptr inbounds i32, i32* %744, i64 0
  %746 = load i32, i32* %745, align 4
  %747 = add nsw i32 %746, %741
  store i32 %747, i32* %745, align 4
  %748 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %749 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %748, i32 0, i32 3
  %750 = load i32*, i32** %749, align 8
  %751 = getelementptr inbounds i32, i32* %750, i64 0
  %752 = load i32, i32* %751, align 4
  %753 = load i32, i32* @M_USB, align 4
  %754 = load i32, i32* @M_WAITOK, align 4
  %755 = load i32, i32* @M_ZERO, align 4
  %756 = or i32 %754, %755
  %757 = call i8* @malloc(i32 %752, i32 %753, i32 %756)
  store i8* %757, i8** %22, align 8
  %758 = load i8*, i8** %22, align 8
  %759 = icmp eq i8* %758, null
  br i1 %759, label %760, label %770

760:                                              ; preds = %523
  %761 = load i64, i64* @USB_ERR_NOMEM, align 8
  %762 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %763 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %762, i32 0, i32 2
  store i64 %761, i64* %763, align 8
  %764 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %765 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %764, i32 0, i32 3
  %766 = load i32*, i32** %765, align 8
  %767 = getelementptr inbounds i32, i32* %766, i64 0
  %768 = load i32, i32* %767, align 4
  %769 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i32 %768)
  br label %816

770:                                              ; preds = %523
  %771 = load i8*, i8** %22, align 8
  %772 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %773 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %772, i32 0, i32 3
  %774 = load i32*, i32** %773, align 8
  %775 = getelementptr inbounds i32, i32* %774, i64 1
  %776 = load i32, i32* %775, align 4
  %777 = call i8* @USB_ADD_BYTES(i8* %771, i32 %776)
  %778 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %779 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %778, i32 0, i32 9
  store i8* %777, i8** %779, align 8
  %780 = load i8*, i8** %22, align 8
  %781 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %782 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %781, i32 0, i32 3
  %783 = load i32*, i32** %782, align 8
  %784 = getelementptr inbounds i32, i32* %783, i64 3
  %785 = load i32, i32* %784, align 4
  %786 = call i8* @USB_ADD_BYTES(i8* %780, i32 %785)
  %787 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %788 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %787, i32 0, i32 8
  store i8* %786, i8** %788, align 8
  %789 = load i8*, i8** %22, align 8
  %790 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %791 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %790, i32 0, i32 3
  %792 = load i32*, i32** %791, align 8
  %793 = getelementptr inbounds i32, i32* %792, i64 4
  %794 = load i32, i32* %793, align 4
  %795 = call i8* @USB_ADD_BYTES(i8* %789, i32 %794)
  %796 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %797 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %796, i32 0, i32 7
  store i8* %795, i8** %797, align 8
  %798 = load i8*, i8** %22, align 8
  %799 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %800 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %799, i32 0, i32 3
  %801 = load i32*, i32** %800, align 8
  %802 = getelementptr inbounds i32, i32* %801, i64 5
  %803 = load i32, i32* %802, align 4
  %804 = call i8* @USB_ADD_BYTES(i8* %798, i32 %803)
  %805 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %806 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %805, i32 0, i32 6
  store i8* %804, i8** %806, align 8
  %807 = load i8*, i8** %22, align 8
  %808 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %809 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %808, i32 0, i32 3
  %810 = load i32*, i32** %809, align 8
  %811 = getelementptr inbounds i32, i32* %810, i64 6
  %812 = load i32, i32* %811, align 4
  %813 = call i8* @USB_ADD_BYTES(i8* %807, i32 %812)
  %814 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %815 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %814, i32 0, i32 5
  store i8* %813, i8** %815, align 8
  br label %121

816:                                              ; preds = %760, %522, %518, %503, %448, %343, %115
  %817 = load i8*, i8** %22, align 8
  %818 = icmp ne i8* %817, null
  br i1 %818, label %819, label %832

819:                                              ; preds = %816
  %820 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %821 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %820, i32 0, i32 1
  %822 = load i64, i64* %821, align 8
  %823 = icmp eq i64 %822, 0
  br i1 %823, label %824, label %831

824:                                              ; preds = %819
  %825 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %826 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %825, i32 0, i32 2
  %827 = load %struct.TYPE_18__*, %struct.TYPE_18__** %826, align 8
  %828 = call i32 @USB_BUS_LOCK(%struct.TYPE_18__* %827)
  %829 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %20, align 8
  %830 = call i32 @usbd_transfer_unsetup_sub(%struct.usb_xfer_root* %829, i32 0)
  br label %831

831:                                              ; preds = %824, %819
  br label %832

832:                                              ; preds = %831, %816
  %833 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %834 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %833, i32 0, i32 2
  %835 = load i64, i64* %834, align 8
  %836 = icmp ne i64 %835, 0
  br i1 %836, label %837, label %841

837:                                              ; preds = %832
  %838 = load %struct.usb_xfer**, %struct.usb_xfer*** %11, align 8
  %839 = load i32, i32* %13, align 4
  %840 = call i32 @usbd_transfer_unsetup(%struct.usb_xfer** %838, i32 %839)
  br label %841

841:                                              ; preds = %837, %832
  %842 = load %struct.usb_setup_params*, %struct.usb_setup_params** %18, align 8
  %843 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %842, i32 0, i32 2
  %844 = load i64, i64* %843, align 8
  %845 = inttoptr i64 %844 to i8*
  store i8* %845, i8** %23, align 8
  %846 = load i64, i64* %26, align 8
  %847 = icmp ne i64 %846, 0
  br i1 %847, label %848, label %851

848:                                              ; preds = %841
  %849 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %850 = call i32 @usbd_ctrl_unlock(%struct.usb_device* %849)
  br label %851

851:                                              ; preds = %848, %841
  %852 = load i8*, i8** %23, align 8
  store i8* %852, i8** %8, align 8
  br label %853

853:                                              ; preds = %851, %86, %43, %37
  %854 = load i8*, i8** %8, align 8
  ret i8* %854
}

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @usbd_ctrl_lock(%struct.usb_device*) #1

declare dso_local i32 @memset(%struct.usb_xfer*, i32, i32) #1

declare dso_local i64 @usbd_get_speed(%struct.usb_device*) #1

declare dso_local i8* @USB_ADD_BYTES(i8*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @USB_BUS_CONTROL_XFER_PROC(%struct.TYPE_18__*) #1

declare dso_local i32 @USB_BUS_GIANT_PROC(%struct.TYPE_18__*) #1

declare dso_local i64 @usbd_transfer_setup_has_bulk(%struct.usb_config*, i32) #1

declare dso_local i32 @USB_BUS_NON_GIANT_BULK_PROC(%struct.TYPE_18__*) #1

declare dso_local i32 @USB_BUS_NON_GIANT_ISOC_PROC(%struct.TYPE_18__*) #1

declare dso_local %struct.usb_endpoint* @usbd_get_endpoint(%struct.usb_device*, i64, %struct.usb_config*) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.TYPE_18__*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.TYPE_18__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @usbd_transfer_unsetup_sub(%struct.usb_xfer_root*, i32) #1

declare dso_local i32 @usbd_transfer_unsetup(%struct.usb_xfer**, i32) #1

declare dso_local i32 @usbd_ctrl_unlock(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
