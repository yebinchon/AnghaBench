; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapaioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapaioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.cyapa_softc* }
%struct.cyapa_softc = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i8*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.thread = type { i32 }

@MOUSE_MODEL_GENERIC = common dso_local global i32 0, align 4
@MOUSE_RES_LOW = common dso_local global i64 0, align 8
@MOUSE_PROTO_PS2 = common dso_local global i8* null, align 8
@MOUSE_PS2_PACKETSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @cyapaioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapaioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.cyapa_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %13 = load %struct.cdev*, %struct.cdev** %6, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load %struct.cyapa_softc*, %struct.cyapa_softc** %14, align 8
  store %struct.cyapa_softc* %15, %struct.cyapa_softc** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.cyapa_softc*, %struct.cyapa_softc** %11, align 8
  %17 = call i32 @cyapa_lock(%struct.cyapa_softc* %16)
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %115 [
    i32 131, label %19
    i32 129, label %37
    i32 130, label %77
    i32 128, label %84
  ]

19:                                               ; preds = %5
  %20 = load i64, i64* %8, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_4__*
  %22 = load %struct.cyapa_softc*, %struct.cyapa_softc** %11, align 8
  %23 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %22, i32 0, i32 2
  %24 = bitcast %struct.TYPE_4__* %21 to i8*
  %25 = bitcast %struct.TYPE_4__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 8 %25, i64 4, i1 false)
  %26 = load %struct.cyapa_softc*, %struct.cyapa_softc** %11, align 8
  %27 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load i32, i32* @MOUSE_MODEL_GENERIC, align 4
  %33 = load i64, i64* %8, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %31, %19
  br label %117

37:                                               ; preds = %5
  %38 = load i64, i64* %8, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_3__*
  %40 = load %struct.cyapa_softc*, %struct.cyapa_softc** %11, align 8
  %41 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %40, i32 0, i32 1
  %42 = bitcast %struct.TYPE_3__* %39 to i8*
  %43 = bitcast %struct.TYPE_3__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 24, i1 false)
  %44 = load i64, i64* @MOUSE_RES_LOW, align 8
  %45 = load %struct.cyapa_softc*, %struct.cyapa_softc** %11, align 8
  %46 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %44, %48
  %50 = load i64, i64* %8, align 8
  %51 = inttoptr i64 %50 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i64 %49, i64* %52, align 8
  %53 = load %struct.cyapa_softc*, %struct.cyapa_softc** %11, align 8
  %54 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %76 [
    i32 0, label %57
    i32 2, label %66
  ]

57:                                               ; preds = %37
  %58 = load i8*, i8** @MOUSE_PROTO_PS2, align 8
  %59 = load i64, i64* %8, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_3__*
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i8* %58, i8** %61, align 8
  %62 = load i32, i32* @MOUSE_PS2_PACKETSIZE, align 4
  %63 = load i64, i64* %8, align 8
  %64 = inttoptr i64 %63 to %struct.TYPE_3__*
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  br label %76

66:                                               ; preds = %37
  %67 = load i8*, i8** @MOUSE_PROTO_PS2, align 8
  %68 = load i64, i64* %8, align 8
  %69 = inttoptr i64 %68 to %struct.TYPE_3__*
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i8* %67, i8** %70, align 8
  %71 = load i32, i32* @MOUSE_PS2_PACKETSIZE, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i64, i64* %8, align 8
  %74 = inttoptr i64 %73 to %struct.TYPE_3__*
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %37, %66, %57
  br label %117

77:                                               ; preds = %5
  %78 = load %struct.cyapa_softc*, %struct.cyapa_softc** %11, align 8
  %79 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = inttoptr i64 %82 to i32*
  store i32 %81, i32* %83, align 4
  br label %117

84:                                               ; preds = %5
  %85 = load i64, i64* %8, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i64, i64* %8, align 8
  %91 = inttoptr i64 %90 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 2
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %12, align 4
  br label %117

96:                                               ; preds = %89, %84
  %97 = load i64, i64* %8, align 8
  %98 = inttoptr i64 %97 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 2, i32 0
  %103 = load %struct.cyapa_softc*, %struct.cyapa_softc** %11, align 8
  %104 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load %struct.cyapa_softc*, %struct.cyapa_softc** %11, align 8
  %107 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 1, i32 0
  %113 = load %struct.cyapa_softc*, %struct.cyapa_softc** %11, align 8
  %114 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %117

115:                                              ; preds = %5
  %116 = load i32, i32* @ENOTTY, align 4
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %115, %96, %94, %77, %76, %36
  %118 = load %struct.cyapa_softc*, %struct.cyapa_softc** %11, align 8
  %119 = call i32 @cyapa_unlock(%struct.cyapa_softc* %118)
  %120 = load i32, i32* %12, align 4
  ret i32 %120
}

declare dso_local i32 @cyapa_lock(%struct.cyapa_softc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cyapa_unlock(%struct.cyapa_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
