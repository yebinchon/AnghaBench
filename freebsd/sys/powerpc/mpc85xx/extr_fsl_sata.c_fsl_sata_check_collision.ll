; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_check_collision.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_check_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i32, i64*, i64*, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_sata_channel*, %union.ccb*)* @fsl_sata_check_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sata_check_collision(%struct.fsl_sata_channel* %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_sata_channel*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca i32, align 4
  store %struct.fsl_sata_channel* %0, %struct.fsl_sata_channel** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %7 = load %union.ccb*, %union.ccb** %5, align 8
  %8 = bitcast %union.ccb* %7 to %struct.TYPE_6__*
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %union.ccb*, %union.ccb** %5, align 8
  %12 = bitcast %union.ccb* %11 to %struct.TYPE_6__*
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XPT_ATA_IO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %64

17:                                               ; preds = %2
  %18 = load %union.ccb*, %union.ccb** %5, align 8
  %19 = bitcast %union.ccb* %18 to %struct.TYPE_8__*
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %17
  %27 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %28 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = xor i32 %29, -1
  %31 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %32 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %31, i32 0, i32 5
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 16, %38
  %40 = ashr i32 65535, %39
  %41 = and i32 %30, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %116

44:                                               ; preds = %26
  %45 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %46 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %55 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %116

63:                                               ; preds = %53, %44
  br label %84

64:                                               ; preds = %17, %2
  %65 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %66 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %64
  %74 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %75 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %116

83:                                               ; preds = %73, %64
  br label %84

84:                                               ; preds = %83, %63
  %85 = load %union.ccb*, %union.ccb** %5, align 8
  %86 = bitcast %union.ccb* %85 to %struct.TYPE_6__*
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @XPT_ATA_IO, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %84
  %92 = load %union.ccb*, %union.ccb** %5, align 8
  %93 = bitcast %union.ccb* %92 to %struct.TYPE_8__*
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %98 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %91
  %103 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %104 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 1, i32* %3, align 4
  br label %116

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %91, %84
  %110 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %111 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %116

115:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %114, %107, %82, %62, %43
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
