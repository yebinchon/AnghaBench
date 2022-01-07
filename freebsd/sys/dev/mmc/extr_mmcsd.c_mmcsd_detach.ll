; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmcsd_softc = type { %struct.mmcsd_part**, i32* }
%struct.mmcsd_part = type { i64, i32, i32*, i32, i32, i32, i64 }

@MMC_PART_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"mmcsd disk detach\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"mmcsd IOCTL detach\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to flush cache\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mmcsd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmcsd_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmcsd_softc*, align 8
  %4 = alloca %struct.mmcsd_part*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.mmcsd_softc* @device_get_softc(i32 %6)
  store %struct.mmcsd_softc* %7, %struct.mmcsd_softc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %74, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MMC_PART_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %77

12:                                               ; preds = %8
  %13 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %13, i32 0, i32 0
  %15 = load %struct.mmcsd_part**, %struct.mmcsd_part*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mmcsd_part*, %struct.mmcsd_part** %15, i64 %17
  %19 = load %struct.mmcsd_part*, %struct.mmcsd_part** %18, align 8
  store %struct.mmcsd_part* %19, %struct.mmcsd_part** %4, align 8
  %20 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %21 = icmp ne %struct.mmcsd_part* %20, null
  br i1 %21, label %22, label %73

22:                                               ; preds = %12
  %23 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %24 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %29 = call i32 @MMCSD_DISK_LOCK(%struct.mmcsd_part* %28)
  %30 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %31 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %33 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %27
  %37 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %38 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %40 = call i32 @wakeup(%struct.mmcsd_part* %39)
  br label %41

41:                                               ; preds = %46, %36
  %42 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %43 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, -1
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %48 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %49 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %48, i32 0, i32 5
  %50 = call i32 @msleep(%struct.mmcsd_part* %47, i32* %49, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %41

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %54 = call i32 @MMCSD_DISK_UNLOCK(%struct.mmcsd_part* %53)
  br label %55

55:                                               ; preds = %52, %22
  %56 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %57 = call i32 @MMCSD_IOCTL_LOCK(%struct.mmcsd_part* %56)
  br label %58

58:                                               ; preds = %63, %55
  %59 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %60 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %65 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %66 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %65, i32 0, i32 4
  %67 = call i32 @msleep(%struct.mmcsd_part* %64, i32* %66, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %58

68:                                               ; preds = %58
  %69 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %70 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %69, i32 0, i32 1
  store i32 -1, i32* %70, align 8
  %71 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %72 = call i32 @MMCSD_IOCTL_UNLOCK(%struct.mmcsd_part* %71)
  br label %73

73:                                               ; preds = %68, %12
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %8

77:                                               ; preds = %8
  %78 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %3, align 8
  %79 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %3, align 8
  %84 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @destroy_dev(i32* %85)
  br label %87

87:                                               ; preds = %82, %77
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %125, %87
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @MMC_PART_MAX, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %128

92:                                               ; preds = %88
  %93 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %3, align 8
  %94 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %93, i32 0, i32 0
  %95 = load %struct.mmcsd_part**, %struct.mmcsd_part*** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.mmcsd_part*, %struct.mmcsd_part** %95, i64 %97
  %99 = load %struct.mmcsd_part*, %struct.mmcsd_part** %98, align 8
  store %struct.mmcsd_part* %99, %struct.mmcsd_part** %4, align 8
  %100 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %101 = icmp ne %struct.mmcsd_part* %100, null
  br i1 %101, label %102, label %124

102:                                              ; preds = %92
  %103 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %104 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %109 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %108, i32 0, i32 3
  %110 = load i32, i32* @ENXIO, align 4
  %111 = call i32 @bioq_flush(i32* %109, i32* null, i32 %110)
  %112 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %113 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @disk_destroy(i32* %114)
  %116 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %117 = call i32 @MMCSD_DISK_LOCK_DESTROY(%struct.mmcsd_part* %116)
  br label %118

118:                                              ; preds = %107, %102
  %119 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %120 = call i32 @MMCSD_IOCTL_LOCK_DESTROY(%struct.mmcsd_part* %119)
  %121 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %122 = load i32, i32* @M_DEVBUF, align 4
  %123 = call i32 @free(%struct.mmcsd_part* %121, i32 %122)
  br label %124

124:                                              ; preds = %118, %92
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %88

128:                                              ; preds = %88
  %129 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %3, align 8
  %130 = call i64 @mmcsd_flush_cache(%struct.mmcsd_softc* %129)
  %131 = load i64, i64* @MMC_ERR_NONE, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* %2, align 4
  %135 = call i32 @device_printf(i32 %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %128
  ret i32 0
}

declare dso_local %struct.mmcsd_softc* @device_get_softc(i32) #1

declare dso_local i32 @MMCSD_DISK_LOCK(%struct.mmcsd_part*) #1

declare dso_local i32 @wakeup(%struct.mmcsd_part*) #1

declare dso_local i32 @msleep(%struct.mmcsd_part*, i32*, i32, i8*, i32) #1

declare dso_local i32 @MMCSD_DISK_UNLOCK(%struct.mmcsd_part*) #1

declare dso_local i32 @MMCSD_IOCTL_LOCK(%struct.mmcsd_part*) #1

declare dso_local i32 @MMCSD_IOCTL_UNLOCK(%struct.mmcsd_part*) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @bioq_flush(i32*, i32*, i32) #1

declare dso_local i32 @disk_destroy(i32*) #1

declare dso_local i32 @MMCSD_DISK_LOCK_DESTROY(%struct.mmcsd_part*) #1

declare dso_local i32 @MMCSD_IOCTL_LOCK_DESTROY(%struct.mmcsd_part*) #1

declare dso_local i32 @free(%struct.mmcsd_part*, i32) #1

declare dso_local i64 @mmcsd_flush_cache(%struct.mmcsd_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
