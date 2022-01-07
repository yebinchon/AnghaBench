; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_softc = type { i64, i64, i64, i32, i32 }

@cpuset_domain = common dso_local global i32* null, align 8
@IOAT_VER_3_0 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ioat_list_mtx = common dso_local global i32 0, align 4
@IOAT_MAX_CHANNELS = common dso_local global i32 0, align 4
@ioat_channel = common dso_local global %struct.ioat_softc** null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Too many I/OAT devices in system\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ioat_channel_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ioat_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioat_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ioat_softc* @DEVICE2SOFTC(i32 %6)
  store %struct.ioat_softc* %7, %struct.ioat_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %12, i32 0, i32 0
  %14 = call i64 @bus_get_domain(i32 %11, i64* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32*, i32** @cpuset_domain, align 8
  %21 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = call i64 @CPU_FFS(i32* %24)
  %26 = sub nsw i64 %25, 1
  %27 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = call i64 (...) @CPU_FIRST()
  %35 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %19
  %38 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %39 = call i32 @ioat_map_pci_bar(%struct.ioat_softc* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %129

43:                                               ; preds = %37
  %44 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %45 = call i64 @ioat_read_cbver(%struct.ioat_softc* %44)
  %46 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IOAT_VER_3_0, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @ENODEV, align 4
  store i32 %54, i32* %4, align 4
  br label %129

55:                                               ; preds = %43
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @ioat3_attach(i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %129

61:                                               ; preds = %55
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @pci_enable_busmaster(i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %129

67:                                               ; preds = %61
  %68 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %69 = call i32 @ioat_setup_intr(%struct.ioat_softc* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %129

73:                                               ; preds = %67
  %74 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %75 = call i32 @ioat_reset_hw(%struct.ioat_softc* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %129

79:                                               ; preds = %73
  %80 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %81 = load i32, i32* @FALSE, align 4
  %82 = call i32 @ioat_process_events(%struct.ioat_softc* %80, i32 %81)
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @ioat_setup_sysctl(i32 %83)
  %85 = call i32 @mtx_lock(i32* @ioat_list_mtx)
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %99, %79
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @IOAT_MAX_CHANNELS, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load %struct.ioat_softc**, %struct.ioat_softc*** @ioat_channel, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ioat_softc*, %struct.ioat_softc** %91, i64 %93
  %95 = load %struct.ioat_softc*, %struct.ioat_softc** %94, align 8
  %96 = icmp eq %struct.ioat_softc* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %102

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %86

102:                                              ; preds = %97, %86
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @IOAT_MAX_CHANNELS, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = call i32 @mtx_unlock(i32* @ioat_list_mtx)
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @device_printf(i32 %108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* @ENXIO, align 4
  store i32 %110, i32* %4, align 4
  br label %129

111:                                              ; preds = %102
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %114 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %116 = load %struct.ioat_softc**, %struct.ioat_softc*** @ioat_channel, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.ioat_softc*, %struct.ioat_softc** %116, i64 %118
  store %struct.ioat_softc* %115, %struct.ioat_softc** %119, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @ioat_channel_index, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %111
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* @ioat_channel_index, align 4
  br label %126

126:                                              ; preds = %123, %111
  %127 = call i32 @mtx_unlock(i32* @ioat_list_mtx)
  %128 = call i32 (...) @ioat_test_attach()
  br label %129

129:                                              ; preds = %126, %106, %78, %72, %66, %60, %53, %42
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %2, align 4
  %134 = call i32 @ioat_detach(i32 %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.ioat_softc* @DEVICE2SOFTC(i32) #1

declare dso_local i64 @bus_get_domain(i32, i64*) #1

declare dso_local i64 @CPU_FFS(i32*) #1

declare dso_local i64 @CPU_FIRST(...) #1

declare dso_local i32 @ioat_map_pci_bar(%struct.ioat_softc*) #1

declare dso_local i64 @ioat_read_cbver(%struct.ioat_softc*) #1

declare dso_local i32 @ioat3_attach(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @ioat_setup_intr(%struct.ioat_softc*) #1

declare dso_local i32 @ioat_reset_hw(%struct.ioat_softc*) #1

declare dso_local i32 @ioat_process_events(%struct.ioat_softc*, i32) #1

declare dso_local i32 @ioat_setup_sysctl(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ioat_test_attach(...) #1

declare dso_local i32 @ioat_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
