; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_core.c_proto_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_core.c_proto_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_softc = type { i32, i64, i32, %struct.proto_res* }
%struct.proto_res = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@PROTO_RES_UNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.proto_softc*, align 8
  %5 = alloca %struct.proto_res*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.proto_softc* @device_get_softc(i32 %7)
  store %struct.proto_softc* %8, %struct.proto_softc** %4, align 8
  %9 = load %struct.proto_softc*, %struct.proto_softc** %4, align 8
  %10 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %9, i32 0, i32 2
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.proto_softc*, %struct.proto_softc** %4, align 8
  %13 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.proto_softc*, %struct.proto_softc** %4, align 8
  %18 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.proto_softc*, %struct.proto_softc** %4, align 8
  %21 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %20, i32 0, i32 2
  %22 = call i32 @mtx_unlock(i32* %21)
  %23 = load %struct.proto_softc*, %struct.proto_softc** %4, align 8
  %24 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @EBUSY, align 4
  store i32 %28, i32* %2, align 4
  br label %128

29:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  br label %30

30:                                               ; preds = %111, %29
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.proto_softc*, %struct.proto_softc** %4, align 8
  %33 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %114

36:                                               ; preds = %30
  %37 = load %struct.proto_softc*, %struct.proto_softc** %4, align 8
  %38 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %37, i32 0, i32 3
  %39 = load %struct.proto_res*, %struct.proto_res** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %39, i64 %40
  store %struct.proto_res* %41, %struct.proto_res** %5, align 8
  %42 = load %struct.proto_res*, %struct.proto_res** %5, align 8
  %43 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %107 [
    i32 129, label %45
    i32 131, label %58
    i32 128, label %71
    i32 130, label %71
    i32 132, label %89
    i32 133, label %95
  ]

45:                                               ; preds = %36
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.proto_res*, %struct.proto_res** %5, align 8
  %48 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.proto_res*, %struct.proto_res** %5, align 8
  %51 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.proto_res*, %struct.proto_res** %5, align 8
  %54 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bus_release_resource(i32 %46, i32 %49, i32 %52, i32 %56)
  br label %107

58:                                               ; preds = %36
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.proto_res*, %struct.proto_res** %5, align 8
  %61 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.proto_res*, %struct.proto_res** %5, align 8
  %64 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.proto_res*, %struct.proto_res** %5, align 8
  %67 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bus_release_resource(i32 %59, i32 %62, i32 %65, i32 %69)
  br label %107

71:                                               ; preds = %36, %36
  %72 = load %struct.proto_res*, %struct.proto_res** %5, align 8
  %73 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @destroy_dev(i32 %75)
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.proto_res*, %struct.proto_res** %5, align 8
  %79 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.proto_res*, %struct.proto_res** %5, align 8
  %82 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.proto_res*, %struct.proto_res** %5, align 8
  %85 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @bus_release_resource(i32 %77, i32 %80, i32 %83, i32 %87)
  br label %107

89:                                               ; preds = %36
  %90 = load %struct.proto_res*, %struct.proto_res** %5, align 8
  %91 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @destroy_dev(i32 %93)
  br label %107

95:                                               ; preds = %36
  %96 = load %struct.proto_res*, %struct.proto_res** %5, align 8
  %97 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @destroy_dev(i32 %99)
  %101 = load %struct.proto_softc*, %struct.proto_softc** %4, align 8
  %102 = load %struct.proto_res*, %struct.proto_res** %5, align 8
  %103 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @proto_busdma_detach(%struct.proto_softc* %101, i32 %105)
  br label %107

107:                                              ; preds = %36, %95, %89, %71, %58, %45
  %108 = load i32, i32* @PROTO_RES_UNUSED, align 4
  %109 = load %struct.proto_res*, %struct.proto_res** %5, align 8
  %110 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %107
  %112 = load i64, i64* %6, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %6, align 8
  br label %30

114:                                              ; preds = %30
  %115 = load %struct.proto_softc*, %struct.proto_softc** %4, align 8
  %116 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %115, i32 0, i32 2
  %117 = call i32 @mtx_lock(i32* %116)
  %118 = load %struct.proto_softc*, %struct.proto_softc** %4, align 8
  %119 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = load %struct.proto_softc*, %struct.proto_softc** %4, align 8
  %121 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  %122 = load %struct.proto_softc*, %struct.proto_softc** %4, align 8
  %123 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %122, i32 0, i32 2
  %124 = call i32 @mtx_unlock(i32* %123)
  %125 = load %struct.proto_softc*, %struct.proto_softc** %4, align 8
  %126 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %125, i32 0, i32 2
  %127 = call i32 @mtx_destroy(i32* %126)
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %114, %27
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.proto_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @proto_busdma_detach(%struct.proto_softc*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
