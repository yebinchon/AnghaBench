; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_init_vdev_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_init_vdev_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32, %struct.TYPE_9__, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i32*, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_14__* }

@MV_ATA_TRANSFER_PIO_0 = common dso_local global i32 0, align 4
@MV_ATA_TRANSFER_UDMA_0 = common dso_local global i32 0, align 4
@MV_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64)* @init_vdev_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_vdev_params(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i64 %11
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %16, i64 %17
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %6, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 5
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %29, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 4
  store i32* %35, i32** %39, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 53
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %2
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 58
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 57
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %53, %56
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 61
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 16
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 60
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %61, %64
  %66 = icmp slt i32 %57, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %49
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 61
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 16
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 60
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %71, %74
  br label %85

76:                                               ; preds = %49
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 58
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 16
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 57
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %80, %83
  br label %85

85:                                               ; preds = %76, %67
  %86 = phi i32 [ %75, %67 ], [ %84, %76 ]
  %87 = sub nsw i32 %86, 1
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  br label %106

92:                                               ; preds = %2
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 61
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 16
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 60
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %96, %99
  %101 = sub nsw i32 %100, 1
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %92, %85
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load i64, i64* %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MV_ATA_TRANSFER_PIO_0, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  store i32 %115, i32* %119, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  store i32 %115, i32* %123, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = load i64, i64* %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 255
  br i1 %131, label %132, label %151

132:                                              ; preds = %106
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = load i64, i64* %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MV_ATA_TRANSFER_UDMA_0, align 4
  %141 = sub nsw i32 %139, %140
  %142 = add nsw i32 %141, 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  store i32 %142, i32* %146, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  store i32 %142, i32* %150, align 8
  br label %151

151:                                              ; preds = %132, %106
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
