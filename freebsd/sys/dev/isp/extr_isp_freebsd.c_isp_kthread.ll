; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_kthread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_fc = type { i64, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.isp_fc* }

@ISP_LOG_SANCFG = common dso_local global i32 0, align 4
@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Chan %d Checking FC state\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Chan %d FC got to %s state\00", align 1
@LOOP_READY = common dso_local global i32 0, align 4
@isp_quickboot_time = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Chan %d sleep for %d seconds\00", align 1
@PRIBIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"ispf\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @isp_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_kthread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.isp_fc*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.isp_fc*
  store %struct.isp_fc* %11, %struct.isp_fc** %3, align 8
  %12 = load %struct.isp_fc*, %struct.isp_fc** %3, align 8
  %13 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %12, i32 0, i32 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %4, align 8
  %15 = load %struct.isp_fc*, %struct.isp_fc** %3, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.isp_fc*, %struct.isp_fc** %19, align 8
  %21 = ptrtoint %struct.isp_fc* %15 to i64
  %22 = ptrtoint %struct.isp_fc* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 32
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = call i32 @ISP_LOCK(%struct.TYPE_12__* %26)
  br label %28

28:                                               ; preds = %118, %1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %134

34:                                               ; preds = %28
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %37 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @isp_prt(%struct.TYPE_12__* %35, i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @isp_fc_runstate(%struct.TYPE_12__* %41, i32 %42, i32 250000)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %46 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @isp_fc_loop_statename(i32 %49)
  %51 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @isp_prt(%struct.TYPE_12__* %44, i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @LOOP_READY, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %34
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %34
  store i32 0, i32* %6, align 4
  br label %102

59:                                               ; preds = %55
  %60 = load %struct.isp_fc*, %struct.isp_fc** %3, align 8
  %61 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @isp_quickboot_time, align 4
  store i32 %65, i32* %9, align 4
  br label %70

66:                                               ; preds = %59
  %67 = load %struct.isp_fc*, %struct.isp_fc** %3, align 8
  %68 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %66, %64
  %71 = load i32, i32* @time_uptime, align 4
  %72 = load %struct.isp_fc*, %struct.isp_fc** %3, align 8
  %73 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %71, %74
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %101

80:                                               ; preds = %70
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 10
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 1, i32* %6, align 4
  br label %100

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 30
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 5, i32* %6, align 4
  br label %99

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 60
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 10, i32* %6, align 4
  br label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 120
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 20, i32* %6, align 4
  br label %97

96:                                               ; preds = %92
  store i32 30, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %95
  br label %98

98:                                               ; preds = %97, %91
  br label %99

99:                                               ; preds = %98, %87
  br label %100

100:                                              ; preds = %99, %83
  br label %101

101:                                              ; preds = %100, %79
  br label %102

102:                                              ; preds = %101, %58
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @LOOP_READY, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @isp_loop_up(%struct.TYPE_12__* %110, i32 %111)
  br label %117

113:                                              ; preds = %105
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @isp_loop_dead(%struct.TYPE_12__* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %109
  br label %118

118:                                              ; preds = %117, %102
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %121 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @isp_prt(%struct.TYPE_12__* %119, i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %123, i32 %124)
  %126 = load %struct.isp_fc*, %struct.isp_fc** %3, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32, i32* @PRIBIO, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @hz, align 4
  %132 = mul nsw i32 %130, %131
  %133 = call i32 @msleep(%struct.isp_fc* %126, i32* %128, i32 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %132)
  br label %28

134:                                              ; preds = %28
  %135 = load %struct.isp_fc*, %struct.isp_fc** %3, align 8
  %136 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %140 = call i32 @ISP_UNLOCK(%struct.TYPE_12__* %139)
  %141 = call i32 (...) @kthread_exit()
  ret void
}

declare dso_local i32 @ISP_LOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @isp_prt(%struct.TYPE_12__*, i32, i8*, i32, ...) #1

declare dso_local i32 @isp_fc_runstate(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @isp_fc_loop_statename(i32) #1

declare dso_local i32 @isp_loop_up(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @isp_loop_dead(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @msleep(%struct.isp_fc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @ISP_UNLOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @kthread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
