; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_fill_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_fill_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cesa_softc = type { i64 }
%struct.cesa_packet = type { i64, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.cesa_tdma_desc = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ctd_stq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cesa_softc*, %struct.cesa_packet*, %struct.TYPE_3__*)* @cesa_fill_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cesa_fill_packet(%struct.cesa_softc* %0, %struct.cesa_packet* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cesa_softc*, align 8
  %6 = alloca %struct.cesa_packet*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.cesa_tdma_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.cesa_softc* %0, %struct.cesa_softc** %5, align 8
  store %struct.cesa_packet* %1, %struct.cesa_packet** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.cesa_packet*, %struct.cesa_packet** %6, align 8
  %14 = getelementptr inbounds %struct.cesa_packet, %struct.cesa_packet* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.cesa_packet*, %struct.cesa_packet** %6, align 8
  %17 = getelementptr inbounds %struct.cesa_packet, %struct.cesa_packet* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = call i32 @MIN(i32 %12, i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ugt i32 %21, 0
  br i1 %22, label %23, label %91

23:                                               ; preds = %3
  %24 = load %struct.cesa_softc*, %struct.cesa_softc** %5, align 8
  %25 = load %struct.cesa_softc*, %struct.cesa_softc** %5, align 8
  %26 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cesa_packet*, %struct.cesa_packet** %6, align 8
  %29 = getelementptr inbounds %struct.cesa_packet, %struct.cesa_packet* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @CESA_DATA(i64 %30)
  %32 = add nsw i64 %27, %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.cesa_tdma_desc* @cesa_tdma_copy(%struct.cesa_softc* %24, i64 %32, i64 %35, i32 %36)
  store %struct.cesa_tdma_desc* %37, %struct.cesa_tdma_desc** %8, align 8
  %38 = load %struct.cesa_tdma_desc*, %struct.cesa_tdma_desc** %8, align 8
  %39 = icmp ne %struct.cesa_tdma_desc* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %93

43:                                               ; preds = %23
  %44 = load %struct.cesa_packet*, %struct.cesa_packet** %6, align 8
  %45 = getelementptr inbounds %struct.cesa_packet, %struct.cesa_packet* %44, i32 0, i32 2
  %46 = load %struct.cesa_tdma_desc*, %struct.cesa_tdma_desc** %8, align 8
  %47 = load i32, i32* @ctd_stq, align 4
  %48 = call i32 @STAILQ_INSERT_TAIL(i32* %45, %struct.cesa_tdma_desc* %46, i32 %47)
  %49 = load %struct.cesa_softc*, %struct.cesa_softc** %5, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.cesa_softc*, %struct.cesa_softc** %5, align 8
  %54 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.cesa_packet*, %struct.cesa_packet** %6, align 8
  %57 = getelementptr inbounds %struct.cesa_packet, %struct.cesa_packet* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @CESA_DATA(i64 %58)
  %60 = add nsw i64 %55, %59
  %61 = load i32, i32* %9, align 4
  %62 = call %struct.cesa_tdma_desc* @cesa_tdma_copy(%struct.cesa_softc* %49, i64 %52, i64 %60, i32 %61)
  store %struct.cesa_tdma_desc* %62, %struct.cesa_tdma_desc** %8, align 8
  %63 = load %struct.cesa_tdma_desc*, %struct.cesa_tdma_desc** %8, align 8
  %64 = icmp ne %struct.cesa_tdma_desc* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %43
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %93

68:                                               ; preds = %43
  %69 = load %struct.cesa_packet*, %struct.cesa_packet** %6, align 8
  %70 = getelementptr inbounds %struct.cesa_packet, %struct.cesa_packet* %69, i32 0, i32 1
  %71 = load %struct.cesa_tdma_desc*, %struct.cesa_tdma_desc** %8, align 8
  %72 = load i32, i32* @ctd_stq, align 4
  %73 = call i32 @STAILQ_INSERT_TAIL(i32* %70, %struct.cesa_tdma_desc* %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %9, align 4
  %80 = zext i32 %79 to i64
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = load %struct.cesa_packet*, %struct.cesa_packet** %6, align 8
  %88 = getelementptr inbounds %struct.cesa_packet, %struct.cesa_packet* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %68, %3
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %65, %40
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local %struct.cesa_tdma_desc* @cesa_tdma_copy(%struct.cesa_softc*, i64, i64, i32) #1

declare dso_local i64 @CESA_DATA(i64) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.cesa_tdma_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
