; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_decode_port_rid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_decode_port_rid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_devinfo = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BHND_PORT_DEVICE = common dso_local global i32 0, align 4
@BHND_PORT_AGENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32, i32*, i64*, i64*)* @siba_decode_port_rid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_decode_port_rid(i64 %0, i64 %1, i32 %2, i32 %3, i32* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.siba_devinfo*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i64 @device_get_parent(i64 %19)
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %7
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @device_get_parent(i64 %24)
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32*, i32** %13, align 8
  %30 = load i64*, i64** %14, align 8
  %31 = load i64*, i64** %15, align 8
  %32 = call i32 @BHND_BUS_DECODE_PORT_RID(i64 %25, i64 %26, i32 %27, i32 %28, i32* %29, i64* %30, i64* %31)
  store i32 %32, i32* %8, align 4
  br label %105

33:                                               ; preds = %7
  %34 = load i64, i64* %10, align 8
  %35 = call %struct.siba_devinfo* @device_get_ivars(i64 %34)
  store %struct.siba_devinfo* %35, %struct.siba_devinfo** %16, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @SYS_RES_MEMORY, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %8, align 4
  br label %105

41:                                               ; preds = %33
  store i64 0, i64* %17, align 8
  br label %42

42:                                               ; preds = %69, %41
  %43 = load i64, i64* %17, align 8
  %44 = load %struct.siba_devinfo*, %struct.siba_devinfo** %16, align 8
  %45 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %42
  %50 = load %struct.siba_devinfo*, %struct.siba_devinfo** %16, align 8
  %51 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i64, i64* %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %69

60:                                               ; preds = %49
  %61 = load i32, i32* @BHND_PORT_DEVICE, align 4
  %62 = load i32*, i32** %13, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i64, i64* %17, align 8
  %64 = call i64 @siba_addrspace_device_port(i64 %63)
  %65 = load i64*, i64** %14, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i64, i64* %17, align 8
  %67 = call i64 @siba_addrspace_device_region(i64 %66)
  %68 = load i64*, i64** %15, align 8
  store i64 %67, i64* %68, align 8
  store i32 0, i32* %8, align 4
  br label %105

69:                                               ; preds = %59
  %70 = load i64, i64* %17, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %17, align 8
  br label %42

72:                                               ; preds = %42
  store i64 0, i64* %18, align 8
  br label %73

73:                                               ; preds = %100, %72
  %74 = load i64, i64* %18, align 8
  %75 = load %struct.siba_devinfo*, %struct.siba_devinfo** %16, align 8
  %76 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %74, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %73
  %81 = load %struct.siba_devinfo*, %struct.siba_devinfo** %16, align 8
  %82 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i64, i64* %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %100

91:                                               ; preds = %80
  %92 = load i32, i32* @BHND_PORT_AGENT, align 4
  %93 = load i32*, i32** %13, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i64, i64* %18, align 8
  %95 = call i64 @siba_cfg_agent_port(i64 %94)
  %96 = load i64*, i64** %14, align 8
  store i64 %95, i64* %96, align 8
  %97 = load i64, i64* %18, align 8
  %98 = call i64 @siba_cfg_agent_region(i64 %97)
  %99 = load i64*, i64** %15, align 8
  store i64 %98, i64* %99, align 8
  store i32 0, i32* %8, align 4
  br label %105

100:                                              ; preds = %90
  %101 = load i64, i64* %18, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %18, align 8
  br label %73

103:                                              ; preds = %73
  %104 = load i32, i32* @ENOENT, align 4
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %103, %91, %60, %39, %23
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @BHND_BUS_DECODE_PORT_RID(i64, i64, i32, i32, i32*, i64*, i64*) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i64) #1

declare dso_local i64 @siba_addrspace_device_port(i64) #1

declare dso_local i64 @siba_addrspace_device_region(i64) #1

declare dso_local i64 @siba_cfg_agent_port(i64) #1

declare dso_local i64 @siba_cfg_agent_region(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
