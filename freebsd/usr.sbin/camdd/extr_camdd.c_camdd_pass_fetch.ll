; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_pass_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_pass_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camdd_dev = type { i32, i32, i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.camdd_dev_pass }
%struct.camdd_dev_pass = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%union.ccb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.camdd_buf = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.camdd_buf_data }
%struct.camdd_buf_data = type { i64, %union.ccb }
%struct.TYPE_9__ = type { i32, %struct.camdd_buf* }
%struct.TYPE_11__ = type { i64 }

@CAMIOGET = common dso_local global i32 0, align 4
@camdd_buf = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@CAMDD_STATUS_NONE = common dso_local global i64 0, align 8
@CAMDD_STATUS_ERROR = common dso_local global i64 0, align 8
@CAMDD_STATUS_EOF = common dso_local global i64 0, align 8
@CAMDD_DEV_FLAG_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @camdd_pass_fetch(%struct.camdd_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.camdd_dev*, align 8
  %4 = alloca %struct.camdd_dev_pass*, align 8
  %5 = alloca %union.ccb, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.camdd_buf*, align 8
  %10 = alloca %struct.camdd_buf_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.ccb*, align 8
  store %struct.camdd_dev* %0, %struct.camdd_dev** %3, align 8
  %13 = load %struct.camdd_dev*, %struct.camdd_dev** %3, align 8
  %14 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.camdd_dev_pass* %15, %struct.camdd_dev_pass** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.camdd_dev*, %struct.camdd_dev** %3, align 8
  %17 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %16, i32 0, i32 0
  %18 = call i32 @pthread_mutex_unlock(i32* %17)
  br label %19

19:                                               ; preds = %137, %1
  %20 = load %struct.camdd_dev_pass*, %struct.camdd_dev_pass** %4, align 8
  %21 = getelementptr inbounds %struct.camdd_dev_pass, %struct.camdd_dev_pass* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CAMIOGET, align 4
  %26 = call i32 @ioctl(i32 %24, i32 %25, %union.ccb* %5)
  store i32 %26, i32* %6, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %144

28:                                               ; preds = %19
  %29 = bitcast %union.ccb* %5 to %struct.TYPE_9__*
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.camdd_buf*, %struct.camdd_buf** %30, align 8
  store %struct.camdd_buf* %31, %struct.camdd_buf** %9, align 8
  %32 = load %struct.camdd_buf*, %struct.camdd_buf** %9, align 8
  %33 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store %struct.camdd_buf_data* %34, %struct.camdd_buf_data** %10, align 8
  %35 = load %struct.camdd_buf_data*, %struct.camdd_buf_data** %10, align 8
  %36 = getelementptr inbounds %struct.camdd_buf_data, %struct.camdd_buf_data* %35, i32 0, i32 1
  store %union.ccb* %36, %union.ccb** %12, align 8
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load %union.ccb*, %union.ccb** %12, align 8
  %40 = call i32 @bcopy(%union.ccb* %5, %union.ccb* %39, i32 16)
  %41 = load %struct.camdd_dev*, %struct.camdd_dev** %3, align 8
  %42 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %41, i32 0, i32 0
  %43 = call i32 @pthread_mutex_lock(i32* %42)
  %44 = load %struct.camdd_dev*, %struct.camdd_dev** %3, align 8
  %45 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %44, i32 0, i32 4
  %46 = load %struct.camdd_buf*, %struct.camdd_buf** %9, align 8
  %47 = load i32, i32* @camdd_buf, align 4
  %48 = load i32, i32* @links, align 4
  %49 = call i32 @STAILQ_REMOVE(i32* %45, %struct.camdd_buf* %46, i32 %47, i32 %48)
  %50 = load %struct.camdd_dev*, %struct.camdd_dev** %3, align 8
  %51 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  %54 = bitcast %union.ccb* %5 to %struct.TYPE_9__*
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CAM_STATUS_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @CAM_REQ_CMP, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %28
  %63 = load %struct.camdd_dev_pass*, %struct.camdd_dev_pass** %4, align 8
  %64 = getelementptr inbounds %struct.camdd_dev_pass, %struct.camdd_dev_pass* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = load i32, i32* @CAM_ESF_ALL, align 4
  %67 = load i32, i32* @CAM_EPF_ALL, align 4
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 @cam_error_print(%struct.TYPE_12__* %65, %union.ccb* %5, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %28
  %71 = load %struct.camdd_dev_pass*, %struct.camdd_dev_pass** %4, align 8
  %72 = getelementptr inbounds %struct.camdd_dev_pass, %struct.camdd_dev_pass* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %101 [
    i32 128, label %74
    i32 129, label %91
  ]

74:                                               ; preds = %70
  %75 = bitcast %union.ccb* %5 to %struct.TYPE_10__*
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.camdd_buf_data*, %struct.camdd_buf_data** %10, align 8
  %79 = getelementptr inbounds %struct.camdd_buf_data, %struct.camdd_buf_data* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = bitcast %union.ccb* %5 to %struct.TYPE_10__*
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = bitcast %union.ccb* %5 to %struct.TYPE_10__*
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  %87 = load %struct.camdd_dev*, %struct.camdd_dev** %3, align 8
  %88 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  br label %102

91:                                               ; preds = %70
  %92 = load %struct.camdd_buf_data*, %struct.camdd_buf_data** %10, align 8
  %93 = getelementptr inbounds %struct.camdd_buf_data, %struct.camdd_buf_data* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.camdd_dev*, %struct.camdd_dev** %3, align 8
  %98 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, %96
  store i64 %100, i64* %98, align 8
  br label %102

101:                                              ; preds = %70
  store i32 -1, i32* %2, align 4
  br label %153

102:                                              ; preds = %91, %74
  %103 = load %struct.camdd_buf*, %struct.camdd_buf** %9, align 8
  %104 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CAMDD_STATUS_NONE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load %struct.camdd_dev_pass*, %struct.camdd_dev_pass** %4, align 8
  %110 = getelementptr inbounds %struct.camdd_dev_pass, %struct.camdd_dev_pass* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @camdd_ccb_status(%union.ccb* %5, i32 %111)
  %113 = load %struct.camdd_buf*, %struct.camdd_buf** %9, align 8
  %114 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %108, %102
  %116 = load %struct.camdd_buf*, %struct.camdd_buf** %9, align 8
  %117 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @CAMDD_STATUS_ERROR, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %137

124:                                              ; preds = %115
  %125 = load %struct.camdd_buf*, %struct.camdd_buf** %9, align 8
  %126 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @CAMDD_STATUS_EOF, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load i32, i32* @CAMDD_DEV_FLAG_EOF, align 4
  %132 = load %struct.camdd_dev*, %struct.camdd_dev** %3, align 8
  %133 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %130, %124
  br label %137

137:                                              ; preds = %136, %121
  %138 = load %struct.camdd_dev*, %struct.camdd_dev** %3, align 8
  %139 = load %struct.camdd_buf*, %struct.camdd_buf** %9, align 8
  %140 = call i32 @camdd_complete_buf(%struct.camdd_dev* %138, %struct.camdd_buf* %139, i32* %8)
  %141 = load %struct.camdd_dev*, %struct.camdd_dev** %3, align 8
  %142 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %141, i32 0, i32 0
  %143 = call i32 @pthread_mutex_unlock(i32* %142)
  br label %19

144:                                              ; preds = %19
  %145 = load %struct.camdd_dev*, %struct.camdd_dev** %3, align 8
  %146 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %145, i32 0, i32 0
  %147 = call i32 @pthread_mutex_lock(i32* %146)
  %148 = load i32, i32* %8, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store i32 -1, i32* %2, align 4
  br label %153

151:                                              ; preds = %144
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %151, %150, %101
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @ioctl(i32, i32, %union.ccb*) #1

declare dso_local i32 @bcopy(%union.ccb*, %union.ccb*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.camdd_buf*, i32, i32) #1

declare dso_local i32 @cam_error_print(%struct.TYPE_12__*, %union.ccb*, i32, i32, i32) #1

declare dso_local i64 @camdd_ccb_status(%union.ccb*, i32) #1

declare dso_local i32 @camdd_complete_buf(%struct.camdd_dev*, %struct.camdd_buf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
