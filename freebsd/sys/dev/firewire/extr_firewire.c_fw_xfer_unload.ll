; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_xfer_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_xfer_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xfer = type { i32, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@FWXF_INQ = common dso_local global i32 0, align 4
@fw_xfer = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@FWXF_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"fw_xfer_free FWXF_START\0A\00", align 1
@FWXF_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_xfer_unload(%struct.fw_xfer* %0) #0 {
  %2 = alloca %struct.fw_xfer*, align 8
  store %struct.fw_xfer* %0, %struct.fw_xfer** %2, align 8
  %3 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %4 = icmp eq %struct.fw_xfer* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %62

6:                                                ; preds = %1
  %7 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %56

11:                                               ; preds = %6
  %12 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %13 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @FW_GLOCK(i32* %14)
  %16 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %17 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FWXF_INQ, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %11
  %23 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %24 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %28 = load i32, i32* @fw_xfer, align 4
  %29 = load i32, i32* @link, align 4
  %30 = call i32 @STAILQ_REMOVE(i32* %26, %struct.fw_xfer* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @FWXF_INQ, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %34 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %22, %11
  %38 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %39 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @FW_GUNLOCK(i32* %40)
  %42 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %43 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %46 = call i32 @fw_tl_free(i32* %44, %struct.fw_xfer* %45)
  %47 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %48 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FWXF_START, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %37
  br label %56

56:                                               ; preds = %55, %6
  %57 = load i32, i32* @FWXF_INIT, align 4
  %58 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %59 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %61 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %5
  ret void
}

declare dso_local i32 @FW_GLOCK(i32*) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.fw_xfer*, i32, i32) #1

declare dso_local i32 @FW_GUNLOCK(i32*) #1

declare dso_local i32 @fw_tl_free(i32*, %struct.fw_xfer*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
