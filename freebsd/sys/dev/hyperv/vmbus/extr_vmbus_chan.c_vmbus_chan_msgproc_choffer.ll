; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_msgproc_choffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_msgproc_choffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_softc = type { i64, i32, i32, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.vmbus_message = type { i64 }
%struct.vmbus_chanmsg_choffer = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.vmbus_channel = type { i64, i32, i64, i32, i32, i32, i32, i32*, i32*, i32, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"allocate chan%u failed\0A\00", align 1
@VMBUS_CHAN_FLAG_BATCHREAD = common dso_local global i32 0, align 4
@VMBUS_CONNID_EVENT = common dso_local global i32 0, align 4
@VMBUS_VERSION_WS2008 = common dso_local global i64 0, align 8
@VMBUS_CHOFFER_FLAG1_HASMNF = common dso_local global i32 0, align 4
@VMBUS_CHAN_TXF_HASMNF = common dso_local global i32 0, align 4
@VMBUS_MONTRIG_LEN = common dso_local global i32 0, align 4
@VMBUS_MONTRIGS_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid monitor trigger %u\00", align 1
@VMBUS_EVTFLAG_SHIFT = common dso_local global i64 0, align 8
@VMBUS_EVTFLAG_MASK = common dso_local global i64 0, align 8
@vmbus_prichan_attach_task = common dso_local global i32* null, align 8
@vmbus_prichan_detach_task = common dso_local global i32* null, align 8
@vmbus_subchan_attach_task = common dso_local global i32* null, align 8
@vmbus_subchan_detach_task = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"add chan%u failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_softc*, %struct.vmbus_message*)* @vmbus_chan_msgproc_choffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_chan_msgproc_choffer(%struct.vmbus_softc* %0, %struct.vmbus_message* %1) #0 {
  %3 = alloca %struct.vmbus_softc*, align 8
  %4 = alloca %struct.vmbus_message*, align 8
  %5 = alloca %struct.vmbus_chanmsg_choffer*, align 8
  %6 = alloca %struct.vmbus_channel*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vmbus_softc* %0, %struct.vmbus_softc** %3, align 8
  store %struct.vmbus_message* %1, %struct.vmbus_message** %4, align 8
  %11 = load %struct.vmbus_message*, %struct.vmbus_message** %4, align 8
  %12 = getelementptr inbounds %struct.vmbus_message, %struct.vmbus_message* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.vmbus_chanmsg_choffer*
  store %struct.vmbus_chanmsg_choffer* %14, %struct.vmbus_chanmsg_choffer** %5, align 8
  %15 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %16 = call %struct.vmbus_channel* @vmbus_chan_alloc(%struct.vmbus_softc* %15)
  store %struct.vmbus_channel* %16, %struct.vmbus_channel** %6, align 8
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %18 = icmp eq %struct.vmbus_channel* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %21 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.vmbus_chanmsg_choffer*, %struct.vmbus_chanmsg_choffer** %5, align 8
  %24 = getelementptr inbounds %struct.vmbus_chanmsg_choffer, %struct.vmbus_chanmsg_choffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %192

27:                                               ; preds = %2
  %28 = load %struct.vmbus_chanmsg_choffer*, %struct.vmbus_chanmsg_choffer** %5, align 8
  %29 = getelementptr inbounds %struct.vmbus_chanmsg_choffer, %struct.vmbus_chanmsg_choffer* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %32 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.vmbus_chanmsg_choffer*, %struct.vmbus_chanmsg_choffer** %5, align 8
  %34 = getelementptr inbounds %struct.vmbus_chanmsg_choffer, %struct.vmbus_chanmsg_choffer* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %37 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %36, i32 0, i32 14
  store i32 %35, i32* %37, align 4
  %38 = load %struct.vmbus_chanmsg_choffer*, %struct.vmbus_chanmsg_choffer** %5, align 8
  %39 = getelementptr inbounds %struct.vmbus_chanmsg_choffer, %struct.vmbus_chanmsg_choffer* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %42 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %41, i32 0, i32 13
  store i32 %40, i32* %42, align 8
  %43 = load %struct.vmbus_chanmsg_choffer*, %struct.vmbus_chanmsg_choffer** %5, align 8
  %44 = getelementptr inbounds %struct.vmbus_chanmsg_choffer, %struct.vmbus_chanmsg_choffer* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %47 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %46, i32 0, i32 12
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @VMBUS_CHAN_FLAG_BATCHREAD, align 4
  %49 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %50 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %49, i32 0, i32 11
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @VMBUS_CONNID_EVENT, align 4
  %54 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %55 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %54, i32 0, i32 10
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %59 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VMBUS_VERSION_WS2008, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %27
  %64 = load %struct.vmbus_chanmsg_choffer*, %struct.vmbus_chanmsg_choffer** %5, align 8
  %65 = getelementptr inbounds %struct.vmbus_chanmsg_choffer, %struct.vmbus_chanmsg_choffer* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %68 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %67, i32 0, i32 10
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %63, %27
  %72 = load %struct.vmbus_chanmsg_choffer*, %struct.vmbus_chanmsg_choffer** %5, align 8
  %73 = getelementptr inbounds %struct.vmbus_chanmsg_choffer, %struct.vmbus_chanmsg_choffer* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @VMBUS_CHOFFER_FLAG1_HASMNF, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %117

78:                                               ; preds = %71
  %79 = load i32, i32* @VMBUS_CHAN_TXF_HASMNF, align 4
  %80 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %81 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.vmbus_chanmsg_choffer*, %struct.vmbus_chanmsg_choffer** %5, align 8
  %85 = getelementptr inbounds %struct.vmbus_chanmsg_choffer, %struct.vmbus_chanmsg_choffer* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @VMBUS_MONTRIG_LEN, align 4
  %88 = sdiv i32 %86, %87
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @VMBUS_MONTRIGS_MAX, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %78
  %93 = load %struct.vmbus_chanmsg_choffer*, %struct.vmbus_chanmsg_choffer** %5, align 8
  %94 = getelementptr inbounds %struct.vmbus_chanmsg_choffer, %struct.vmbus_chanmsg_choffer* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %92, %78
  %98 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %99 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %98, i32 0, i32 5
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %108 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %107, i32 0, i32 8
  store i32* %106, i32** %108, align 8
  %109 = load %struct.vmbus_chanmsg_choffer*, %struct.vmbus_chanmsg_choffer** %5, align 8
  %110 = getelementptr inbounds %struct.vmbus_chanmsg_choffer, %struct.vmbus_chanmsg_choffer* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @VMBUS_MONTRIG_LEN, align 4
  %113 = srem i32 %111, %112
  %114 = shl i32 1, %113
  %115 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %116 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %97, %71
  %118 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %119 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %122 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @VMBUS_EVTFLAG_SHIFT, align 8
  %125 = lshr i64 %123, %124
  %126 = getelementptr inbounds i32, i32* %120, i64 %125
  %127 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %128 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %127, i32 0, i32 7
  store i32* %126, i32** %128, align 8
  %129 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %130 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @VMBUS_EVTFLAG_MASK, align 8
  %133 = and i64 %131, %132
  %134 = shl i64 1, %133
  %135 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %136 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  %137 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %138 = call i64 @VMBUS_CHAN_ISPRIMARY(%struct.vmbus_channel* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %117
  %141 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %142 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %145 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  %146 = load i32*, i32** @vmbus_prichan_attach_task, align 8
  store i32* %146, i32** %8, align 8
  %147 = load i32*, i32** @vmbus_prichan_detach_task, align 8
  store i32* %147, i32** %7, align 8
  br label %156

148:                                              ; preds = %117
  %149 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %150 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %153 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 4
  %154 = load i32*, i32** @vmbus_subchan_attach_task, align 8
  store i32* %154, i32** %8, align 8
  %155 = load i32*, i32** @vmbus_subchan_detach_task, align 8
  store i32* %155, i32** %7, align 8
  br label %156

156:                                              ; preds = %148, %140
  %157 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %158 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %157, i32 0, i32 3
  %159 = load i32*, i32** %8, align 8
  %160 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %161 = call i32 @TASK_INIT(i32* %158, i32 0, i32* %159, %struct.vmbus_channel* %160)
  %162 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %163 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %162, i32 0, i32 6
  %164 = load i32*, i32** %7, align 8
  %165 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %166 = call i32 @TASK_INIT(i32* %163, i32 0, i32* %164, %struct.vmbus_channel* %165)
  %167 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %168 = call i32 @vmbus_chan_add(%struct.vmbus_channel* %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %156
  %172 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %173 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %176 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %177, i32 %178)
  %180 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %181 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %180, i32 0, i32 5
  %182 = call i32 @atomic_subtract_int(i32* %181, i32 1)
  %183 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %184 = call i32 @vmbus_chan_free(%struct.vmbus_channel* %183)
  br label %192

185:                                              ; preds = %156
  %186 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %187 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %190 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %189, i32 0, i32 3
  %191 = call i32 @taskqueue_enqueue(i32 %188, i32* %190)
  br label %192

192:                                              ; preds = %185, %171, %19
  ret void
}

declare dso_local %struct.vmbus_channel* @vmbus_chan_alloc(%struct.vmbus_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i64 @VMBUS_CHAN_ISPRIMARY(%struct.vmbus_channel*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32*, %struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_chan_add(%struct.vmbus_channel*) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @vmbus_chan_free(%struct.vmbus_channel*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
