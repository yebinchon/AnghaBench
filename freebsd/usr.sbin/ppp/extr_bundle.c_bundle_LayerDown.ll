; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_LayerDown.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_LayerDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i64, %struct.TYPE_16__*, %struct.TYPE_11__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.bundle = type { %struct.TYPE_17__, %struct.datalink*, i64, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.datalink = type { i64, %struct.TYPE_15__*, %struct.datalink* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.fsm }
%struct.TYPE_12__ = type { i64 }

@PROTO_LCP = common dso_local global i64 0, align 8
@DATALINK_CLOSED = common dso_local global i64 0, align 8
@DATALINK_HANGUP = common dso_local global i64 0, align 8
@LogALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Oops, lost an unrecognised datalink (%s) !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.fsm*)* @bundle_LayerDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bundle_LayerDown(i8* %0, %struct.fsm* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fsm*, align 8
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca %struct.datalink*, align 8
  %7 = alloca %struct.datalink*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.fsm* %1, %struct.fsm** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.bundle*
  store %struct.bundle* %10, %struct.bundle** %5, align 8
  %11 = load %struct.fsm*, %struct.fsm** %4, align 8
  %12 = getelementptr inbounds %struct.fsm, %struct.fsm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @isncp(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %2
  %17 = load %struct.fsm*, %struct.fsm** %4, align 8
  %18 = getelementptr inbounds %struct.fsm, %struct.fsm* %17, i32 0, i32 2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = call i64 @ncp_LayersOpen(i32* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %16
  %24 = load %struct.bundle*, %struct.bundle** %5, align 8
  %25 = getelementptr inbounds %struct.bundle, %struct.bundle* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.bundle*, %struct.bundle** %5, align 8
  %31 = call i32 @bundle_StopSessionTimer(%struct.bundle* %30)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.bundle*, %struct.bundle** %5, align 8
  %34 = call i32 @bundle_StopIdleTimer(%struct.bundle* %33)
  %35 = load %struct.bundle*, %struct.bundle** %5, align 8
  %36 = getelementptr inbounds %struct.bundle, %struct.bundle* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.bundle*, %struct.bundle** %5, align 8
  %38 = getelementptr inbounds %struct.bundle, %struct.bundle* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = call i32 @mp_StopAutoloadTimer(%struct.TYPE_18__* %39)
  br label %41

41:                                               ; preds = %32, %16
  br label %129

42:                                               ; preds = %2
  %43 = load %struct.fsm*, %struct.fsm** %4, align 8
  %44 = getelementptr inbounds %struct.fsm, %struct.fsm* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PROTO_LCP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %128

48:                                               ; preds = %42
  %49 = load %struct.bundle*, %struct.bundle** %5, align 8
  %50 = call i32 @bundle_LinksRemoved(%struct.bundle* %49)
  store %struct.datalink* null, %struct.datalink** %7, align 8
  store i32 0, i32* %8, align 4
  %51 = load %struct.bundle*, %struct.bundle** %5, align 8
  %52 = getelementptr inbounds %struct.bundle, %struct.bundle* %51, i32 0, i32 1
  %53 = load %struct.datalink*, %struct.datalink** %52, align 8
  store %struct.datalink* %53, %struct.datalink** %6, align 8
  br label %54

54:                                               ; preds = %85, %48
  %55 = load %struct.datalink*, %struct.datalink** %6, align 8
  %56 = icmp ne %struct.datalink* %55, null
  br i1 %56, label %57, label %89

57:                                               ; preds = %54
  %58 = load %struct.fsm*, %struct.fsm** %4, align 8
  %59 = load %struct.datalink*, %struct.datalink** %6, align 8
  %60 = getelementptr inbounds %struct.datalink, %struct.datalink* %59, i32 0, i32 1
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = icmp eq %struct.fsm* %58, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load %struct.datalink*, %struct.datalink** %6, align 8
  store %struct.datalink* %67, %struct.datalink** %7, align 8
  br label %84

68:                                               ; preds = %57
  %69 = load %struct.datalink*, %struct.datalink** %6, align 8
  %70 = getelementptr inbounds %struct.datalink, %struct.datalink* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DATALINK_CLOSED, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load %struct.datalink*, %struct.datalink** %6, align 8
  %76 = getelementptr inbounds %struct.datalink, %struct.datalink* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DATALINK_HANGUP, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %80, %74, %68
  br label %84

84:                                               ; preds = %83, %66
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.datalink*, %struct.datalink** %6, align 8
  %87 = getelementptr inbounds %struct.datalink, %struct.datalink* %86, i32 0, i32 2
  %88 = load %struct.datalink*, %struct.datalink** %87, align 8
  store %struct.datalink* %88, %struct.datalink** %6, align 8
  br label %54

89:                                               ; preds = %54
  %90 = load %struct.bundle*, %struct.bundle** %5, align 8
  %91 = getelementptr inbounds %struct.bundle, %struct.bundle* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %89
  %97 = load %struct.bundle*, %struct.bundle** %5, align 8
  %98 = call i32 @bundle_CalculateBandwidth(%struct.bundle* %97)
  %99 = load %struct.datalink*, %struct.datalink** %7, align 8
  %100 = icmp ne %struct.datalink* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.bundle*, %struct.bundle** %5, align 8
  %103 = getelementptr inbounds %struct.bundle, %struct.bundle* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load %struct.datalink*, %struct.datalink** %7, align 8
  %106 = call i32 @mp_LinkLost(%struct.TYPE_18__* %104, %struct.datalink* %105)
  br label %115

107:                                              ; preds = %96
  %108 = load i32, i32* @LogALERT, align 4
  %109 = load %struct.fsm*, %struct.fsm** %4, align 8
  %110 = getelementptr inbounds %struct.fsm, %struct.fsm* %109, i32 0, i32 1
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @log_Printf(i32 %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %107, %101
  br label %116

116:                                              ; preds = %115, %89
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %116
  %120 = load %struct.bundle*, %struct.bundle** %5, align 8
  %121 = getelementptr inbounds %struct.bundle, %struct.bundle* %120, i32 0, i32 0
  %122 = call i32 @ncp2initial(%struct.TYPE_17__* %121)
  %123 = load %struct.bundle*, %struct.bundle** %5, align 8
  %124 = getelementptr inbounds %struct.bundle, %struct.bundle* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = call i32 @mp_Down(%struct.TYPE_18__* %125)
  br label %127

127:                                              ; preds = %119, %116
  br label %128

128:                                              ; preds = %127, %42
  br label %129

129:                                              ; preds = %128, %41
  ret void
}

declare dso_local i64 @isncp(i64) #1

declare dso_local i64 @ncp_LayersOpen(i32*) #1

declare dso_local i32 @bundle_StopSessionTimer(%struct.bundle*) #1

declare dso_local i32 @bundle_StopIdleTimer(%struct.bundle*) #1

declare dso_local i32 @mp_StopAutoloadTimer(%struct.TYPE_18__*) #1

declare dso_local i32 @bundle_LinksRemoved(%struct.bundle*) #1

declare dso_local i32 @bundle_CalculateBandwidth(%struct.bundle*) #1

declare dso_local i32 @mp_LinkLost(%struct.TYPE_18__*, %struct.datalink*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @ncp2initial(%struct.TYPE_17__*) #1

declare dso_local i32 @mp_Down(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
