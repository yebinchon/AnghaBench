; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwmem.c_fwmem_write_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwmem.c_fwmem_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xfer = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i8*, %struct.fw_pkt }
%struct.fw_pkt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32 }
%struct.fw_device = type { i32 }

@FWTCODE_WREQB = common dso_local global i32 0, align 4
@fwmem_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"fwmem_write_block: %d %04x:%08x %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fw_xfer* @fwmem_write_block(%struct.fw_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, void (%struct.fw_xfer*)* %7) #0 {
  %9 = alloca %struct.fw_xfer*, align 8
  %10 = alloca %struct.fw_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca void (%struct.fw_xfer*)*, align 8
  %18 = alloca %struct.fw_xfer*, align 8
  %19 = alloca %struct.fw_pkt*, align 8
  store %struct.fw_device* %0, %struct.fw_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store void (%struct.fw_xfer*)* %7, void (%struct.fw_xfer*)** %17, align 8
  %20 = load %struct.fw_device*, %struct.fw_device** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %15, align 4
  %24 = load void (%struct.fw_xfer*)*, void (%struct.fw_xfer*)** %17, align 8
  %25 = call %struct.fw_xfer* @fwmem_xfer_req(%struct.fw_device* %20, i32 %21, i32 %22, i32 %23, i32 0, void (%struct.fw_xfer*)* %24)
  store %struct.fw_xfer* %25, %struct.fw_xfer** %18, align 8
  %26 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  %27 = icmp eq %struct.fw_xfer* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %8
  store %struct.fw_xfer* null, %struct.fw_xfer** %9, align 8
  br label %86

29:                                               ; preds = %8
  %30 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  %31 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store %struct.fw_pkt* %32, %struct.fw_pkt** %19, align 8
  %33 = load i32, i32* @FWTCODE_WREQB, align 4
  %34 = load %struct.fw_pkt*, %struct.fw_pkt** %19, align 8
  %35 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  store i32 %33, i32* %37, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.fw_pkt*, %struct.fw_pkt** %19, align 8
  %40 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.fw_pkt*, %struct.fw_pkt** %19, align 8
  %45 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.fw_pkt*, %struct.fw_pkt** %19, align 8
  %50 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32 %48, i32* %52, align 8
  %53 = load %struct.fw_pkt*, %struct.fw_pkt** %19, align 8
  %54 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  %59 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  %61 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  %62 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load i64, i64* @fwmem_debug, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %29
  %67 = load %struct.fw_device*, %struct.fw_device** %10, align 8
  %68 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %29
  %75 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  %76 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  %79 = call i64 @fw_asyreq(i32 %77, i32 -1, %struct.fw_xfer* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  store %struct.fw_xfer* %82, %struct.fw_xfer** %9, align 8
  br label %86

83:                                               ; preds = %74
  %84 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  %85 = call i32 @fw_xfer_free(%struct.fw_xfer* %84)
  store %struct.fw_xfer* null, %struct.fw_xfer** %9, align 8
  br label %86

86:                                               ; preds = %83, %81, %28
  %87 = load %struct.fw_xfer*, %struct.fw_xfer** %9, align 8
  ret %struct.fw_xfer* %87
}

declare dso_local %struct.fw_xfer* @fwmem_xfer_req(%struct.fw_device*, i32, i32, i32, i32, void (%struct.fw_xfer*)*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @fw_asyreq(i32, i32, %struct.fw_xfer*) #1

declare dso_local i32 @fw_xfer_free(%struct.fw_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
