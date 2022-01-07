; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_bus.c_adb_send_raw_packet_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_bus.c_adb_send_raw_packet_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_softc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"ADB sync\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32*, i32*)* @adb_send_raw_packet_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adb_send_raw_packet_sync(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.adb_softc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.adb_softc* @device_get_softc(i32 %19)
  store %struct.adb_softc* %20, %struct.adb_softc** %16, align 8
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 %21, 4
  %23 = load i32, i32* %15, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %10, align 4
  %26 = shl i32 %25, 2
  %27 = load i32, i32* %15, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %15, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %15, align 4
  br label %32

32:                                               ; preds = %39, %7
  %33 = load %struct.adb_softc*, %struct.adb_softc** %16, align 8
  %34 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @atomic_cmpset_int(i32* %34, i32 65535, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.adb_softc*, %struct.adb_softc** %16, align 8
  %41 = load i32, i32* @hz, align 4
  %42 = sdiv i32 %41, 10
  %43 = call i32 @tsleep(%struct.adb_softc* %40, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %32

44:                                               ; preds = %32
  %45 = load %struct.adb_softc*, %struct.adb_softc** %16, align 8
  %46 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.adb_softc*, %struct.adb_softc** %16, align 8
  %49 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.adb_softc*, %struct.adb_softc** %16, align 8
  %51 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @ADB_HB_SEND_RAW_PACKET(i32 %52, i32 %53, i32 %54, i32* %55, i32 1)
  br label %57

57:                                               ; preds = %75, %44
  %58 = load %struct.adb_softc*, %struct.adb_softc** %16, align 8
  %59 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %58, i32 0, i32 1
  %60 = call i32 @atomic_fetchadd_int(i32* %59, i32 0)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load i32, i32* %18, align 4
  %65 = srem i32 %64, 40
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load %struct.adb_softc*, %struct.adb_softc** %16, align 8
  %69 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @ADB_HB_SEND_RAW_PACKET(i32 %70, i32 %71, i32 %72, i32* %73, i32 1)
  br label %75

75:                                               ; preds = %67, %63
  %76 = load %struct.adb_softc*, %struct.adb_softc** %16, align 8
  %77 = load i32, i32* @hz, align 4
  %78 = sdiv i32 %77, 10
  %79 = call i32 @tsleep(%struct.adb_softc* %76, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %18, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %18, align 4
  br label %57

82:                                               ; preds = %57
  %83 = load %struct.adb_softc*, %struct.adb_softc** %16, align 8
  %84 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %17, align 4
  %87 = load i32*, i32** %14, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %82
  %90 = load i32, i32* %17, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32*, i32** %14, align 8
  %94 = load %struct.adb_softc*, %struct.adb_softc** %16, align 8
  %95 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @memcpy(i32* %93, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %92, %89, %82
  %100 = load %struct.adb_softc*, %struct.adb_softc** %16, align 8
  %101 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  %102 = load %struct.adb_softc*, %struct.adb_softc** %16, align 8
  %103 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %102, i32 0, i32 0
  %104 = call i32 @atomic_set_int(i32* %103, i32 65535)
  %105 = load i32, i32* %17, align 4
  ret i32 %105
}

declare dso_local %struct.adb_softc* @device_get_softc(i32) #1

declare dso_local i32 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @tsleep(%struct.adb_softc*, i32, i8*, i32) #1

declare dso_local i32 @ADB_HB_SEND_RAW_PACKET(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @atomic_set_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
