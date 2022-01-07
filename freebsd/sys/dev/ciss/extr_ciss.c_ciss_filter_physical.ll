; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_filter_physical.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_filter_physical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ciss_lun_report = type { %struct.TYPE_5__*, i32 }

@ciss_expose_hidden_physical = common dso_local global i64 0, align 8
@CISS_HDR_ADDRESS_MODE_MASK_PERIPHERAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*, %struct.ciss_lun_report*)* @ciss_filter_physical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_filter_physical(%struct.ciss_softc* %0, %struct.ciss_lun_report* %1) #0 {
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca %struct.ciss_lun_report*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  store %struct.ciss_lun_report* %1, %struct.ciss_lun_report** %4, align 8
  %10 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %4, align 8
  %11 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ntohl(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %107, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %110

21:                                               ; preds = %17
  %22 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %4, align 8
  %23 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %107

33:                                               ; preds = %21
  %34 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %4, align 8
  %35 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @CISS_EXTRA_BUS3(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %33
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @CISS_EXTRA_TARGET3(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @CISS_EXTRA_MODE2(i64 %51)
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46, %33
  br label %107

55:                                               ; preds = %50
  %56 = load i64, i64* @ciss_expose_hidden_physical, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %4, align 8
  %60 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CISS_HDR_ADDRESS_MODE_MASK_PERIPHERAL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %107

71:                                               ; preds = %58, %55
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @CISS_EXTRA_BUS2(i64 %72)
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @CISS_EXTRA_TARGET2(i64 %75)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %78 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %79, i64 %81
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %4, align 8
  %89 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = bitcast %struct.TYPE_5__* %87 to i8*
  %95 = bitcast %struct.TYPE_5__* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 16, i1 false)
  %96 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %97 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %98, i64 %100
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %71, %70, %54, %32
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %17

110:                                              ; preds = %17
  ret i32 0
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @CISS_EXTRA_BUS3(i64) #1

declare dso_local i64 @CISS_EXTRA_TARGET3(i64) #1

declare dso_local i32 @CISS_EXTRA_MODE2(i64) #1

declare dso_local i32 @CISS_EXTRA_BUS2(i64) #1

declare dso_local i32 @CISS_EXTRA_TARGET2(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
