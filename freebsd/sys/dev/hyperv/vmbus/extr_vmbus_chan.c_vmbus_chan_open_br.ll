; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_open_br.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_open_br.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vmbus_softc*, i32, i8*, i32 }
%struct.vmbus_softc = type { i32 }
%struct.vmbus_chan_br = type { i32, i32, i32, i32* }
%struct.vmbus_message = type { i64 }
%struct.vmbus_chanmsg_chopen = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vmbus_msghc = type { i32 }
%struct.vmbus_chanmsg_chopen_resp = type { i32 }

@VMBUS_CHANMSG_CHOPEN_UDATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid udata len %d for chan%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"send bufring size is not multiple page\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"recv bufring size is not multiple page\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"bufring is not page aligned\00", align 1
@VMBUS_CHAN_ST_OPENED_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"double-open chan%u\00", align 1
@event_tq = common dso_local global i32 0, align 4
@VMBUS_CHAN_FLAG_BATCHREAD = common dso_local global i32 0, align 4
@vmbus_chan_task = common dso_local global i32* null, align 8
@vmbus_chan_task_nobatch = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"failed to connect bufring GPADL to chan%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"can not get msg hypercall for chopen(chan%u)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@VMBUS_CHANMSG_TYPE_CHOPEN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"chopen(chan%u) msg hypercall exec failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"chan%u is revoked, when it is being opened\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"rchopen\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"chopen\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"chan%u opened\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"failed to open chan%u\0A\00", align 1
@EISCONN = common dso_local global i32 0, align 4
@VMBUS_CHAN_ST_OPENED = common dso_local global i32 0, align 4
@REVOKE_LINGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_chan_open_br(%struct.vmbus_channel* %0, %struct.vmbus_chan_br* %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmbus_channel*, align 8
  %9 = alloca %struct.vmbus_chan_br*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.vmbus_softc*, align 8
  %15 = alloca %struct.vmbus_message*, align 8
  %16 = alloca %struct.vmbus_chanmsg_chopen*, align 8
  %17 = alloca %struct.vmbus_msghc*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %8, align 8
  store %struct.vmbus_chan_br* %1, %struct.vmbus_chan_br** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %26 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %27 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %26, i32 0, i32 10
  %28 = load %struct.vmbus_softc*, %struct.vmbus_softc** %27, align 8
  store %struct.vmbus_softc* %28, %struct.vmbus_softc** %14, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @VMBUS_CHANMSG_CHOPEN_UDATA_SIZE, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %6
  %33 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %36 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %7, align 4
  br label %331

40:                                               ; preds = %6
  %41 = load %struct.vmbus_chan_br*, %struct.vmbus_chan_br** %9, align 8
  %42 = getelementptr inbounds %struct.vmbus_chan_br, %struct.vmbus_chan_br* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %23, align 8
  %44 = load %struct.vmbus_chan_br*, %struct.vmbus_chan_br** %9, align 8
  %45 = getelementptr inbounds %struct.vmbus_chan_br, %struct.vmbus_chan_br* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %20, align 4
  %47 = load %struct.vmbus_chan_br*, %struct.vmbus_chan_br** %9, align 8
  %48 = getelementptr inbounds %struct.vmbus_chan_br, %struct.vmbus_chan_br* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %21, align 4
  %50 = load i32, i32* %20, align 4
  %51 = load i32, i32* @PAGE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* @PAGE_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @KASSERT(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.vmbus_chan_br*, %struct.vmbus_chan_br** %9, align 8
  %63 = getelementptr inbounds %struct.vmbus_chan_br, %struct.vmbus_chan_br* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PAGE_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @KASSERT(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32*, i32** %23, align 8
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %21, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @memset(i32* %70, i32 0, i32 %73)
  %75 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %76 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %75, i32 0, i32 2
  %77 = load i32, i32* @VMBUS_CHAN_ST_OPENED_SHIFT, align 4
  %78 = call i64 @atomic_testandset_int(i32* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %40
  %81 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %82 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %80, %40
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %88 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %87, i32 0, i32 13
  store i32 %86, i32* %88, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %91 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %90, i32 0, i32 12
  store i8* %89, i8** %91, align 8
  %92 = load %struct.vmbus_softc*, %struct.vmbus_softc** %14, align 8
  %93 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %94 = call i32 @vmbus_chan_update_evtflagcnt(%struct.vmbus_softc* %92, %struct.vmbus_channel* %93)
  %95 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %96 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %95, i32 0, i32 10
  %97 = load %struct.vmbus_softc*, %struct.vmbus_softc** %96, align 8
  %98 = load i32, i32* @event_tq, align 4
  %99 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %100 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @VMBUS_PCPU_GET(%struct.vmbus_softc* %97, i32 %98, i32 %101)
  %103 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %104 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %103, i32 0, i32 11
  store i32 %102, i32* %104, align 8
  %105 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %106 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @VMBUS_CHAN_FLAG_BATCHREAD, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %85
  %112 = load i32*, i32** @vmbus_chan_task, align 8
  store i32* %112, i32** %22, align 8
  br label %115

113:                                              ; preds = %85
  %114 = load i32*, i32** @vmbus_chan_task_nobatch, align 8
  store i32* %114, i32** %22, align 8
  br label %115

115:                                              ; preds = %113, %111
  %116 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %117 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %116, i32 0, i32 8
  %118 = load i32*, i32** %22, align 8
  %119 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %120 = call i32 @TASK_INIT(i32* %117, i32 0, i32* %118, %struct.vmbus_channel* %119)
  %121 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %122 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %121, i32 0, i32 7
  %123 = load i32*, i32** %23, align 8
  %124 = load i32, i32* %20, align 4
  %125 = call i32 @vmbus_txbr_setup(i32* %122, i32* %123, i32 %124)
  %126 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %127 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %126, i32 0, i32 6
  %128 = load i32*, i32** %23, align 8
  %129 = load i32, i32* %20, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %21, align 4
  %133 = call i32 @vmbus_rxbr_setup(i32* %127, i32* %131, i32 %132)
  %134 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %135 = call i32 @vmbus_chan_sysctl_create(%struct.vmbus_channel* %134)
  %136 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %137 = load %struct.vmbus_chan_br*, %struct.vmbus_chan_br** %9, align 8
  %138 = getelementptr inbounds %struct.vmbus_chan_br, %struct.vmbus_chan_br* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %21, align 4
  %142 = add nsw i32 %140, %141
  %143 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %144 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %143, i32 0, i32 1
  %145 = call i32 @vmbus_chan_gpadl_connect(%struct.vmbus_channel* %136, i32 %139, i32 %142, i64* %144)
  store i32 %145, i32* %19, align 4
  %146 = load i32, i32* %19, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %115
  %149 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %150 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %151 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %149, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %152)
  br label %302

154:                                              ; preds = %115
  %155 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %156 = call i32 @vmbus_chan_set_chmap(%struct.vmbus_channel* %155)
  %157 = load %struct.vmbus_softc*, %struct.vmbus_softc** %14, align 8
  %158 = call %struct.vmbus_msghc* @vmbus_msghc_get(%struct.vmbus_softc* %157, i32 32)
  store %struct.vmbus_msghc* %158, %struct.vmbus_msghc** %17, align 8
  %159 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %17, align 8
  %160 = icmp eq %struct.vmbus_msghc* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %163 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %164 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %162, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* @ENXIO, align 4
  store i32 %167, i32* %19, align 4
  br label %302

168:                                              ; preds = %154
  %169 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %17, align 8
  %170 = call %struct.vmbus_chanmsg_chopen* @vmbus_msghc_dataptr(%struct.vmbus_msghc* %169)
  store %struct.vmbus_chanmsg_chopen* %170, %struct.vmbus_chanmsg_chopen** %16, align 8
  %171 = load i32, i32* @VMBUS_CHANMSG_TYPE_CHOPEN, align 4
  %172 = load %struct.vmbus_chanmsg_chopen*, %struct.vmbus_chanmsg_chopen** %16, align 8
  %173 = getelementptr inbounds %struct.vmbus_chanmsg_chopen, %struct.vmbus_chanmsg_chopen* %172, i32 0, i32 6
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 4
  %175 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %176 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.vmbus_chanmsg_chopen*, %struct.vmbus_chanmsg_chopen** %16, align 8
  %179 = getelementptr inbounds %struct.vmbus_chanmsg_chopen, %struct.vmbus_chanmsg_chopen* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 8
  %180 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %181 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.vmbus_chanmsg_chopen*, %struct.vmbus_chanmsg_chopen** %16, align 8
  %184 = getelementptr inbounds %struct.vmbus_chanmsg_chopen, %struct.vmbus_chanmsg_chopen* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 4
  %185 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %186 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.vmbus_chanmsg_chopen*, %struct.vmbus_chanmsg_chopen** %16, align 8
  %189 = getelementptr inbounds %struct.vmbus_chanmsg_chopen, %struct.vmbus_chanmsg_chopen* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %191 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.vmbus_chanmsg_chopen*, %struct.vmbus_chanmsg_chopen** %16, align 8
  %194 = getelementptr inbounds %struct.vmbus_chanmsg_chopen, %struct.vmbus_chanmsg_chopen* %193, i32 0, i32 3
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* %20, align 4
  %196 = load i32, i32* @PAGE_SHIFT, align 4
  %197 = ashr i32 %195, %196
  %198 = load %struct.vmbus_chanmsg_chopen*, %struct.vmbus_chanmsg_chopen** %16, align 8
  %199 = getelementptr inbounds %struct.vmbus_chanmsg_chopen, %struct.vmbus_chanmsg_chopen* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* %11, align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %168
  %203 = load %struct.vmbus_chanmsg_chopen*, %struct.vmbus_chanmsg_chopen** %16, align 8
  %204 = getelementptr inbounds %struct.vmbus_chanmsg_chopen, %struct.vmbus_chanmsg_chopen* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load i8*, i8** %10, align 8
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @memcpy(i32 %205, i8* %206, i32 %207)
  br label %209

209:                                              ; preds = %202, %168
  %210 = load %struct.vmbus_softc*, %struct.vmbus_softc** %14, align 8
  %211 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %17, align 8
  %212 = call i32 @vmbus_msghc_exec(%struct.vmbus_softc* %210, %struct.vmbus_msghc* %211)
  store i32 %212, i32* %19, align 4
  %213 = load i32, i32* %19, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %209
  %216 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %217 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %218 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %19, align 4
  %221 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %216, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %219, i32 %220)
  %222 = load %struct.vmbus_softc*, %struct.vmbus_softc** %14, align 8
  %223 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %17, align 8
  %224 = call i32 @vmbus_msghc_put(%struct.vmbus_softc* %222, %struct.vmbus_msghc* %223)
  br label %302

225:                                              ; preds = %209
  br label %226

226:                                              ; preds = %266, %225
  %227 = load %struct.vmbus_softc*, %struct.vmbus_softc** %14, align 8
  %228 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %17, align 8
  %229 = call %struct.vmbus_message* @vmbus_msghc_poll_result(%struct.vmbus_softc* %227, %struct.vmbus_msghc* %228)
  store %struct.vmbus_message* %229, %struct.vmbus_message** %15, align 8
  %230 = load %struct.vmbus_message*, %struct.vmbus_message** %15, align 8
  %231 = icmp ne %struct.vmbus_message* %230, null
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  br label %268

233:                                              ; preds = %226
  %234 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %235 = call i64 @vmbus_chan_is_revoked(%struct.vmbus_channel* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %266

237:                                              ; preds = %233
  %238 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %239 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %240 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %238, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %241)
  store i32 0, i32* %24, align 4
  br label %243

243:                                              ; preds = %255, %237
  %244 = load i32, i32* %24, align 4
  %245 = icmp slt i32 %244, 100
  br i1 %245, label %246, label %258

246:                                              ; preds = %243
  %247 = load %struct.vmbus_softc*, %struct.vmbus_softc** %14, align 8
  %248 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %17, align 8
  %249 = call %struct.vmbus_message* @vmbus_msghc_poll_result(%struct.vmbus_softc* %247, %struct.vmbus_msghc* %248)
  store %struct.vmbus_message* %249, %struct.vmbus_message** %15, align 8
  %250 = load %struct.vmbus_message*, %struct.vmbus_message** %15, align 8
  %251 = icmp ne %struct.vmbus_message* %250, null
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  br label %258

253:                                              ; preds = %246
  %254 = call i32 @pause(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 1)
  br label %255

255:                                              ; preds = %253
  %256 = load i32, i32* %24, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %24, align 4
  br label %243

258:                                              ; preds = %252, %243
  %259 = load %struct.vmbus_message*, %struct.vmbus_message** %15, align 8
  %260 = icmp eq %struct.vmbus_message* %259, null
  br i1 %260, label %261, label %265

261:                                              ; preds = %258
  %262 = load %struct.vmbus_softc*, %struct.vmbus_softc** %14, align 8
  %263 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %17, align 8
  %264 = call i32 @vmbus_msghc_exec_cancel(%struct.vmbus_softc* %262, %struct.vmbus_msghc* %263)
  br label %265

265:                                              ; preds = %261, %258
  br label %268

266:                                              ; preds = %233
  %267 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 1)
  br label %226

268:                                              ; preds = %265, %232
  %269 = load %struct.vmbus_message*, %struct.vmbus_message** %15, align 8
  %270 = icmp ne %struct.vmbus_message* %269, null
  br i1 %270, label %271, label %278

271:                                              ; preds = %268
  %272 = load %struct.vmbus_message*, %struct.vmbus_message** %15, align 8
  %273 = getelementptr inbounds %struct.vmbus_message, %struct.vmbus_message* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = inttoptr i64 %274 to %struct.vmbus_chanmsg_chopen_resp*
  %276 = getelementptr inbounds %struct.vmbus_chanmsg_chopen_resp, %struct.vmbus_chanmsg_chopen_resp* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %18, align 4
  br label %279

278:                                              ; preds = %268
  store i32 255, i32* %18, align 4
  br label %279

279:                                              ; preds = %278, %271
  %280 = load %struct.vmbus_softc*, %struct.vmbus_softc** %14, align 8
  %281 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %17, align 8
  %282 = call i32 @vmbus_msghc_put(%struct.vmbus_softc* %280, %struct.vmbus_msghc* %281)
  %283 = load i32, i32* %18, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %295

285:                                              ; preds = %279
  %286 = load i64, i64* @bootverbose, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %285
  %289 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %290 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %291 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  %293 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %289, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %292)
  br label %294

294:                                              ; preds = %288, %285
  store i32 0, i32* %7, align 4
  br label %331

295:                                              ; preds = %279
  %296 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %297 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %298 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %296, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %299)
  %301 = load i32, i32* @ENXIO, align 4
  store i32 %301, i32* %19, align 4
  br label %302

302:                                              ; preds = %295, %215, %161, %148
  %303 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %304 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %303, i32 0, i32 3
  %305 = call i32 @sysctl_ctx_free(i32* %304)
  %306 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %307 = call i32 @vmbus_chan_clear_chmap(%struct.vmbus_channel* %306)
  %308 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %309 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %325

312:                                              ; preds = %302
  %313 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %314 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %315 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = call i32 @vmbus_chan_gpadl_disconnect(%struct.vmbus_channel* %313, i64 %316)
  store i32 %317, i32* %25, align 4
  %318 = load i32, i32* %25, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %312
  %321 = load i32, i32* @EISCONN, align 4
  store i32 %321, i32* %19, align 4
  br label %322

322:                                              ; preds = %320, %312
  %323 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %324 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %323, i32 0, i32 1
  store i64 0, i64* %324, align 8
  br label %325

325:                                              ; preds = %322, %302
  %326 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %327 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %326, i32 0, i32 2
  %328 = load i32, i32* @VMBUS_CHAN_ST_OPENED, align 4
  %329 = call i32 @atomic_clear_int(i32* %327, i32 %328)
  %330 = load i32, i32* %19, align 4
  store i32 %330, i32* %7, align 4
  br label %331

331:                                              ; preds = %325, %294, %32
  %332 = load i32, i32* %7, align 4
  ret i32 %332
}

declare dso_local i32 @vmbus_chan_printf(%struct.vmbus_channel*, i8*, i32, ...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @atomic_testandset_int(i32*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @vmbus_chan_update_evtflagcnt(%struct.vmbus_softc*, %struct.vmbus_channel*) #1

declare dso_local i32 @VMBUS_PCPU_GET(%struct.vmbus_softc*, i32, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32*, %struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_txbr_setup(i32*, i32*, i32) #1

declare dso_local i32 @vmbus_rxbr_setup(i32*, i32*, i32) #1

declare dso_local i32 @vmbus_chan_sysctl_create(%struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_chan_gpadl_connect(%struct.vmbus_channel*, i32, i32, i64*) #1

declare dso_local i32 @vmbus_chan_set_chmap(%struct.vmbus_channel*) #1

declare dso_local %struct.vmbus_msghc* @vmbus_msghc_get(%struct.vmbus_softc*, i32) #1

declare dso_local %struct.vmbus_chanmsg_chopen* @vmbus_msghc_dataptr(%struct.vmbus_msghc*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @vmbus_msghc_exec(%struct.vmbus_softc*, %struct.vmbus_msghc*) #1

declare dso_local i32 @vmbus_msghc_put(%struct.vmbus_softc*, %struct.vmbus_msghc*) #1

declare dso_local %struct.vmbus_message* @vmbus_msghc_poll_result(%struct.vmbus_softc*, %struct.vmbus_msghc*) #1

declare dso_local i64 @vmbus_chan_is_revoked(%struct.vmbus_channel*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @vmbus_msghc_exec_cancel(%struct.vmbus_softc*, %struct.vmbus_msghc*) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @vmbus_chan_clear_chmap(%struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_chan_gpadl_disconnect(%struct.vmbus_channel*, i64) #1

declare dso_local i32 @atomic_clear_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
