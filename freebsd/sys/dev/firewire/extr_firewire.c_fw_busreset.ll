; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_busreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_busreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_comm = type { i64, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.crom_src }
%struct.crom_src = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.firewire_dev_comm = type { i32 (%struct.firewire_dev_comm*)* }

@FWBUSMGRELECT = common dso_local global i64 0, align 8
@FWBUSNOTREADY = common dso_local global i64 0, align 8
@DS_ATTACHED = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@CROMSIZE = common dso_local global i32 0, align 4
@M_FW = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@FW_GENERATION_CHANGEABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_busreset(%struct.firewire_comm* %0, i64 %1) #0 {
  %3 = alloca %struct.firewire_comm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.firewire_dev_comm*, align 8
  %6 = alloca %struct.crom_src*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.firewire_comm* %0, %struct.firewire_comm** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %12 = call i32 @FW_GLOCK_ASSERT(%struct.firewire_comm* %11)
  %13 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %14 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FWBUSMGRELECT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %20 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %19, i32 0, i32 4
  %21 = call i32 @callout_stop(i32* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %25 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %27 = call i32 @fw_reset_csr(%struct.firewire_comm* %26)
  %28 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %29 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FWBUSNOTREADY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %35 = call i32 @fw_init_crom(%struct.firewire_comm* %34)
  br label %36

36:                                               ; preds = %33, %22
  %37 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %38 = call i32 @fw_reset_crom(%struct.firewire_comm* %37)
  %39 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %40 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @device_get_children(i32 %41, i64** %7, i32* %10)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %77, %44
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %80

49:                                               ; preds = %45
  %50 = load i64*, i64** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @device_get_state(i64 %54)
  %56 = load i64, i64* @DS_ATTACHED, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %49
  %59 = load i64*, i64** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call %struct.firewire_dev_comm* @device_get_softc(i64 %63)
  store %struct.firewire_dev_comm* %64, %struct.firewire_dev_comm** %5, align 8
  %65 = load %struct.firewire_dev_comm*, %struct.firewire_dev_comm** %5, align 8
  %66 = getelementptr inbounds %struct.firewire_dev_comm, %struct.firewire_dev_comm* %65, i32 0, i32 0
  %67 = load i32 (%struct.firewire_dev_comm*)*, i32 (%struct.firewire_dev_comm*)** %66, align 8
  %68 = icmp ne i32 (%struct.firewire_dev_comm*)* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load %struct.firewire_dev_comm*, %struct.firewire_dev_comm** %5, align 8
  %71 = getelementptr inbounds %struct.firewire_dev_comm, %struct.firewire_dev_comm* %70, i32 0, i32 0
  %72 = load i32 (%struct.firewire_dev_comm*)*, i32 (%struct.firewire_dev_comm*)** %71, align 8
  %73 = load %struct.firewire_dev_comm*, %struct.firewire_dev_comm** %5, align 8
  %74 = call i32 %72(%struct.firewire_dev_comm* %73)
  br label %75

75:                                               ; preds = %69, %58
  br label %76

76:                                               ; preds = %75, %49
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %45

80:                                               ; preds = %45
  %81 = load i64*, i64** %7, align 8
  %82 = load i32, i32* @M_TEMP, align 4
  %83 = call i32 @free(i64* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %36
  %85 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %86 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %85, i32 0, i32 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store %struct.crom_src* %88, %struct.crom_src** %6, align 8
  %89 = load i32, i32* @CROMSIZE, align 4
  %90 = load i32, i32* @M_FW, align 4
  %91 = load i32, i32* @M_NOWAIT, align 4
  %92 = load i32, i32* @M_ZERO, align 4
  %93 = or i32 %91, %92
  %94 = call i64* @malloc(i32 %89, i32 %90, i32 %93)
  store i64* %94, i64** %8, align 8
  %95 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %96 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store %struct.crom_src* %98, %struct.crom_src** %6, align 8
  %99 = load %struct.crom_src*, %struct.crom_src** %6, align 8
  %100 = load i64*, i64** %8, align 8
  %101 = load i32, i32* @CROMSIZE, align 4
  %102 = call i32 @crom_load(%struct.crom_src* %99, i64* %100, i32 %101)
  %103 = load i64*, i64** %8, align 8
  %104 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %105 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CROMSIZE, align 4
  %108 = call i64 @bcmp(i64* %103, i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %138

110:                                              ; preds = %84
  %111 = load %struct.crom_src*, %struct.crom_src** %6, align 8
  %112 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = load %struct.crom_src*, %struct.crom_src** %6, align 8
  %117 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @FW_GENERATION_CHANGEABLE, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %110
  %123 = load i64, i64* @FW_GENERATION_CHANGEABLE, align 8
  %124 = load %struct.crom_src*, %struct.crom_src** %6, align 8
  %125 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i64 %123, i64* %126, align 8
  br label %127

127:                                              ; preds = %122, %110
  %128 = load %struct.crom_src*, %struct.crom_src** %6, align 8
  %129 = load i64*, i64** %8, align 8
  %130 = load i32, i32* @CROMSIZE, align 4
  %131 = call i32 @crom_load(%struct.crom_src* %128, i64* %129, i32 %130)
  %132 = load i64*, i64** %8, align 8
  %133 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %134 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CROMSIZE, align 4
  %137 = call i32 @bcopy(i64* %132, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %127, %84
  %139 = load i64*, i64** %8, align 8
  %140 = load i32, i32* @M_FW, align 4
  %141 = call i32 @free(i64* %139, i32 %140)
  ret void
}

declare dso_local i32 @FW_GLOCK_ASSERT(%struct.firewire_comm*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @fw_reset_csr(%struct.firewire_comm*) #1

declare dso_local i32 @fw_init_crom(%struct.firewire_comm*) #1

declare dso_local i32 @fw_reset_crom(%struct.firewire_comm*) #1

declare dso_local i64 @device_get_children(i32, i64**, i32*) #1

declare dso_local i64 @device_get_state(i64) #1

declare dso_local %struct.firewire_dev_comm* @device_get_softc(i64) #1

declare dso_local i32 @free(i64*, i32) #1

declare dso_local i64* @malloc(i32, i32, i32) #1

declare dso_local i32 @crom_load(%struct.crom_src*, i64*, i32) #1

declare dso_local i64 @bcmp(i64*, i32, i32) #1

declare dso_local i32 @bcopy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
