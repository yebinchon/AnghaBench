; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/isa/extr_isa.c_isa_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/isa/extr_isa.c_isa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@isab_node = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@isab_ranges = common dso_local global %struct.TYPE_4__* null, align 8
@isab_nrange = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"isa_init: cannot get bridge range property\00", align 1
@isa_iinfo = common dso_local global i32 0, align 4
@isa_io_base = common dso_local global i8* null, align 8
@isa_io_limit = common dso_local global i32 0, align 4
@isa_mem_base = common dso_local global i8* null, align 8
@isa_mem_limit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isa_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @device_get_parent(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ofw_bus_get_node(i32 %7)
  store i32 %8, i32* @isab_node, align 4
  %9 = load i32, i32* @isab_node, align 4
  %10 = call i32 @OF_getprop_alloc_multi(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4, i8** bitcast (%struct.TYPE_4__** @isab_ranges to i8**))
  store i32 %10, i32* @isab_nrange, align 4
  %11 = load i32, i32* @isab_nrange, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* @isab_node, align 4
  %17 = call i32 @ofw_bus_setup_iinfo(i32 %16, i32* @isa_iinfo, i32 4)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @isab_node, align 4
  %20 = call i32 @isa_setup_children(i32 %18, i32 %19)
  %21 = load i32, i32* @isab_nrange, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %57, %15
  %24 = load i32, i32* %4, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %23
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isab_ranges, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = call i32 @ISAB_RANGE_SPACE(%struct.TYPE_4__* %30)
  switch i32 %31, label %56 [
    i32 129, label %32
    i32 128, label %44
  ]

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isab_ranges, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = call i8* @ISAB_RANGE_PHYS(%struct.TYPE_4__* %36)
  store i8* %37, i8** @isa_io_base, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isab_ranges, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* @isa_io_limit, align 4
  br label %56

44:                                               ; preds = %26
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isab_ranges, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = call i8* @ISAB_RANGE_PHYS(%struct.TYPE_4__* %48)
  store i8* %49, i8** @isa_mem_base, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isab_ranges, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* @isa_mem_limit, align 4
  br label %56

56:                                               ; preds = %26, %44, %32
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %4, align 4
  br label %23

60:                                               ; preds = %23
  ret void
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ofw_bus_setup_iinfo(i32, i32*, i32) #1

declare dso_local i32 @isa_setup_children(i32, i32) #1

declare dso_local i32 @ISAB_RANGE_SPACE(%struct.TYPE_4__*) #1

declare dso_local i8* @ISAB_RANGE_PHYS(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
