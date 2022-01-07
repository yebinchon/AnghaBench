; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_mouse.c_ams_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_mouse.c_ams_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.adb_mouse_softc = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MOUSE_POSCHANGED = common dso_local global i32 0, align 4
@MOUSE_BUTTONSCHANGED = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @ams_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.adb_mouse_softc*, align 8
  %13 = alloca %struct.TYPE_4__, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %15 = load %struct.cdev*, %struct.cdev** %7, align 8
  %16 = call %struct.adb_mouse_softc* @CDEV_GET_SOFTC(%struct.cdev* %15)
  store %struct.adb_mouse_softc* %16, %struct.adb_mouse_softc** %12, align 8
  %17 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %18 = icmp eq %struct.adb_mouse_softc* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @EIO, align 4
  store i32 %20, i32* %6, align 4
  br label %166

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %163 [
    i32 133, label %23
    i32 131, label %29
    i32 128, label %36
    i32 129, label %43
    i32 132, label %77
    i32 130, label %84
  ]

23:                                               ; preds = %21
  %24 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %25 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %9, align 8
  %28 = inttoptr i64 %27 to i32*
  store i32 %26, i32* %28, align 4
  br label %165

29:                                               ; preds = %21
  %30 = load i64, i64* %9, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_4__*
  %32 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %33 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %32, i32 0, i32 5
  %34 = bitcast %struct.TYPE_4__* %31 to i8*
  %35 = bitcast %struct.TYPE_4__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false)
  br label %165

36:                                               ; preds = %21
  %37 = load i64, i64* %9, align 8
  %38 = inttoptr i64 %37 to %struct.TYPE_4__*
  %39 = bitcast %struct.TYPE_4__* %13 to i8*
  %40 = bitcast %struct.TYPE_4__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 8, i1 false)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %42 = ptrtoint i32* %41 to i64
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %21, %36
  %44 = load i64, i64* %9, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %165

49:                                               ; preds = %43
  %50 = load i64, i64* %9, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %56 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %59 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 8, i32* %60, align 4
  br label %165

61:                                               ; preds = %49
  %62 = load i64, i64* %9, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %68 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  %70 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %71 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 5, i32* %72, align 4
  br label %165

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %6, align 4
  br label %166

77:                                               ; preds = %21
  %78 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %79 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %9, align 8
  %83 = inttoptr i64 %82 to i32*
  store i32 %81, i32* %83, align 4
  br label %165

84:                                               ; preds = %21
  %85 = load i64, i64* %9, align 8
  %86 = inttoptr i64 %85 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %86, %struct.TYPE_3__** %14, align 8
  %87 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %88 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %87, i32 0, i32 2
  %89 = call i32 @mtx_lock(i32* %88)
  %90 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %91 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %96 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %102, %105
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %110 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %84
  %114 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %115 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113, %84
  %119 = load i32, i32* @MOUSE_POSCHANGED, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %113
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load i32, i32* @MOUSE_BUTTONSCHANGED, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %132, %124
  %139 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %140 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %145 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  store i32 0, i32* %150, align 4
  %151 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %152 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %151, i32 0, i32 4
  store i32 0, i32* %152, align 4
  %153 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %154 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %153, i32 0, i32 3
  store i32 0, i32* %154, align 4
  %155 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %156 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %159 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %12, align 8
  %161 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %160, i32 0, i32 2
  %162 = call i32 @mtx_unlock(i32* %161)
  br label %165

163:                                              ; preds = %21
  %164 = load i32, i32* @ENOTTY, align 4
  store i32 %164, i32* %6, align 4
  br label %166

165:                                              ; preds = %138, %77, %66, %54, %48, %29, %23
  store i32 0, i32* %6, align 4
  br label %166

166:                                              ; preds = %165, %163, %75, %19
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local %struct.adb_mouse_softc* @CDEV_GET_SOFTC(%struct.cdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
