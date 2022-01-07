; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_close_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_close_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, i64, i32*, i32, i32, i32*, i32, i32, %struct.vmbus_softc* }
%struct.vmbus_softc = type { i32 }
%struct.vmbus_msghc = type { i32 }
%struct.vmbus_chanmsg_chclose = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VMBUS_CHAN_ST_OPENED = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"chan%u not opened\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"can not get msg hypercall for chclose(chan%u)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@VMBUS_CHANMSG_TYPE_CHCLOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"chclose(chan%u) msg hypercall exec failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"chan%u closed\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"chan%u bufring GPADL is still connected after close\0A\00", align 1
@EISCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmbus_channel*)* @vmbus_chan_close_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_chan_close_internal(%struct.vmbus_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca %struct.vmbus_softc*, align 8
  %5 = alloca %struct.vmbus_msghc*, align 8
  %6 = alloca %struct.vmbus_chanmsg_chclose*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  %10 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %11 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %10, i32 0, i32 8
  %12 = load %struct.vmbus_softc*, %struct.vmbus_softc** %11, align 8
  store %struct.vmbus_softc* %12, %struct.vmbus_softc** %4, align 8
  br label %13

13:                                               ; preds = %27, %1
  %14 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %15 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %18 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @VMBUS_CHAN_ST_OPENED, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i64 @atomic_cmpset_int(i32* %18, i32 %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %28

27:                                               ; preds = %13
  br label %13

28:                                               ; preds = %26
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @VMBUS_CHAN_ST_OPENED, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i64, i64* @bootverbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %38 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %39 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %33
  store i32 0, i32* %2, align 4
  br label %147

43:                                               ; preds = %28
  %44 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %45 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %44, i32 0, i32 7
  %46 = call i32 @sysctl_ctx_free(i32* %45)
  %47 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %48 = call i32 @vmbus_chan_poll_cancel(%struct.vmbus_channel* %47)
  %49 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %50 = call i32 @vmbus_chan_clear_chmap(%struct.vmbus_channel* %49)
  %51 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %52 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %55 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %54, i32 0, i32 6
  %56 = call i32 @taskqueue_drain(i32* %53, i32* %55)
  %57 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %58 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %57, i32 0, i32 5
  store i32* null, i32** %58, align 8
  %59 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %60 = call %struct.vmbus_msghc* @vmbus_msghc_get(%struct.vmbus_softc* %59, i32 8)
  store %struct.vmbus_msghc* %60, %struct.vmbus_msghc** %5, align 8
  %61 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %5, align 8
  %62 = icmp eq %struct.vmbus_msghc* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %43
  %64 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %65 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %66 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %64, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @ENXIO, align 4
  store i32 %69, i32* %8, align 4
  br label %106

70:                                               ; preds = %43
  %71 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %5, align 8
  %72 = call %struct.vmbus_chanmsg_chclose* @vmbus_msghc_dataptr(%struct.vmbus_msghc* %71)
  store %struct.vmbus_chanmsg_chclose* %72, %struct.vmbus_chanmsg_chclose** %6, align 8
  %73 = load i32, i32* @VMBUS_CHANMSG_TYPE_CHCLOSE, align 4
  %74 = load %struct.vmbus_chanmsg_chclose*, %struct.vmbus_chanmsg_chclose** %6, align 8
  %75 = getelementptr inbounds %struct.vmbus_chanmsg_chclose, %struct.vmbus_chanmsg_chclose* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %78 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.vmbus_chanmsg_chclose*, %struct.vmbus_chanmsg_chclose** %6, align 8
  %81 = getelementptr inbounds %struct.vmbus_chanmsg_chclose, %struct.vmbus_chanmsg_chclose* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %5, align 8
  %83 = call i32 @vmbus_msghc_exec_noresult(%struct.vmbus_msghc* %82)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %85 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %5, align 8
  %86 = call i32 @vmbus_msghc_put(%struct.vmbus_softc* %84, %struct.vmbus_msghc* %85)
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %70
  %90 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %91 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %92 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94)
  br label %106

96:                                               ; preds = %70
  %97 = load i64, i64* @bootverbose, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %101 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %102 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %96
  br label %106

106:                                              ; preds = %105, %89, %63
  %107 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %108 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %106
  %112 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %113 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %114 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @vmbus_chan_gpadl_disconnect(%struct.vmbus_channel* %112, i64 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %111
  %120 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %121 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %122 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %120, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  %125 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %126 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %125, i32 0, i32 2
  store i32* null, i32** %126, align 8
  %127 = load i32, i32* @EISCONN, align 4
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %119, %111
  %129 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %130 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %128, %106
  %132 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %133 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %138 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %137, i32 0, i32 3
  %139 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %140 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @hyperv_dmamem_free(i32* %138, i32* %141)
  %143 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %144 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %143, i32 0, i32 2
  store i32* null, i32** %144, align 8
  br label %145

145:                                              ; preds = %136, %131
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %42
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i64 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @vmbus_chan_printf(%struct.vmbus_channel*, i8*, i32, ...) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @vmbus_chan_poll_cancel(%struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_chan_clear_chmap(%struct.vmbus_channel*) #1

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local %struct.vmbus_msghc* @vmbus_msghc_get(%struct.vmbus_softc*, i32) #1

declare dso_local %struct.vmbus_chanmsg_chclose* @vmbus_msghc_dataptr(%struct.vmbus_msghc*) #1

declare dso_local i32 @vmbus_msghc_exec_noresult(%struct.vmbus_msghc*) #1

declare dso_local i32 @vmbus_msghc_put(%struct.vmbus_softc*, %struct.vmbus_msghc*) #1

declare dso_local i32 @vmbus_chan_gpadl_disconnect(%struct.vmbus_channel*, i64) #1

declare dso_local i32 @hyperv_dmamem_free(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
