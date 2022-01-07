; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_sysmouse.c_smdev_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_sysmouse.c_smdev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.tty = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i32, i32, i32 }

@MOUSE_IF_SYSMOUSE = common dso_local global i32 0, align 4
@MOUSE_MOUSE = common dso_local global i32 0, align 4
@MOUSE_MODEL_GENERIC = common dso_local global i32 0, align 4
@mouse_level = common dso_local global i32 0, align 4
@MOUSE_PROTO_MSC = common dso_local global i32 0, align 4
@MOUSE_MSC_PACKETSIZE = common dso_local global i32 0, align 4
@MOUSE_MSC_SYNCMASK = common dso_local global i32 0, align 4
@MOUSE_MSC_SYNC = common dso_local global i32 0, align 4
@MOUSE_PROTO_SYSMOUSE = common dso_local global i32 0, align 4
@MOUSE_SYS_PACKETSIZE = common dso_local global i32 0, align 4
@MOUSE_SYS_SYNCMASK = common dso_local global i32 0, align 4
@MOUSE_SYS_SYNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mouse_status = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i32, i64, %struct.thread*)* @smdev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smdev_ioctl(%struct.tty* %0, i32 %1, i64 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.tty* %0, %struct.tty** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %138 [
    i32 135, label %13
    i32 133, label %29
    i32 128, label %85
    i32 134, label %111
    i32 129, label %115
    i32 132, label %131
    i32 130, label %136
    i32 131, label %136
  ]

13:                                               ; preds = %4
  %14 = load i64, i64* %8, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 10, i32* %17, align 4
  %18 = load i32, i32* @MOUSE_IF_SYSMOUSE, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MOUSE_MOUSE, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @MOUSE_MODEL_GENERIC, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  store i32 0, i32* %5, align 4
  br label %140

29:                                               ; preds = %4
  %30 = load i64, i64* %8, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %11, align 8
  %32 = load i32, i32* @mouse_level, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %84 [
    i32 0, label %38
    i32 1, label %61
  ]

38:                                               ; preds = %29
  %39 = load i32, i32* @MOUSE_PROTO_MSC, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 -1, i32* %43, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 -1, i32* %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 5
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* @MOUSE_MSC_PACKETSIZE, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @MOUSE_MSC_SYNCMASK, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* @MOUSE_MSC_SYNC, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %56, i32* %60, align 4
  br label %84

61:                                               ; preds = %29
  %62 = load i32, i32* @MOUSE_PROTO_SYSMOUSE, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32 -1, i32* %66, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  store i32 -1, i32* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  store i32 0, i32* %70, align 4
  %71 = load i32, i32* @MOUSE_SYS_PACKETSIZE, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @MOUSE_SYS_SYNCMASK, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* @MOUSE_SYS_SYNC, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %29, %61, %38
  store i32 0, i32* %5, align 4
  br label %140

85:                                               ; preds = %4
  %86 = load i64, i64* %8, align 8
  %87 = inttoptr i64 %86 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %11, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %110

93:                                               ; preds = %85
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %98, %93
  %104 = load i32, i32* @EINVAL, align 4
  store i32 %104, i32* %5, align 4
  br label %140

105:                                              ; preds = %98
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* @mouse_level, align 4
  br label %109

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109, %92
  store i32 0, i32* %5, align 4
  br label %140

111:                                              ; preds = %4
  %112 = load i32, i32* @mouse_level, align 4
  %113 = load i64, i64* %8, align 8
  %114 = inttoptr i64 %113 to i32*
  store i32 %112, i32* %114, align 4
  store i32 0, i32* %5, align 4
  br label %140

115:                                              ; preds = %4
  %116 = load i64, i64* %8, align 8
  %117 = inttoptr i64 %116 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load i64, i64* %8, align 8
  %122 = inttoptr i64 %121 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %127

125:                                              ; preds = %120, %115
  %126 = load i32, i32* @EINVAL, align 4
  store i32 %126, i32* %5, align 4
  br label %140

127:                                              ; preds = %120
  %128 = load i64, i64* %8, align 8
  %129 = inttoptr i64 %128 to i32*
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* @mouse_level, align 4
  store i32 0, i32* %5, align 4
  br label %140

131:                                              ; preds = %4
  %132 = load i64, i64* %8, align 8
  %133 = inttoptr i64 %132 to %struct.TYPE_5__*
  %134 = bitcast %struct.TYPE_5__* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %134, i8* align 4 bitcast (%struct.TYPE_5__* @mouse_status to i8*), i64 24, i1 false)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mouse_status, i32 0, i32 5), align 4
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mouse_status, i32 0, i32 3), align 4
  store i32 %135, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mouse_status, i32 0, i32 4), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mouse_status, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mouse_status, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mouse_status, i32 0, i32 0), align 4
  store i32 0, i32* %5, align 4
  br label %140

136:                                              ; preds = %4, %4
  %137 = load i32, i32* @ENODEV, align 4
  store i32 %137, i32* %5, align 4
  br label %140

138:                                              ; preds = %4
  %139 = load i32, i32* @ENOIOCTL, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %138, %136, %131, %127, %125, %111, %110, %103, %84, %13
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
