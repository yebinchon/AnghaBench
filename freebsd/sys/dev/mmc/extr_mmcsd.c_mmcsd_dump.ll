; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i64, i32, i8*, %struct.disk* }
%struct.disk = type { i32, %struct.mmcsd_part* }
%struct.mmcsd_part = type { i32, %struct.mmcsd_softc* }
%struct.mmcsd_softc = type { i32, i32, i32, i32, i32 }

@MMC_ERR_NONE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i32 0, align 4
@LOG_PPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Partition switch error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i64)* @mmcsd_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmcsd_dump(i8* %0, i8* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.bio, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.disk*, align 8
  %16 = alloca %struct.mmcsd_softc*, align 8
  %17 = alloca %struct.mmcsd_part*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.disk*
  store %struct.disk* %22, %struct.disk** %15, align 8
  %23 = load %struct.disk*, %struct.disk** %15, align 8
  %24 = getelementptr inbounds %struct.disk, %struct.disk* %23, i32 0, i32 1
  %25 = load %struct.mmcsd_part*, %struct.mmcsd_part** %24, align 8
  store %struct.mmcsd_part* %25, %struct.mmcsd_part** %17, align 8
  %26 = load %struct.mmcsd_part*, %struct.mmcsd_part** %17, align 8
  %27 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %26, i32 0, i32 1
  %28 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %27, align 8
  store %struct.mmcsd_softc* %28, %struct.mmcsd_softc** %16, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %5
  %32 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %16, align 8
  %33 = call i32 @mmcsd_flush_cache(%struct.mmcsd_softc* %32)
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %20, align 4
  %35 = load i32, i32* @MMC_ERR_NONE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @EIO, align 4
  store i32 %38, i32* %6, align 4
  br label %119

39:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %119

40:                                               ; preds = %5
  %41 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %16, align 8
  %42 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %18, align 4
  %44 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %16, align 8
  %45 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %19, align 4
  %47 = call i32 @g_reset_bio(%struct.bio* %12)
  %48 = load %struct.disk*, %struct.disk** %15, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 4
  store %struct.disk* %48, %struct.disk** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.disk*, %struct.disk** %15, align 8
  %52 = getelementptr inbounds %struct.disk, %struct.disk* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sdiv i32 %50, %53
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 3
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* @BIO_WRITE, align 4
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.disk*, %struct.disk** %15, align 8
  %68 = getelementptr inbounds %struct.disk, %struct.disk* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = udiv i64 %66, %70
  %72 = add i64 %64, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @MMCBUS_ACQUIRE_BUS(i32 %74, i32 %75)
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %16, align 8
  %80 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mmcsd_part*, %struct.mmcsd_part** %17, align 8
  %83 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @mmcsd_switch_part(i32 %77, i32 %78, i32 %81, i32 %84)
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* @MMC_ERR_NONE, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %40
  %90 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %16, align 8
  %91 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %90, i32 0, i32 1
  %92 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %16, align 8
  %93 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %92, i32 0, i32 0
  %94 = load i32, i32* @LOG_PPS, align 4
  %95 = call i64 @ppsratecheck(i32* %91, i32* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32, i32* %18, align 4
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %89
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @MMCBUS_RELEASE_BUS(i32 %101, i32 %102)
  %104 = load i32, i32* @EIO, align 4
  store i32 %104, i32* %6, align 4
  br label %119

105:                                              ; preds = %40
  %106 = load %struct.mmcsd_part*, %struct.mmcsd_part** %17, align 8
  %107 = call i32 @mmcsd_rw(%struct.mmcsd_part* %106, %struct.bio* %12)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %18, align 4
  %110 = call i32 @MMCBUS_RELEASE_BUS(i32 %108, i32 %109)
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load i32, i32* @EIO, align 4
  br label %117

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ %115, %114 ], [ 0, %116 ]
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %100, %39, %37
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @mmcsd_flush_cache(%struct.mmcsd_softc*) #1

declare dso_local i32 @g_reset_bio(%struct.bio*) #1

declare dso_local i32 @MMCBUS_ACQUIRE_BUS(i32, i32) #1

declare dso_local i32 @mmcsd_switch_part(i32, i32, i32, i32) #1

declare dso_local i64 @ppsratecheck(i32*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @MMCBUS_RELEASE_BUS(i32, i32) #1

declare dso_local i32 @mmcsd_rw(%struct.mmcsd_part*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
