; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_LoginDone.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_LoginDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink = type { i64, %struct.TYPE_19__*, %struct.TYPE_16__, %struct.TYPE_15__, i32, %struct.TYPE_13__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32 }

@DATALINK_READY = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"datalink_LoginDone: Not connected.\0A\00", align 1
@DATALINK_LOGOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid logout script\0A\00", align 1
@PHYS_DEDICATED = common dso_local global i64 0, align 8
@DATALINK_LCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.datalink*)* @datalink_LoginDone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @datalink_LoginDone(%struct.datalink* %0) #0 {
  %2 = alloca %struct.datalink*, align 8
  store %struct.datalink* %0, %struct.datalink** %2, align 8
  %3 = load %struct.datalink*, %struct.datalink** %2, align 8
  %4 = getelementptr inbounds %struct.datalink, %struct.datalink* %3, i32 0, i32 4
  %5 = call i32 @chat_Finish(i32* %4)
  %6 = load %struct.datalink*, %struct.datalink** %2, align 8
  %7 = getelementptr inbounds %struct.datalink, %struct.datalink* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load %struct.datalink*, %struct.datalink** %2, align 8
  %13 = getelementptr inbounds %struct.datalink, %struct.datalink* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load %struct.datalink*, %struct.datalink** %2, align 8
  %16 = getelementptr inbounds %struct.datalink, %struct.datalink* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.datalink*, %struct.datalink** %2, align 8
  %19 = load i64, i64* @DATALINK_READY, align 8
  %20 = call i32 @datalink_NewState(%struct.datalink* %18, i64 %19)
  br label %145

21:                                               ; preds = %1
  %22 = load %struct.datalink*, %struct.datalink** %2, align 8
  %23 = getelementptr inbounds %struct.datalink, %struct.datalink* %22, i32 0, i32 1
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = call i32 @physical_Raw(%struct.TYPE_19__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %76, label %27

27:                                               ; preds = %21
  %28 = load %struct.datalink*, %struct.datalink** %2, align 8
  %29 = getelementptr inbounds %struct.datalink, %struct.datalink* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* @LogWARN, align 4
  %32 = call i32 @log_Printf(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.datalink*, %struct.datalink** %2, align 8
  %34 = getelementptr inbounds %struct.datalink, %struct.datalink* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %27
  %39 = load %struct.datalink*, %struct.datalink** %2, align 8
  %40 = load i64, i64* @DATALINK_LOGOUT, align 8
  %41 = call i32 @datalink_NewState(%struct.datalink* %39, i64 %40)
  %42 = load %struct.datalink*, %struct.datalink** %2, align 8
  %43 = getelementptr inbounds %struct.datalink, %struct.datalink* %42, i32 0, i32 4
  %44 = load %struct.datalink*, %struct.datalink** %2, align 8
  %45 = getelementptr inbounds %struct.datalink, %struct.datalink* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @chat_Setup(i32* %43, i32 %48, i32* null)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %38
  %52 = load i32, i32* @LogWARN, align 4
  %53 = call i32 @log_Printf(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %38
  br label %75

55:                                               ; preds = %27
  %56 = load %struct.datalink*, %struct.datalink** %2, align 8
  %57 = getelementptr inbounds %struct.datalink, %struct.datalink* %56, i32 0, i32 1
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  %59 = call i32 @physical_StopDeviceTimer(%struct.TYPE_19__* %58)
  %60 = load %struct.datalink*, %struct.datalink** %2, align 8
  %61 = getelementptr inbounds %struct.datalink, %struct.datalink* %60, i32 0, i32 1
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PHYS_DEDICATED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %55
  %68 = load %struct.datalink*, %struct.datalink** %2, align 8
  %69 = getelementptr inbounds %struct.datalink, %struct.datalink* %68, i32 0, i32 1
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = call i32 @physical_Close(%struct.TYPE_19__* %70)
  br label %72

72:                                               ; preds = %67, %55
  %73 = load %struct.datalink*, %struct.datalink** %2, align 8
  %74 = call i32 @datalink_HangupDone(%struct.datalink* %73)
  br label %75

75:                                               ; preds = %72, %54
  br label %144

76:                                               ; preds = %21
  %77 = load %struct.datalink*, %struct.datalink** %2, align 8
  %78 = getelementptr inbounds %struct.datalink, %struct.datalink* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  store i32 -1, i32* %79, align 8
  %80 = load %struct.datalink*, %struct.datalink** %2, align 8
  %81 = getelementptr inbounds %struct.datalink, %struct.datalink* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.datalink*, %struct.datalink** %2, align 8
  %84 = getelementptr inbounds %struct.datalink, %struct.datalink* %83, i32 0, i32 1
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 3
  %87 = load %struct.datalink*, %struct.datalink** %2, align 8
  %88 = getelementptr inbounds %struct.datalink, %struct.datalink* %87, i32 0, i32 1
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = call i32 @hdlc_Init(i32* %86, %struct.TYPE_12__* %91)
  %93 = load %struct.datalink*, %struct.datalink** %2, align 8
  %94 = getelementptr inbounds %struct.datalink, %struct.datalink* %93, i32 0, i32 1
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 2
  %97 = call i32 @async_Setup(i32* %96)
  %98 = load %struct.datalink*, %struct.datalink** %2, align 8
  %99 = getelementptr inbounds %struct.datalink, %struct.datalink* %98, i32 0, i32 1
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load %struct.datalink*, %struct.datalink** %2, align 8
  %104 = getelementptr inbounds %struct.datalink, %struct.datalink* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DATALINK_READY, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %76
  br label %118

109:                                              ; preds = %76
  %110 = load %struct.datalink*, %struct.datalink** %2, align 8
  %111 = getelementptr inbounds %struct.datalink, %struct.datalink* %110, i32 0, i32 1
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  br label %118

118:                                              ; preds = %109, %108
  %119 = phi i32 [ 0, %108 ], [ %117, %109 ]
  %120 = call i32 @lcp_Setup(%struct.TYPE_12__* %102, i32 %119)
  %121 = load %struct.datalink*, %struct.datalink** %2, align 8
  %122 = getelementptr inbounds %struct.datalink, %struct.datalink* %121, i32 0, i32 1
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = call i32 @ccp_Setup(i32* %125)
  %127 = load %struct.datalink*, %struct.datalink** %2, align 8
  %128 = load i64, i64* @DATALINK_LCP, align 8
  %129 = call i32 @datalink_NewState(%struct.datalink* %127, i64 %128)
  %130 = load %struct.datalink*, %struct.datalink** %2, align 8
  %131 = getelementptr inbounds %struct.datalink, %struct.datalink* %130, i32 0, i32 1
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = call i32 @fsm_Up(i32* %135)
  %137 = load %struct.datalink*, %struct.datalink** %2, align 8
  %138 = getelementptr inbounds %struct.datalink, %struct.datalink* %137, i32 0, i32 1
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = call i32 @fsm_Open(i32* %142)
  br label %144

144:                                              ; preds = %118, %75
  br label %145

145:                                              ; preds = %144, %11
  ret void
}

declare dso_local i32 @chat_Finish(i32*) #1

declare dso_local i32 @datalink_NewState(%struct.datalink*, i64) #1

declare dso_local i32 @physical_Raw(%struct.TYPE_19__*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @chat_Setup(i32*, i32, i32*) #1

declare dso_local i32 @physical_StopDeviceTimer(%struct.TYPE_19__*) #1

declare dso_local i32 @physical_Close(%struct.TYPE_19__*) #1

declare dso_local i32 @datalink_HangupDone(%struct.datalink*) #1

declare dso_local i32 @hdlc_Init(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @async_Setup(i32*) #1

declare dso_local i32 @lcp_Setup(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ccp_Setup(i32*) #1

declare dso_local i32 @fsm_Up(i32*) #1

declare dso_local i32 @fsm_Open(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
