; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_immr_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_immr_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"simple-bus\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@fdt_immr_pa = common dso_local global i8* null, align 8
@fdt_immr_va = common dso_local global i32 0, align 4
@fdt_immr_size = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_immr_addr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 @OF_finddevice(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %4, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @ofw_bus_node_is_compatible(i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %28

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %1
  %17 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %17, i32* %4, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %38

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @fdt_find_compatible(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %23, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %38

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @fdt_get_range(i32 %29, i32 0, i8** %5, i8** %6)
  store i32 %30, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** @fdt_immr_pa, align 8
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* @fdt_immr_va, align 4
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** @fdt_immr_size, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %25, %19
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i64 @ofw_bus_node_is_compatible(i32, i8*) #1

declare dso_local i32 @fdt_find_compatible(i32, i8*, i32) #1

declare dso_local i32 @fdt_get_range(i32, i32, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
