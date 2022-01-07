; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwmem.c_fwmem_xfer_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwmem.c_fwmem_xfer_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xfer = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, i8*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.fw_device = type { i32, i32, i32 }

@M_FWMEM = common dso_local global i32 0, align 4
@FWLOCALBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fw_xfer* (%struct.fw_device*, i32, i32, i32, i32, i8*)* @fwmem_xfer_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fw_xfer* @fwmem_xfer_req(%struct.fw_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.fw_xfer*, align 8
  %8 = alloca %struct.fw_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.fw_xfer*, align 8
  store %struct.fw_device* %0, %struct.fw_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* @M_FWMEM, align 4
  %16 = call %struct.fw_xfer* @fw_xfer_alloc(i32 %15)
  store %struct.fw_xfer* %16, %struct.fw_xfer** %14, align 8
  %17 = load %struct.fw_xfer*, %struct.fw_xfer** %14, align 8
  %18 = icmp eq %struct.fw_xfer* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store %struct.fw_xfer* null, %struct.fw_xfer** %7, align 8
  br label %71

20:                                               ; preds = %6
  %21 = load %struct.fw_device*, %struct.fw_device** %8, align 8
  %22 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fw_xfer*, %struct.fw_xfer** %14, align 8
  %25 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @FWLOCALBUS, align 4
  %27 = load %struct.fw_device*, %struct.fw_device** %8, align 8
  %28 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %26, %29
  %31 = load %struct.fw_xfer*, %struct.fw_xfer** %14, align 8
  %32 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %30, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %20
  %40 = load %struct.fw_device*, %struct.fw_device** %8, align 8
  %41 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fw_xfer*, %struct.fw_xfer** %14, align 8
  %44 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  br label %55

46:                                               ; preds = %20
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.fw_device*, %struct.fw_device** %8, align 8
  %49 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @min(i32 %47, i32 %50)
  %52 = load %struct.fw_xfer*, %struct.fw_xfer** %14, align 8
  %53 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %46, %39
  %56 = load i8*, i8** %13, align 8
  %57 = load %struct.fw_xfer*, %struct.fw_xfer** %14, align 8
  %58 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.fw_xfer*, %struct.fw_xfer** %14, align 8
  %61 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.fw_xfer*, %struct.fw_xfer** %14, align 8
  %64 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.fw_xfer*, %struct.fw_xfer** %14, align 8
  %68 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.fw_xfer*, %struct.fw_xfer** %14, align 8
  store %struct.fw_xfer* %70, %struct.fw_xfer** %7, align 8
  br label %71

71:                                               ; preds = %55, %19
  %72 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  ret %struct.fw_xfer* %72
}

declare dso_local %struct.fw_xfer* @fw_xfer_alloc(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
