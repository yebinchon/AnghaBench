; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_media_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_media_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.ifmedia = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"em_if_media_change: begin\00", align 1
@IFM_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DO_AUTO_NEG = common dso_local global i8* null, align 8
@AUTONEG_ADV_DEFAULT = common dso_local global i32 0, align 4
@ADVERTISE_1000_FULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@IFM_GMASK = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@ADVERTISE_100_FULL = common dso_local global i32 0, align 4
@ADVERTISE_100_HALF = common dso_local global i32 0, align 4
@ADVERTISE_10_FULL = common dso_local global i32 0, align 4
@ADVERTISE_10_HALF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported media type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @em_if_media_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_if_media_change(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.ifmedia*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.adapter* @iflib_get_softc(i32 %6)
  store %struct.adapter* %7, %struct.adapter** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ifmedia* @iflib_get_media(i32 %8)
  store %struct.ifmedia* %9, %struct.ifmedia** %5, align 8
  %10 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %12 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @IFM_TYPE(i32 %13)
  %15 = load i64, i64* @IFM_ETHER, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %2, align 4
  br label %114

19:                                               ; preds = %1
  %20 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %21 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IFM_SUBTYPE(i32 %22)
  switch i32 %23, label %106 [
    i32 128, label %24
    i32 133, label %35
    i32 132, label %35
    i32 131, label %35
    i32 130, label %46
    i32 129, label %76
  ]

24:                                               ; preds = %19
  %25 = load i8*, i8** @DO_AUTO_NEG, align 8
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* @AUTONEG_ADV_DEFAULT, align 4
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  br label %111

35:                                               ; preds = %19, %19, %19
  %36 = load i8*, i8** @DO_AUTO_NEG, align 8
  %37 = load %struct.adapter*, %struct.adapter** %4, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i8* %36, i8** %40, align 8
  %41 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %42 = load %struct.adapter*, %struct.adapter** %4, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  br label %111

46:                                               ; preds = %19
  %47 = load i8*, i8** @FALSE, align 8
  %48 = load %struct.adapter*, %struct.adapter** %4, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i8* %47, i8** %51, align 8
  %52 = load %struct.adapter*, %struct.adapter** %4, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %57 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IFM_GMASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @IFM_FDX, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %46
  %64 = load i32, i32* @ADVERTISE_100_FULL, align 4
  %65 = load %struct.adapter*, %struct.adapter** %4, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  br label %75

69:                                               ; preds = %46
  %70 = load i32, i32* @ADVERTISE_100_HALF, align 4
  %71 = load %struct.adapter*, %struct.adapter** %4, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  br label %75

75:                                               ; preds = %69, %63
  br label %111

76:                                               ; preds = %19
  %77 = load i8*, i8** @FALSE, align 8
  %78 = load %struct.adapter*, %struct.adapter** %4, align 8
  %79 = getelementptr inbounds %struct.adapter, %struct.adapter* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i8* %77, i8** %81, align 8
  %82 = load %struct.adapter*, %struct.adapter** %4, align 8
  %83 = getelementptr inbounds %struct.adapter, %struct.adapter* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %87 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IFM_GMASK, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @IFM_FDX, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %76
  %94 = load i32, i32* @ADVERTISE_10_FULL, align 4
  %95 = load %struct.adapter*, %struct.adapter** %4, align 8
  %96 = getelementptr inbounds %struct.adapter, %struct.adapter* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  br label %105

99:                                               ; preds = %76
  %100 = load i32, i32* @ADVERTISE_10_HALF, align 4
  %101 = load %struct.adapter*, %struct.adapter** %4, align 8
  %102 = getelementptr inbounds %struct.adapter, %struct.adapter* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 8
  br label %105

105:                                              ; preds = %99, %93
  br label %111

106:                                              ; preds = %19
  %107 = load %struct.adapter*, %struct.adapter** %4, align 8
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %106, %105, %75, %35, %24
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @em_if_init(i32 %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %111, %17
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.ifmedia* @iflib_get_media(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i64 @IFM_TYPE(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @em_if_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
