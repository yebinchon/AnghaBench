; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_check_collision.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_check_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.siis_channel = type { i32, i64, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.ccb*)* @siis_check_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siis_check_collision(i32 %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.siis_channel*, align 8
  store i32 %0, i32* %4, align 4
  store %union.ccb* %1, %union.ccb** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.siis_channel* @device_get_softc(i32 %7)
  store %struct.siis_channel* %8, %struct.siis_channel** %6, align 8
  %9 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %10 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %9, i32 0, i32 4
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  %13 = load %union.ccb*, %union.ccb** %5, align 8
  %14 = bitcast %union.ccb* %13 to %struct.TYPE_6__*
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XPT_ATA_IO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %2
  %20 = load %union.ccb*, %union.ccb** %5, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_8__*
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %19
  %29 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %30 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = xor i32 %31, -1
  %33 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %34 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load %union.ccb*, %union.ccb** %5, align 8
  %37 = bitcast %union.ccb* %36 to %struct.TYPE_6__*
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 31, %42
  %44 = ashr i32 2147483647, %43
  %45 = and i32 %32, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %81

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48, %19, %2
  %50 = load %union.ccb*, %union.ccb** %5, align 8
  %51 = bitcast %union.ccb* %50 to %struct.TYPE_6__*
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @XPT_ATA_IO, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %49
  %57 = load %union.ccb*, %union.ccb** %5, align 8
  %58 = bitcast %union.ccb* %57 to %struct.TYPE_8__*
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %63 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %69 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %81

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %56, %49
  %75 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %76 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %81

80:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %79, %72, %47
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
