; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_disk.c_amrd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_disk.c_amrd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amrd_softc = type { %struct.TYPE_4__*, %struct.TYPE_5__*, i32, i32, %struct.amr_softc* }
%struct.TYPE_4__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.amrd_softc* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.amr_softc = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"%uMB (%u sectors) RAID %d (%s)\0A\00", align 1
@AMR_BLKSIZE = common dso_local global i32 0, align 4
@AMR_DRV_RAID_MASK = common dso_local global i32 0, align 4
@amr_table_drvstate = common dso_local global i32 0, align 4
@AMR_NSEG = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@amrd_open = common dso_local global i32 0, align 4
@amrd_strategy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"amrd\00", align 1
@amrd_dump = common dso_local global i64 0, align 8
@DISKFLAG_CANFLUSHCACHE = common dso_local global i32 0, align 4
@DISK_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amrd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amrd_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amrd_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @device_get_softc(i32 %5)
  %7 = inttoptr i64 %6 to %struct.amrd_softc*
  store %struct.amrd_softc* %7, %struct.amrd_softc** %3, align 8
  %8 = call i32 @debug_called(i32 1)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @device_get_softc(i32 %11)
  %13 = inttoptr i64 %12 to %struct.amr_softc*
  %14 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %15 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %14, i32 0, i32 4
  store %struct.amr_softc* %13, %struct.amr_softc** %15, align 8
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @device_get_unit(i32 %16)
  %18 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %19 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %2, align 4
  %21 = call %struct.TYPE_5__* @device_get_ivars(i32 %20)
  %22 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %23 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %22, i32 0, i32 1
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %23, align 8
  %24 = load i32, i32* %2, align 4
  %25 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %26 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %29 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AMR_BLKSIZE, align 4
  %34 = sdiv i32 1048576, %33
  %35 = sdiv i32 %32, %34
  %36 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %37 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %42 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AMR_DRV_RAID_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @amr_table_drvstate, align 4
  %49 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %50 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @AMR_DRV_CURSTATE(i32 %53)
  %55 = call i32 @amr_describe_code(i32 %48, i32 %54)
  %56 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %40, i32 %47, i32 %55)
  %57 = call %struct.TYPE_4__* (...) @disk_alloc()
  %58 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %59 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %58, i32 0, i32 0
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %59, align 8
  %60 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %61 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %62 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 11
  store %struct.amrd_softc* %60, %struct.amrd_softc** %64, align 8
  %65 = load i32, i32* @AMR_NSEG, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %70 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  %73 = load i32, i32* @amrd_open, align 4
  %74 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %75 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 10
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* @amrd_strategy, align 4
  %79 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %80 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 9
  store i32 %78, i32* %82, align 8
  %83 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %84 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %86, align 8
  %87 = load i64, i64* @amrd_dump, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %90 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 8
  store i32* %88, i32** %92, align 8
  %93 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %94 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %97 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 7
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* @DISKFLAG_CANFLUSHCACHE, align 4
  %101 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %102 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 6
  store i32 %100, i32* %104, align 8
  %105 = load i32, i32* @AMR_BLKSIZE, align 4
  %106 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %107 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i32 %105, i32* %109, align 8
  %110 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %111 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @AMR_BLKSIZE, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %118 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  store i32 %116, i32* %120, align 4
  %121 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %122 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %121, i32 0, i32 1
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %127 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 5
  store i32 %125, i32* %129, align 4
  %130 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %131 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %130, i32 0, i32 1
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %136 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  store i32 %134, i32* %138, align 8
  %139 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %140 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* @DISK_VERSION, align 4
  %143 = call i32 @disk_create(%struct.TYPE_4__* %141, i32 %142)
  ret i32 0
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_5__* @device_get_ivars(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @amr_describe_code(i32, i32) #1

declare dso_local i32 @AMR_DRV_CURSTATE(i32) #1

declare dso_local %struct.TYPE_4__* @disk_alloc(...) #1

declare dso_local i32 @disk_create(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
