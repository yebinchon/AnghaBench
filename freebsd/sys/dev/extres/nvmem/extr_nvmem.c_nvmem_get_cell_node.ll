; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/nvmem/extr_nvmem.c_nvmem_get_cell_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/nvmem/extr_nvmem.c_nvmem_get_cell_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"nvmem-cells\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"nvmem-cell-names\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"nvmem_get_node: Cannot resolve phandle %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64*)* @nvmem_get_cell_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmem_get_cell_node(i64 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @OF_hasprop(i64 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @OF_hasprop(i64 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %3
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %4, align 4
  br label %61

20:                                               ; preds = %14
  %21 = load i64, i64* %5, align 8
  %22 = bitcast i64** %8 to i8**
  %23 = call i32 @OF_getencprop_alloc_multi(i64 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 8, i8** %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOENT, align 4
  store i32 %27, i32* %4, align 4
  br label %61

28:                                               ; preds = %20
  %29 = load i64*, i64** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @OF_node_from_xref(i64 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %35, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %28
  %43 = load i64, i64* @bootverbose, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i64*, i64** %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %45, %42
  %53 = load i64*, i64** %8, align 8
  %54 = call i32 @OF_prop_free(i64* %53)
  %55 = load i32, i32* @ENOENT, align 4
  store i32 %55, i32* %4, align 4
  br label %61

56:                                               ; preds = %28
  %57 = load i64*, i64** %8, align 8
  %58 = call i32 @OF_prop_free(i64* %57)
  %59 = load i64, i64* %9, align 8
  %60 = load i64*, i64** %7, align 8
  store i64 %59, i64* %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %52, %26, %18
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @OF_hasprop(i64, i8*) #1

declare dso_local i32 @OF_getencprop_alloc_multi(i64, i8*, i32, i8**) #1

declare dso_local i64 @OF_node_from_xref(i64) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @OF_prop_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
