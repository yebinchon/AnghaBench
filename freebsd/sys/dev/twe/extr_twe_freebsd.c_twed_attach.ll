; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twed_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twed_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twed_softc = type { %struct.TYPE_4__*, %struct.TYPE_5__*, i32, %struct.twe_softc* }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.twed_softc*, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i32 }
%struct.twe_softc = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%uMB (%u sectors)\0A\00", align 1
@TWE_BLOCK_SIZE = common dso_local global i32 0, align 4
@twed_open = common dso_local global i32 0, align 4
@twed_strategy = common dso_local global i32 0, align 4
@twed_dump = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"twed\00", align 1
@TWE_MAX_SGL_LENGTH = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@TWE_UD_CONFIG_RAID0 = common dso_local global i64 0, align 8
@TWE_UD_CONFIG_RAID5 = common dso_local global i64 0, align 8
@TWE_UD_CONFIG_RAID10 = common dso_local global i64 0, align 8
@DISK_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @twed_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twed_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twed_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @debug_called(i32 4)
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.twed_softc* @device_get_softc(i32 %6)
  store %struct.twed_softc* %7, %struct.twed_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.twed_softc* @device_get_softc(i32 %10)
  %12 = bitcast %struct.twed_softc* %11 to %struct.twe_softc*
  %13 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %14 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %13, i32 0, i32 3
  store %struct.twe_softc* %12, %struct.twe_softc** %14, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.TYPE_5__* @device_get_ivars(i32 %15)
  %17 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %18 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %17, i32 0, i32 1
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %18, align 8
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %21 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %23 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %24 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TWE_BLOCK_SIZE, align 4
  %29 = sdiv i32 1048576, %28
  %30 = sdiv i32 %27, %29
  %31 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %32 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @twed_printf(%struct.twed_softc* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @device_get_unit(i32 %37)
  %39 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %40 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  store i32 %38, i32* %42, align 4
  %43 = call %struct.TYPE_4__* (...) @disk_alloc()
  %44 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %45 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %44, i32 0, i32 0
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %45, align 8
  %46 = load i32, i32* @twed_open, align 4
  %47 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %48 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 12
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @twed_strategy, align 4
  %52 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %53 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 11
  store i32 %51, i32* %55, align 8
  %56 = load i64, i64* @twed_dump, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %59 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 10
  store i32* %57, i32** %61, align 8
  %62 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %63 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %65, align 8
  %66 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %67 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %68 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 9
  store %struct.twed_softc* %66, %struct.twed_softc** %70, align 8
  %71 = load i32, i32* @TWE_MAX_SGL_LENGTH, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %76 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 8
  %79 = load i32, i32* @TWE_BLOCK_SIZE, align 4
  %80 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %81 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* @TWE_BLOCK_SIZE, align 4
  %85 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %86 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %84, %89
  %91 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %92 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  store i32 %90, i32* %94, align 8
  %95 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %96 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TWE_UD_CONFIG_RAID0, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %118, label %102

102:                                              ; preds = %1
  %103 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %104 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TWE_UD_CONFIG_RAID5, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %118, label %110

110:                                              ; preds = %102
  %111 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %112 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TWE_UD_CONFIG_RAID10, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %110, %102, %1
  %119 = load i32, i32* @TWE_BLOCK_SIZE, align 4
  %120 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %121 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = shl i32 %119, %124
  %126 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %127 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 4
  store i32 %125, i32* %129, align 4
  %130 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %131 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 8
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %118, %110
  %135 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %136 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %135, i32 0, i32 1
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %141 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 7
  store i32 %139, i32* %143, align 8
  %144 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %145 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %144, i32 0, i32 1
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %150 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %149, i32 0, i32 0
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 6
  store i32 %148, i32* %152, align 4
  %153 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %154 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %153, i32 0, i32 1
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %159 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 5
  store i32 %157, i32* %161, align 8
  %162 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %163 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load i32, i32* @DISK_VERSION, align 4
  %166 = call i32 @disk_create(%struct.TYPE_4__* %164, i32 %165)
  ret i32 0
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.twed_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.TYPE_5__* @device_get_ivars(i32) #1

declare dso_local i32 @twed_printf(%struct.twed_softc*, i8*, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_4__* @disk_alloc(...) #1

declare dso_local i32 @disk_create(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
