; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_azt2320_mss_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_azt2320_mss_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i32 }
%struct.resource = type { i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SBDSP_STATUS = common dso_local global i32 0, align 4
@SBDSP_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mss_info*, i32)* @azt2320_mss_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azt2320_mss_mode(%struct.mss_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mss_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mss_info* %0, %struct.mss_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SYS_RES_IOPORT, align 4
  %11 = load i32, i32* @RF_ACTIVE, align 4
  %12 = call %struct.resource* @bus_alloc_resource_any(i32 %9, i32 %10, i32* %8, i32 %11)
  store %struct.resource* %12, %struct.resource** %5, align 8
  %13 = load %struct.resource*, %struct.resource** %5, align 8
  %14 = icmp ne %struct.resource* %13, null
  br i1 %14, label %15, label %70

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %36, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 1000
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load %struct.resource*, %struct.resource** %5, align 8
  %21 = load i32, i32* @SBDSP_STATUS, align 4
  %22 = call i32 @port_rd(%struct.resource* %20, i32 %21)
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 100
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1000, i32 10
  %30 = call i32 @DELAY(i32 %29)
  br label %35

31:                                               ; preds = %19
  %32 = load %struct.resource*, %struct.resource** %5, align 8
  %33 = load i32, i32* @SBDSP_CMD, align 4
  %34 = call i32 @port_wr(%struct.resource* %32, i32 %33, i32 9)
  br label %39

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %16

39:                                               ; preds = %31, %16
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %60, %39
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 1000
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load %struct.resource*, %struct.resource** %5, align 8
  %45 = load i32, i32* @SBDSP_STATUS, align 4
  %46 = call i32 @port_rd(%struct.resource* %44, i32 %45)
  %47 = and i32 %46, 128
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 100
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1000, i32 10
  %54 = call i32 @DELAY(i32 %53)
  br label %59

55:                                               ; preds = %43
  %56 = load %struct.resource*, %struct.resource** %5, align 8
  %57 = load i32, i32* @SBDSP_CMD, align 4
  %58 = call i32 @port_wr(%struct.resource* %56, i32 %57, i32 0)
  store i32 0, i32* %7, align 4
  br label %63

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %40

63:                                               ; preds = %55, %40
  %64 = call i32 @DELAY(i32 1000)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @SYS_RES_IOPORT, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.resource*, %struct.resource** %5, align 8
  %69 = call i32 @bus_release_resource(i32 %65, i32 %66, i32 %67, %struct.resource* %68)
  br label %70

70:                                               ; preds = %63, %2
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @port_rd(%struct.resource*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @port_wr(%struct.resource*, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
