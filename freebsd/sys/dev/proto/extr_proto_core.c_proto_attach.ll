; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_core.c_proto_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_core.c_proto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_softc = type { i64, %struct.proto_res*, i32, i32 }
%struct.proto_res = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.proto_res*, %struct.proto_softc* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"proto-softc\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@proto_devsw = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"proto/%s/%02x.%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"proto/%s/pcicfg\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"proto/%s/busdma\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proto_softc*, align 8
  %4 = alloca %struct.proto_res*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.proto_softc* @device_get_softc(i32 %6)
  store %struct.proto_softc* %7, %struct.proto_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.proto_softc*, %struct.proto_softc** %3, align 8
  %10 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load %struct.proto_softc*, %struct.proto_softc** %3, align 8
  %12 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %11, i32 0, i32 2
  %13 = load i32, i32* @MTX_DEF, align 4
  %14 = call i32 @mtx_init(i32* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %13)
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %121, %1
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.proto_softc*, %struct.proto_softc** %3, align 8
  %18 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %124

21:                                               ; preds = %15
  %22 = load %struct.proto_softc*, %struct.proto_softc** %3, align 8
  %23 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %22, i32 0, i32 1
  %24 = load %struct.proto_res*, %struct.proto_res** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %24, i64 %25
  store %struct.proto_res* %26, %struct.proto_res** %4, align 8
  %27 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %28 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %120 [
    i32 129, label %30
    i32 131, label %31
    i32 128, label %32
    i32 130, label %32
    i32 132, label %69
    i32 133, label %92
  ]

30:                                               ; preds = %21
  br label %120

31:                                               ; preds = %21
  br label %120

32:                                               ; preds = %21, %21
  %33 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %34 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rman_get_size(i32 %36)
  %38 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %39 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i64, i64* %5, align 8
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @device_get_desc(i32 %41)
  %43 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %44 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %47 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 130
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %52 = call i8* (i32*, i64, i32, i32, i32, i8*, i32, ...) @make_dev(i32* @proto_devsw, i64 %40, i32 0, i32 0, i32 384, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i8* %51)
  %53 = bitcast i8* %52 to %struct.TYPE_5__*
  %54 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %55 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %56, align 8
  %57 = load %struct.proto_softc*, %struct.proto_softc** %3, align 8
  %58 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %59 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store %struct.proto_softc* %57, %struct.proto_softc** %62, align 8
  %63 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %64 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %65 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store %struct.proto_res* %63, %struct.proto_res** %68, align 8
  br label %120

69:                                               ; preds = %21
  %70 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %71 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %70, i32 0, i32 1
  store i32 4096, i32* %71, align 4
  %72 = load i64, i64* %5, align 8
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @device_get_desc(i32 %73)
  %75 = call i8* (i32*, i64, i32, i32, i32, i8*, i32, ...) @make_dev(i32* @proto_devsw, i64 %72, i32 0, i32 0, i32 384, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = bitcast i8* %75 to %struct.TYPE_5__*
  %77 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %78 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %79, align 8
  %80 = load %struct.proto_softc*, %struct.proto_softc** %3, align 8
  %81 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %82 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store %struct.proto_softc* %80, %struct.proto_softc** %85, align 8
  %86 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %87 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %88 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store %struct.proto_res* %86, %struct.proto_res** %91, align 8
  br label %120

92:                                               ; preds = %21
  %93 = load %struct.proto_softc*, %struct.proto_softc** %3, align 8
  %94 = call i32 @proto_busdma_attach(%struct.proto_softc* %93)
  %95 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %96 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %99 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  %100 = load i64, i64* %5, align 8
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @device_get_desc(i32 %101)
  %103 = call i8* (i32*, i64, i32, i32, i32, i8*, i32, ...) @make_dev(i32* @proto_devsw, i64 %100, i32 0, i32 0, i32 384, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = bitcast i8* %103 to %struct.TYPE_5__*
  %105 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %106 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** %107, align 8
  %108 = load %struct.proto_softc*, %struct.proto_softc** %3, align 8
  %109 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %110 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store %struct.proto_softc* %108, %struct.proto_softc** %113, align 8
  %114 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %115 = load %struct.proto_res*, %struct.proto_res** %4, align 8
  %116 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store %struct.proto_res* %114, %struct.proto_res** %119, align 8
  br label %120

120:                                              ; preds = %21, %92, %69, %32, %31, %30
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %5, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %5, align 8
  br label %15

124:                                              ; preds = %15
  ret i32 0
}

declare dso_local %struct.proto_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @rman_get_size(i32) #1

declare dso_local i8* @make_dev(i32*, i64, i32, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @device_get_desc(i32) #1

declare dso_local i32 @proto_busdma_attach(%struct.proto_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
