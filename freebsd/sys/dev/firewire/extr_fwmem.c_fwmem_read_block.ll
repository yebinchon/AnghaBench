; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwmem.c_fwmem_read_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwmem.c_fwmem_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xfer = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i32*, %struct.fw_pkt }
%struct.fw_pkt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32 }
%struct.fw_device = type { i32 }

@FWTCODE_RREQB = common dso_local global i32 0, align 4
@fwmem_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"fwmem_read_block: %d %04x:%08x %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fw_xfer* @fwmem_read_block(%struct.fw_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, void (%struct.fw_xfer*)* %7) #0 {
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
  %24 = call i32 @roundup2(i32 %23, i32 4)
  %25 = load void (%struct.fw_xfer*)*, void (%struct.fw_xfer*)** %17, align 8
  %26 = call %struct.fw_xfer* @fwmem_xfer_req(%struct.fw_device* %20, i32 %21, i32 %22, i32 0, i32 %24, void (%struct.fw_xfer*)* %25)
  store %struct.fw_xfer* %26, %struct.fw_xfer** %18, align 8
  %27 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  %28 = icmp eq %struct.fw_xfer* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %8
  store %struct.fw_xfer* null, %struct.fw_xfer** %9, align 8
  br label %87

30:                                               ; preds = %8
  %31 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  %32 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store %struct.fw_pkt* %33, %struct.fw_pkt** %19, align 8
  %34 = load i32, i32* @FWTCODE_RREQB, align 4
  %35 = load %struct.fw_pkt*, %struct.fw_pkt** %19, align 8
  %36 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  store i32 %34, i32* %38, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.fw_pkt*, %struct.fw_pkt** %19, align 8
  %41 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.fw_pkt*, %struct.fw_pkt** %19, align 8
  %46 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.fw_pkt*, %struct.fw_pkt** %19, align 8
  %51 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store i32 %49, i32* %53, align 8
  %54 = load %struct.fw_pkt*, %struct.fw_pkt** %19, align 8
  %55 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  %59 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  %63 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load i64, i64* @fwmem_debug, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %30
  %68 = load %struct.fw_device*, %struct.fw_device** %10, align 8
  %69 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %67, %30
  %76 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  %77 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  %80 = call i64 @fw_asyreq(i32 %78, i32 -1, %struct.fw_xfer* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  store %struct.fw_xfer* %83, %struct.fw_xfer** %9, align 8
  br label %87

84:                                               ; preds = %75
  %85 = load %struct.fw_xfer*, %struct.fw_xfer** %18, align 8
  %86 = call i32 @fw_xfer_free(%struct.fw_xfer* %85)
  store %struct.fw_xfer* null, %struct.fw_xfer** %9, align 8
  br label %87

87:                                               ; preds = %84, %82, %29
  %88 = load %struct.fw_xfer*, %struct.fw_xfer** %9, align 8
  ret %struct.fw_xfer* %88
}

declare dso_local %struct.fw_xfer* @fwmem_xfer_req(%struct.fw_device*, i32, i32, i32, i32, void (%struct.fw_xfer*)*) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @fw_asyreq(i32, i32, %struct.fw_xfer*) #1

declare dso_local i32 @fw_xfer_free(%struct.fw_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
