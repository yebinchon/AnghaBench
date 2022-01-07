; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_erom.c_siba_eio_read_chipid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_erom.c_siba_eio_read_chipid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_erom_io = type { i32 }
%struct.bhnd_chipid = type { i32, i32 }
%struct.siba_core_id = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@BHND_MFGID_BCM = common dso_local global i64 0, align 8
@BHND_COREID_CC = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"first core not chipcommon (vendor=%#hx, core=%#hx)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siba_erom_io*, i32, %struct.bhnd_chipid*)* @siba_eio_read_chipid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_eio_read_chipid(%struct.siba_erom_io* %0, i32 %1, %struct.bhnd_chipid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.siba_erom_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhnd_chipid*, align 8
  %8 = alloca %struct.siba_core_id, align 8
  %9 = alloca i32, align 4
  store %struct.siba_erom_io* %0, %struct.siba_erom_io** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bhnd_chipid* %2, %struct.bhnd_chipid** %7, align 8
  %10 = load %struct.siba_erom_io*, %struct.siba_erom_io** %5, align 8
  %11 = call i32 @siba_eio_read_core_id(%struct.siba_erom_io* %10, i32 0, i32 0, %struct.siba_core_id* %8)
  store i32 %11, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %4, align 4
  br label %73

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %8, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BHND_MFGID_BCM, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %8, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BHND_COREID_CC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21, %15
  %28 = load i64, i64* @bootverbose, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.siba_erom_io*, %struct.siba_erom_io** %5, align 8
  %32 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %8, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %8, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @EROM_LOG(%struct.siba_erom_io* %31, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %37)
  br label %39

39:                                               ; preds = %30, %27
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %4, align 4
  br label %73

41:                                               ; preds = %21
  %42 = load %struct.siba_erom_io*, %struct.siba_erom_io** %5, align 8
  %43 = getelementptr inbounds %struct.siba_erom_io, %struct.siba_erom_io* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %7, align 8
  %46 = call i32 @bhnd_erom_read_chipid(i32 %44, %struct.bhnd_chipid* %45)
  store i32 %46, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %73

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %8, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @CHIPC_NCORES_MIN_HWREV(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %73

57:                                               ; preds = %50
  %58 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %7, align 8
  %59 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %70 [
    i32 130, label %61
    i32 129, label %64
    i32 128, label %67
  ]

61:                                               ; preds = %57
  %62 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %7, align 8
  %63 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %62, i32 0, i32 1
  store i32 6, i32* %63, align 4
  br label %72

64:                                               ; preds = %57
  %65 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %7, align 8
  %66 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %65, i32 0, i32 1
  store i32 9, i32* %66, align 4
  br label %72

67:                                               ; preds = %57
  %68 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %7, align 8
  %69 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %68, i32 0, i32 1
  store i32 7, i32* %69, align 4
  br label %72

70:                                               ; preds = %57
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %4, align 4
  br label %73

72:                                               ; preds = %67, %64, %61
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %70, %56, %48, %39, %13
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @siba_eio_read_core_id(%struct.siba_erom_io*, i32, i32, %struct.siba_core_id*) #1

declare dso_local i32 @EROM_LOG(%struct.siba_erom_io*, i8*, i64, i64) #1

declare dso_local i32 @bhnd_erom_read_chipid(i32, %struct.bhnd_chipid*) #1

declare dso_local i64 @CHIPC_NCORES_MIN_HWREV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
