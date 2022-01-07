; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_clock.c_fdt_clock_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_clock.c_fdt_clock_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_clock_info = type { i32, i8*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_clock_get_info(i32* %0, i32 %1, %struct.fdt_clock_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fdt_clock_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fdt_clock_info* %2, %struct.fdt_clock_info** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @ofw_bus_get_node(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = bitcast i32** %13 to i8**
  %18 = call i32 @OF_getencprop_alloc_multi(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4, i8** %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %4, align 4
  br label %68

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, 2
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %11, align 4
  br label %64

31:                                               ; preds = %23
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @OF_device_from_xref(i32 %36)
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %11, align 4
  br label %63

42:                                               ; preds = %31
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load %struct.fdt_clock_info*, %struct.fdt_clock_info** %7, align 8
  %50 = call i32 @bzero(%struct.fdt_clock_info* %49, i32 24)
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.fdt_clock_info*, %struct.fdt_clock_info** %7, align 8
  %53 = getelementptr inbounds %struct.fdt_clock_info, %struct.fdt_clock_info* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.fdt_clock_info*, %struct.fdt_clock_info** %7, align 8
  %56 = getelementptr inbounds %struct.fdt_clock_info, %struct.fdt_clock_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.fdt_clock_info*, %struct.fdt_clock_info** %7, align 8
  %58 = getelementptr inbounds %struct.fdt_clock_info, %struct.fdt_clock_info* %57, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %58, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.fdt_clock_info*, %struct.fdt_clock_info** %7, align 8
  %62 = call i32 @FDT_CLOCK_GET_INFO(i32* %59, i32 %60, %struct.fdt_clock_info* %61)
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %42, %40
  br label %64

64:                                               ; preds = %63, %29
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @OF_prop_free(i32* %65)
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %21
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @OF_getencprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32* @OF_device_from_xref(i32) #1

declare dso_local i32 @bzero(%struct.fdt_clock_info*, i32) #1

declare dso_local i32 @FDT_CLOCK_GET_INFO(i32*, i32, %struct.fdt_clock_info*) #1

declare dso_local i32 @OF_prop_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
