; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_dma_map_desc_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_dma_map_desc_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.sec_desc_map_info = type { i64, i64, i32, %struct.sec_lt*, %struct.sec_lt*, %struct.sec_softc* }
%struct.sec_lt = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i64, i64 }
%struct.sec_softc = type { i32 }

@descriptors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*, i32, i32)* @sec_dma_map_desc_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_dma_map_desc_cb(i8* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sec_desc_map_info*, align 8
  %10 = alloca %struct.sec_softc*, align 8
  %11 = alloca %struct.sec_lt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.sec_desc_map_info*
  store %struct.sec_desc_map_info* %16, %struct.sec_desc_map_info** %9, align 8
  %17 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %9, align 8
  %18 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %17, i32 0, i32 5
  %19 = load %struct.sec_softc*, %struct.sec_softc** %18, align 8
  store %struct.sec_softc* %19, %struct.sec_softc** %10, align 8
  store %struct.sec_lt* null, %struct.sec_lt** %11, align 8
  %20 = load %struct.sec_softc*, %struct.sec_softc** %10, align 8
  %21 = load i32, i32* @descriptors, align 4
  %22 = call i32 @SEC_LOCK_ASSERT(%struct.sec_softc* %20, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %128

26:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %121, %26
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %124

31:                                               ; preds = %27
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %13, align 8
  %44 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %9, align 8
  %45 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %31
  %50 = load i64, i64* %13, align 8
  %51 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %9, align 8
  %52 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  br label %121

55:                                               ; preds = %31
  %56 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %9, align 8
  %57 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %12, align 4
  %63 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %9, align 8
  %64 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %13, align 8
  %67 = sub nsw i64 %66, %65
  store i64 %67, i64* %13, align 8
  %68 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %9, align 8
  %69 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %9, align 8
  %71 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %55
  %76 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %9, align 8
  %77 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %13, align 8
  br label %79

79:                                               ; preds = %75, %55
  %80 = load %struct.sec_softc*, %struct.sec_softc** %10, align 8
  %81 = call %struct.sec_lt* @SEC_ALLOC_LT_ENTRY(%struct.sec_softc* %80)
  store %struct.sec_lt* %81, %struct.sec_lt** %11, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.sec_lt*, %struct.sec_lt** %11, align 8
  %84 = getelementptr inbounds %struct.sec_lt, %struct.sec_lt* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  store i64 %82, i64* %86, align 8
  %87 = load %struct.sec_lt*, %struct.sec_lt** %11, align 8
  %88 = getelementptr inbounds %struct.sec_lt, %struct.sec_lt* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.sec_lt*, %struct.sec_lt** %11, align 8
  %92 = getelementptr inbounds %struct.sec_lt, %struct.sec_lt* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.sec_lt*, %struct.sec_lt** %11, align 8
  %97 = getelementptr inbounds %struct.sec_lt, %struct.sec_lt* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  %100 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %9, align 8
  %101 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %100, i32 0, i32 4
  %102 = load %struct.sec_lt*, %struct.sec_lt** %101, align 8
  %103 = icmp eq %struct.sec_lt* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %79
  %105 = load %struct.sec_lt*, %struct.sec_lt** %11, align 8
  %106 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %9, align 8
  %107 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %106, i32 0, i32 4
  store %struct.sec_lt* %105, %struct.sec_lt** %107, align 8
  br label %108

108:                                              ; preds = %104, %79
  %109 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %9, align 8
  %110 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %9, align 8
  %115 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  br label %124

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %49
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %27

124:                                              ; preds = %119, %27
  %125 = load %struct.sec_lt*, %struct.sec_lt** %11, align 8
  %126 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %9, align 8
  %127 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %126, i32 0, i32 3
  store %struct.sec_lt* %125, %struct.sec_lt** %127, align 8
  br label %128

128:                                              ; preds = %124, %25
  ret void
}

declare dso_local i32 @SEC_LOCK_ASSERT(%struct.sec_softc*, i32) #1

declare dso_local %struct.sec_lt* @SEC_ALLOC_LT_ENTRY(%struct.sec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
