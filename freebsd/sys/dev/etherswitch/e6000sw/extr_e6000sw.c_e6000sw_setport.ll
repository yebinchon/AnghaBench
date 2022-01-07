; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_setport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_setport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.mii_data = type { i32, i32 }

@SA_UNLOCKED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PORT_CONTROL2 = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_DROPTAGGED = common dso_local global i32 0, align 4
@PORT_CONTROL2_DISC_TAGGED = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_DROPUNTAGGED = common dso_local global i32 0, align 4
@PORT_CONTROL2_DISC_UNTAGGED = common dso_local global i32 0, align 4
@SIOCSIFMEDIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_15__*)* @e6000sw_setport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_setport(i32 %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mii_data*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TYPE_16__* @device_get_softc(i32 %10)
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %6, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = load i32, i32* @SA_UNLOCKED, align 4
  %14 = call i32 @E6000SW_LOCK_ASSERT(%struct.TYPE_16__* %12, i32 %13)
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %2
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %128

29:                                               ; preds = %22
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @e6000sw_is_portenabled(%struct.TYPE_16__* %30, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %128

37:                                               ; preds = %29
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @REG_PORT(%struct.TYPE_16__* %39, i64 %42)
  %44 = load i32, i32* @PORT_CONTROL2, align 4
  %45 = call i32 @e6000sw_readreg(%struct.TYPE_16__* %38, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ETHERSWITCH_PORT_DROPTAGGED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %37
  %53 = load i32, i32* @PORT_CONTROL2_DISC_TAGGED, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %61

56:                                               ; preds = %37
  %57 = load i32, i32* @PORT_CONTROL2_DISC_TAGGED, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %56, %52
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ETHERSWITCH_PORT_DROPUNTAGGED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @PORT_CONTROL2_DISC_UNTAGGED, align 4
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %77

72:                                               ; preds = %61
  %73 = load i32, i32* @PORT_CONTROL2_DISC_UNTAGGED, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %72, %68
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @REG_PORT(%struct.TYPE_16__* %79, i64 %82)
  %84 = load i32, i32* @PORT_CONTROL2, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @e6000sw_writereg(%struct.TYPE_16__* %78, i32 %83, i32 %84, i32 %85)
  store i32 0, i32* %7, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = call i32 @E6000SW_LOCK(%struct.TYPE_16__* %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %77
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @e6000sw_set_pvid(%struct.TYPE_16__* %94, i64 %97, i32 %100)
  br label %102

102:                                              ; preds = %93, %77
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @e6000sw_is_phyport(%struct.TYPE_16__* %103, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %102
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call %struct.mii_data* @e6000sw_miiforphy(%struct.TYPE_16__* %110, i64 %113)
  store %struct.mii_data* %114, %struct.mii_data** %8, align 8
  %115 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  %116 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  %121 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %120, i32 0, i32 0
  %122 = load i32, i32* @SIOCSIFMEDIA, align 4
  %123 = call i32 @ifmedia_ioctl(i32 %117, i32* %119, i32* %121, i32 %122)
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %109, %102
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %126 = call i32 @E6000SW_UNLOCK(%struct.TYPE_16__* %125)
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %124, %36, %27
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.TYPE_16__* @device_get_softc(i32) #1

declare dso_local i32 @E6000SW_LOCK_ASSERT(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @e6000sw_is_portenabled(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @e6000sw_readreg(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @REG_PORT(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @e6000sw_writereg(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @E6000SW_LOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @e6000sw_set_pvid(%struct.TYPE_16__*, i64, i32) #1

declare dso_local i64 @e6000sw_is_phyport(%struct.TYPE_16__*, i64) #1

declare dso_local %struct.mii_data* @e6000sw_miiforphy(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @ifmedia_ioctl(i32, i32*, i32*, i32) #1

declare dso_local i32 @E6000SW_UNLOCK(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
