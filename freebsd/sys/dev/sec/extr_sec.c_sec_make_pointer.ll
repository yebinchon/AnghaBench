; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_make_pointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_make_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_softc = type { i32 }
%struct.sec_desc = type { %struct.TYPE_7__*, i32, i32* }
%struct.TYPE_7__ = type { %struct.sec_hw_desc_ptr* }
%struct.sec_hw_desc_ptr = type { i32, i32, i64, i64 }
%struct.sec_desc_map_info = type { %struct.TYPE_8__*, i64, %struct.TYPE_6__*, i64, i32, i32*, i32*, i64, i64, %struct.sec_softc* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@descriptors = common dso_local global i32 0, align 4
@SEC_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_softc*, %struct.sec_desc*, i64, i8*, i64, i64, i32)* @sec_make_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_make_pointer(%struct.sec_softc* %0, %struct.sec_desc* %1, i64 %2, i8* %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sec_softc*, align 8
  %10 = alloca %struct.sec_desc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sec_desc_map_info, align 8
  %17 = alloca %struct.sec_hw_desc_ptr*, align 8
  %18 = alloca i32, align 4
  store %struct.sec_softc* %0, %struct.sec_softc** %9, align 8
  store %struct.sec_desc* %1, %struct.sec_desc** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %16, i32 0, i32 0
  %20 = load %struct.sec_softc*, %struct.sec_softc** %9, align 8
  %21 = bitcast %struct.sec_softc* %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %19, align 8
  %22 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %16, i32 0, i32 1
  %23 = load i64, i64* %14, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %16, i32 0, i32 2
  %25 = load i64, i64* %13, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %24, align 8
  %27 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %16, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %16, i32 0, i32 4
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %16, i32 0, i32 5
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %16, i32 0, i32 6
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %16, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %16, i32 0, i32 8
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %16, i32 0, i32 9
  store %struct.sec_softc* null, %struct.sec_softc** %33, align 8
  %34 = load %struct.sec_softc*, %struct.sec_softc** %9, align 8
  %35 = load i32, i32* @descriptors, align 4
  %36 = call i32 @SEC_LOCK_ASSERT(%struct.sec_softc* %34, i32 %35)
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @SEC_MEMORY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %7
  %41 = load i8*, i8** %12, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = bitcast i32* %44 to i8*
  store i8* %45, i8** %12, align 8
  %46 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %16, i32 0, i32 3
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %40, %7
  %48 = load %struct.sec_softc*, %struct.sec_softc** %9, align 8
  %49 = load %struct.sec_desc*, %struct.sec_desc** %10, align 8
  %50 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i8*, i8** %12, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @sec_desc_map_dma(%struct.sec_softc* %48, i32* %53, i8* %54, i64 %55, i32 %56, %struct.sec_desc_map_info* %16)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %47
  %61 = load i32, i32* %18, align 4
  store i32 %61, i32* %8, align 4
  br label %96

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %16, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %16, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.sec_desc*, %struct.sec_desc** %10, align 8
  %71 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %69
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 8
  %76 = load %struct.sec_desc*, %struct.sec_desc** %10, align 8
  %77 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.sec_hw_desc_ptr*, %struct.sec_hw_desc_ptr** %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds %struct.sec_hw_desc_ptr, %struct.sec_hw_desc_ptr* %80, i64 %81
  store %struct.sec_hw_desc_ptr* %82, %struct.sec_hw_desc_ptr** %17, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load %struct.sec_hw_desc_ptr*, %struct.sec_hw_desc_ptr** %17, align 8
  %85 = getelementptr inbounds %struct.sec_hw_desc_ptr, %struct.sec_hw_desc_ptr* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  %86 = load %struct.sec_hw_desc_ptr*, %struct.sec_hw_desc_ptr** %17, align 8
  %87 = getelementptr inbounds %struct.sec_hw_desc_ptr, %struct.sec_hw_desc_ptr* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.sec_hw_desc_ptr*, %struct.sec_hw_desc_ptr** %17, align 8
  %89 = getelementptr inbounds %struct.sec_hw_desc_ptr, %struct.sec_hw_desc_ptr* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = getelementptr inbounds %struct.sec_desc_map_info, %struct.sec_desc_map_info* %16, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sec_hw_desc_ptr*, %struct.sec_hw_desc_ptr** %17, align 8
  %95 = getelementptr inbounds %struct.sec_hw_desc_ptr, %struct.sec_hw_desc_ptr* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %62, %60
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

declare dso_local i32 @SEC_LOCK_ASSERT(%struct.sec_softc*, i32) #1

declare dso_local i32 @sec_desc_map_dma(%struct.sec_softc*, i32*, i8*, i64, i32, %struct.sec_desc_map_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
