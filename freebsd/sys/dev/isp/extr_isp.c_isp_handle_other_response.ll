; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_handle_other_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_handle_other_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i8*, i32 }

@ISP_LOG_WARN1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Marker Response\00", align 1
@ISP_ROLE_NONE = common dso_local global i32 0, align 4
@LOOP_HAVE_LINK = common dso_local global i8* null, align 8
@ISPASYNC_CHANGE_NOTIFY = common dso_local global i32 0, align 4
@ISPASYNC_CHANGE_OTHER = common dso_local global i32 0, align 4
@LOOP_NIL = common dso_local global i8* null, align 8
@ISPASYNC_LOOP_DOWN = common dso_local global i32 0, align 4
@RIDACQ_STS_COMPLETE = common dso_local global i32 0, align 4
@RIDACQ_STS_CHANGED = common dso_local global i32 0, align 4
@LOOP_HAVE_ADDR = common dso_local global i8* null, align 8
@QENTRY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32*, i32*)* @isp_handle_other_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_handle_other_response(%struct.TYPE_16__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %169 [
    i32 134, label %19
    i32 130, label %23
    i32 136, label %146
    i32 128, label %146
    i32 129, label %146
    i32 135, label %146
    i32 143, label %168
    i32 141, label %168
    i32 133, label %168
    i32 132, label %168
    i32 140, label %168
    i32 142, label %168
    i32 139, label %168
    i32 138, label %168
    i32 137, label %168
    i32 145, label %168
    i32 144, label %168
    i32 131, label %168
  ]

19:                                               ; preds = %4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = load i32, i32* @ISP_LOG_WARN1, align 4
  %22 = call i32 @isp_prt(%struct.TYPE_16__* %20, i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %170

23:                                               ; preds = %4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = bitcast i32* %25 to %struct.TYPE_17__*
  %27 = call i32 @isp_get_ridacq(%struct.TYPE_16__* %24, %struct.TYPE_17__* %26, %struct.TYPE_17__* %10)
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 16
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %30, %32
  store i32 %33, i32* %14, align 4
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %100

37:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %96, %37
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %99

44:                                               ; preds = %38
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call %struct.TYPE_18__* @FCPARAM(%struct.TYPE_16__* %45, i32 %46)
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %16, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ISP_ROLE_NONE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %96

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %59, 1
  br label %61

61:                                               ; preds = %58, %57
  %62 = phi i32 [ 127, %57 ], [ %60, %58 ]
  store i32 %62, i32* %12, align 4
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sdiv i32 %65, 16
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = srem i32 %70, 16
  %72 = shl i32 1, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %61
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75, %61
  %79 = load i8*, i8** @LOOP_HAVE_LINK, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = load i32, i32* @ISPASYNC_CHANGE_NOTIFY, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @ISPASYNC_CHANGE_OTHER, align 4
  %86 = call i32 (%struct.TYPE_16__*, i32, i32, ...) @isp_async(%struct.TYPE_16__* %82, i32 %83, i32 %84, i32 %85)
  br label %95

87:                                               ; preds = %75
  %88 = load i8*, i8** @LOOP_NIL, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %92 = load i32, i32* @ISPASYNC_LOOP_DOWN, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 (%struct.TYPE_16__*, i32, i32, ...) @isp_async(%struct.TYPE_16__* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %87, %78
  br label %96

96:                                               ; preds = %95, %53
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %38

99:                                               ; preds = %38
  br label %145

100:                                              ; preds = %23
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call %struct.TYPE_18__* @FCPARAM(%struct.TYPE_16__* %101, i32 %103)
  store %struct.TYPE_18__* %104, %struct.TYPE_18__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @RIDACQ_STS_COMPLETE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %114, label %109

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @RIDACQ_STS_CHANGED, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %135

114:                                              ; preds = %109, %100
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 9
  %120 = and i32 %119, 7
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load i8*, i8** @LOOP_HAVE_ADDR, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = load i32, i32* @ISPASYNC_CHANGE_NOTIFY, align 4
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ISPASYNC_CHANGE_OTHER, align 4
  %134 = call i32 (%struct.TYPE_16__*, i32, i32, ...) @isp_async(%struct.TYPE_16__* %129, i32 %130, i32 %132, i32 %133)
  br label %144

135:                                              ; preds = %109
  %136 = load i8*, i8** @LOOP_NIL, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %140 = load i32, i32* @ISPASYNC_LOOP_DOWN, align 4
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (%struct.TYPE_16__*, i32, i32, ...) @isp_async(%struct.TYPE_16__* %139, i32 %140, i32 %142)
  br label %144

144:                                              ; preds = %135, %114
  br label %145

145:                                              ; preds = %144, %99
  store i32 1, i32* %5, align 4
  br label %170

146:                                              ; preds = %4, %4, %4, %4
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @ISP_IOXGET_32(%struct.TYPE_16__* %147, i32* %149, i32 %150)
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %153 = load i32, i32* %13, align 4
  %154 = call i8* @isp_find_xs(%struct.TYPE_16__* %152, i32 %153)
  store i8* %154, i8** %15, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %167

157:                                              ; preds = %146
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @isp_destroy_handle(%struct.TYPE_16__* %158, i32 %159)
  %161 = load i8*, i8** %15, align 8
  %162 = load i32*, i32** %8, align 8
  %163 = load i32, i32* @QENTRY_LEN, align 4
  %164 = call i32 @memcpy(i8* %161, i32* %162, i32 %163)
  %165 = load i8*, i8** %15, align 8
  %166 = call i32 @wakeup(i8* %165)
  br label %167

167:                                              ; preds = %157, %146
  store i32 1, i32* %5, align 4
  br label %170

168:                                              ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  br label %169

169:                                              ; preds = %4, %168
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %169, %167, %145, %19
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @isp_prt(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @isp_get_ridacq(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @FCPARAM(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @isp_async(%struct.TYPE_16__*, i32, i32, ...) #1

declare dso_local i32 @ISP_IOXGET_32(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i8* @isp_find_xs(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @isp_destroy_handle(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @wakeup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
