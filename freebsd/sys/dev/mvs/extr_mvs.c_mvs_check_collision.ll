; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_check_collision.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_check_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.mvs_channel = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@CAM_ATAIO_DMA = common dso_local global i32 0, align 4
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.ccb*)* @mvs_check_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_check_collision(i32 %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.mvs_channel*, align 8
  store i32 %0, i32* %4, align 4
  store %union.ccb* %1, %union.ccb** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.mvs_channel* @device_get_softc(i32 %7)
  store %struct.mvs_channel* %8, %struct.mvs_channel** %6, align 8
  %9 = load %union.ccb*, %union.ccb** %5, align 8
  %10 = bitcast %union.ccb* %9 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @XPT_ATA_IO, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %107

15:                                               ; preds = %2
  %16 = load %union.ccb*, %union.ccb** %5, align 8
  %17 = bitcast %union.ccb* %16 to %struct.TYPE_6__*
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %15
  %25 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %26 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %121

30:                                               ; preds = %24
  %31 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %32 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %121

36:                                               ; preds = %30
  %37 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %38 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %36
  %42 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %43 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %48 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %union.ccb*, %union.ccb** %5, align 8
  %51 = bitcast %union.ccb* %50 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %121

56:                                               ; preds = %46, %41
  br label %57

57:                                               ; preds = %56, %36
  br label %88

58:                                               ; preds = %15
  %59 = load %union.ccb*, %union.ccb** %5, align 8
  %60 = bitcast %union.ccb* %59 to %struct.TYPE_6__*
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CAM_ATAIO_DMA, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %58
  %68 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %69 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %121

73:                                               ; preds = %67
  %74 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %75 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %121

79:                                               ; preds = %73
  br label %87

80:                                               ; preds = %58
  %81 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %82 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %121

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %79
  br label %88

88:                                               ; preds = %87, %57
  %89 = load %union.ccb*, %union.ccb** %5, align 8
  %90 = bitcast %union.ccb* %89 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %95 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %88
  %100 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %101 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 1, i32* %3, align 4
  br label %121

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %88
  br label %114

107:                                              ; preds = %2
  %108 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %109 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 1, i32* %3, align 4
  br label %121

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %106
  %115 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %116 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 1, i32* %3, align 4
  br label %121

120:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %119, %112, %104, %85, %78, %72, %55, %35, %29
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
