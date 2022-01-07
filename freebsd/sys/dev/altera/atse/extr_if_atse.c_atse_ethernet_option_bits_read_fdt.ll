; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_ethernet_option_bits_read_fdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_ethernet_option_bits_read_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@atse_ethernet_option_bits_flag = common dso_local global i32 0, align 4
@ATSE_ETHERNET_OPTION_BITS_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cfi\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ALTERA_ETHERNET_OPTION_BITS_LEN = common dso_local global i32 0, align 4
@ALTERA_ETHERNET_OPTION_BITS_OFF = common dso_local global i64 0, align 8
@atse_ethernet_option_bits = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @atse_ethernet_option_bits_read_fdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atse_ethernet_option_bits_read_fdt(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32, i32* @atse_ethernet_option_bits_flag, align 4
  %9 = load i32, i32* @ATSE_ETHERNET_OPTION_BITS_READ, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @device_get_parent(i32* %14)
  %16 = call i32* @device_find_child(i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOENT, align 4
  store i32 %20, i32* %2, align 4
  br label %60

21:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @SYS_RES_MEMORY, align 4
  %24 = load i32, i32* @RF_ACTIVE, align 4
  %25 = load i32, i32* @RF_SHAREABLE, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.resource* @bus_alloc_resource_any(i32* %22, i32 %23, i32* %7, i32 %26)
  store %struct.resource* %27, %struct.resource** %4, align 8
  %28 = load %struct.resource*, %struct.resource** %4, align 8
  %29 = icmp eq %struct.resource* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %60

32:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ALTERA_ETHERNET_OPTION_BITS_LEN, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load %struct.resource*, %struct.resource** %4, align 8
  %39 = load i64, i64* @ALTERA_ETHERNET_OPTION_BITS_OFF, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = call i32 @bus_read_1(%struct.resource* %38, i64 %42)
  %44 = load i32*, i32** @atse_ethernet_option_bits, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %33

51:                                               ; preds = %33
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @SYS_RES_MEMORY, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.resource*, %struct.resource** %4, align 8
  %56 = call i32 @bus_release_resource(i32* %52, i32 %53, i32 %54, %struct.resource* %55)
  %57 = load i32, i32* @ATSE_ETHERNET_OPTION_BITS_READ, align 4
  %58 = load i32, i32* @atse_ethernet_option_bits_flag, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* @atse_ethernet_option_bits_flag, align 4
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %51, %30, %19, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32* @device_find_child(i32, i8*, i32) #1

declare dso_local i32 @device_get_parent(i32*) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32*, i32, i32*, i32) #1

declare dso_local i32 @bus_read_1(%struct.resource*, i64) #1

declare dso_local i32 @bus_release_resource(i32*, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
