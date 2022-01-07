; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_sysmouse.c_sysmouse_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_sysmouse.c_sysmouse_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i32, i32, i32 }

@sysmouse_lock = common dso_local global i32 0, align 4
@SM_ASYNC = common dso_local global i32 0, align 4
@sysmouse_flags = common dso_local global i32 0, align 4
@sysmouse_sigio = common dso_local global i32 0, align 4
@MOUSE_IF_SYSMOUSE = common dso_local global i32 0, align 4
@MOUSE_MOUSE = common dso_local global i32 0, align 4
@MOUSE_MODEL_GENERIC = common dso_local global i32 0, align 4
@sysmouse_level = common dso_local global i32 0, align 4
@MOUSE_PROTO_MSC = common dso_local global i32 0, align 4
@MOUSE_MSC_PACKETSIZE = common dso_local global i32 0, align 4
@MOUSE_MSC_SYNCMASK = common dso_local global i32 0, align 4
@MOUSE_MSC_SYNC = common dso_local global i32 0, align 4
@MOUSE_PROTO_SYSMOUSE = common dso_local global i32 0, align 4
@MOUSE_SYS_PACKETSIZE = common dso_local global i32 0, align 4
@MOUSE_SYS_SYNCMASK = common dso_local global i32 0, align 4
@MOUSE_SYS_SYNC = common dso_local global i32 0, align 4
@sysmouse_status = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @sysmouse_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysmouse_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %149 [
    i32 138, label %17
    i32 136, label %34
    i32 137, label %35
    i32 135, label %39
    i32 134, label %44
    i32 133, label %60
    i32 132, label %64
    i32 131, label %114
    i32 129, label %121
    i32 128, label %134
    i32 130, label %148
  ]

17:                                               ; preds = %5
  %18 = call i32 @mtx_lock(i32* @sysmouse_lock)
  %19 = load i64, i64* %9, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @SM_ASYNC, align 4
  %25 = load i32, i32* @sysmouse_flags, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* @sysmouse_flags, align 4
  br label %32

27:                                               ; preds = %17
  %28 = load i32, i32* @SM_ASYNC, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* @sysmouse_flags, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* @sysmouse_flags, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = call i32 @mtx_unlock(i32* @sysmouse_lock)
  store i32 0, i32* %6, align 4
  br label %151

34:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %151

35:                                               ; preds = %5
  %36 = call i32 @fgetown(i32* @sysmouse_sigio)
  %37 = load i64, i64* %9, align 8
  %38 = inttoptr i64 %37 to i32*
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %6, align 4
  br label %151

39:                                               ; preds = %5
  %40 = load i64, i64* %9, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fsetown(i32 %42, i32* @sysmouse_sigio)
  store i32 %43, i32* %6, align 4
  br label %151

44:                                               ; preds = %5
  %45 = load i64, i64* %9, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %12, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 10, i32* %48, align 4
  %49 = load i32, i32* @MOUSE_IF_SYSMOUSE, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @MOUSE_MOUSE, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @MOUSE_MODEL_GENERIC, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  store i32 0, i32* %6, align 4
  br label %151

60:                                               ; preds = %5
  %61 = load i32, i32* @sysmouse_level, align 4
  %62 = load i64, i64* %9, align 8
  %63 = inttoptr i64 %62 to i32*
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %6, align 4
  br label %151

64:                                               ; preds = %5
  %65 = load i64, i64* %9, align 8
  %66 = inttoptr i64 %65 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %13, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 -1, i32* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 -1, i32* %70, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 6
  store i32 0, i32* %72, align 8
  %73 = load i32, i32* @sysmouse_level, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %113 [
    i32 0, label %79
    i32 1, label %96
  ]

79:                                               ; preds = %64
  %80 = load i32, i32* @MOUSE_PROTO_MSC, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @MOUSE_MSC_PACKETSIZE, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @MOUSE_MSC_SYNCMASK, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* @MOUSE_MSC_SYNC, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %91, i32* %95, align 4
  br label %113

96:                                               ; preds = %64
  %97 = load i32, i32* @MOUSE_PROTO_SYSMOUSE, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @MOUSE_SYS_PACKETSIZE, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @MOUSE_SYS_SYNCMASK, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* @MOUSE_SYS_SYNC, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %64, %96, %79
  store i32 0, i32* %6, align 4
  br label %151

114:                                              ; preds = %5
  %115 = call i32 @mtx_lock(i32* @sysmouse_lock)
  %116 = load i64, i64* %9, align 8
  %117 = inttoptr i64 %116 to %struct.TYPE_5__*
  %118 = bitcast %struct.TYPE_5__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 bitcast (%struct.TYPE_5__* @sysmouse_status to i8*), i64 24, i1 false)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sysmouse_status, i32 0, i32 5), align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sysmouse_status, i32 0, i32 3), align 4
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sysmouse_status, i32 0, i32 4), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sysmouse_status, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sysmouse_status, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sysmouse_status, i32 0, i32 0), align 4
  %120 = call i32 @mtx_unlock(i32* @sysmouse_lock)
  store i32 0, i32* %6, align 4
  br label %151

121:                                              ; preds = %5
  %122 = load i64, i64* %9, align 8
  %123 = inttoptr i64 %122 to i32*
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 1
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* @EINVAL, align 4
  store i32 %131, i32* %6, align 4
  br label %151

132:                                              ; preds = %127, %121
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* @sysmouse_level, align 4
  store i32 0, i32* %6, align 4
  br label %151

134:                                              ; preds = %5
  %135 = load i64, i64* %9, align 8
  %136 = inttoptr i64 %135 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %136, %struct.TYPE_6__** %15, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  switch i32 %139, label %145 [
    i32 -1, label %140
    i32 0, label %141
    i32 1, label %141
  ]

140:                                              ; preds = %134
  br label %147

141:                                              ; preds = %134, %134
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* @sysmouse_level, align 4
  br label %147

145:                                              ; preds = %134
  %146 = load i32, i32* @EINVAL, align 4
  store i32 %146, i32* %6, align 4
  br label %151

147:                                              ; preds = %141, %140
  store i32 0, i32* %6, align 4
  br label %151

148:                                              ; preds = %5
  store i32 0, i32* %6, align 4
  br label %151

149:                                              ; preds = %5
  %150 = load i32, i32* @ENOIOCTL, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %149, %148, %147, %145, %132, %130, %114, %113, %60, %44, %39, %35, %34, %32
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @fgetown(i32*) #1

declare dso_local i32 @fsetown(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
