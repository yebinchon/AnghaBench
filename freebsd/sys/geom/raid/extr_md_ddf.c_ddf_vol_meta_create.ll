; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_vol_meta_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_vol_meta_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ddf_vol_meta = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i8* }
%struct.ddf_meta = type { i32, i8*, i8*, i32 }
%struct.timespec = type { i32 }
%struct.clocktime = type { i32, i32, i32 }

@M_MD_DDF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@hdr = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"FreeBSD%04d%02d%02d%08x%01x\00", align 1
@vdc = common dso_local global %struct.TYPE_4__* null, align 8
@DDF_VDCR_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddf_vol_meta*, %struct.ddf_meta*)* @ddf_vol_meta_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddf_vol_meta_create(%struct.ddf_vol_meta* %0, %struct.ddf_meta* %1) #0 {
  %3 = alloca %struct.ddf_vol_meta*, align 8
  %4 = alloca %struct.ddf_meta*, align 8
  %5 = alloca %struct.timespec, align 4
  %6 = alloca %struct.clocktime, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ddf_vol_meta* %0, %struct.ddf_vol_meta** %3, align 8
  store %struct.ddf_meta* %1, %struct.ddf_meta** %4, align 8
  %9 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %10 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %3, align 8
  %13 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %15 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %3, align 8
  %18 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  store i32 %16, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @M_MD_DDF, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = call i8* @malloc(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %3, align 8
  %24 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %3, align 8
  %26 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %25, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %29 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @memcpy(i8* %27, i8* %30, i32 %31)
  %33 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hdr, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @GET32(%struct.ddf_meta* %33, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* @M_MD_DDF, align 4
  %41 = load i32, i32* @M_WAITOK, align 4
  %42 = call i8* @malloc(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %3, align 8
  %44 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %3, align 8
  %46 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %49 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hdr, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @GET32(%struct.ddf_meta* %51, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 %55, %56
  %58 = call i32 @memcpy(i8* %47, i8* %50, i32 %57)
  %59 = load i32, i32* @M_MD_DDF, align 4
  %60 = load i32, i32* @M_WAITOK, align 4
  %61 = call i8* @malloc(i32 4, i32 %59, i32 %60)
  %62 = bitcast i8* %61 to %struct.TYPE_5__*
  %63 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %3, align 8
  %64 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %63, i32 0, i32 1
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %64, align 8
  %65 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %3, align 8
  %66 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = call i32 @memset(%struct.TYPE_5__* %67, i32 255, i32 4)
  %69 = call i32 @getnanotime(%struct.timespec* %5)
  %70 = call i32 @clock_ts_to_ct(%struct.timespec* %5, %struct.clocktime* %6)
  %71 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %3, align 8
  %72 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (...) @arc4random()
  %83 = call i32 (...) @arc4random()
  %84 = and i32 %83, 15
  %85 = call i32 @snprintf(i8* %75, i32 25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %79, i32 %81, i32 %82, i32 %84)
  %86 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hdr, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @GET16(%struct.ddf_meta* %86, i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = mul nsw i32 %90, %91
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @M_MD_DDF, align 4
  %95 = load i32, i32* @M_WAITOK, align 4
  %96 = call i8* @malloc(i32 %93, i32 %94, i32 %95)
  %97 = bitcast i8* %96 to %struct.TYPE_5__*
  %98 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %3, align 8
  %99 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %98, i32 0, i32 2
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %99, align 8
  %100 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %3, align 8
  %101 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %100, i32 0, i32 2
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @memset(%struct.TYPE_5__* %102, i32 255, i32 %103)
  %105 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %3, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vdc, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @DDF_VDCR_SIGNATURE, align 4
  %110 = call i32 @SET32(%struct.ddf_vol_meta* %105, i32 %108, i32 %109)
  %111 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %3, align 8
  %112 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %111, i32 0, i32 2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %3, align 8
  %117 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @memcpy(i8* %115, i8* %120, i32 24)
  %122 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %3, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vdc, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @SET32(%struct.ddf_vol_meta* %122, i32 %125, i32 0)
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @GET32(%struct.ddf_meta*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @getnanotime(%struct.timespec*) #1

declare dso_local i32 @clock_ts_to_ct(%struct.timespec*, %struct.clocktime*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @GET16(%struct.ddf_meta*, i32) #1

declare dso_local i32 @SET32(%struct.ddf_vol_meta*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
