; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_pinctrl.c_pinctrl_configure_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_pinctrl.c_pinctrl_configure_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"pinctrl-0\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Processing %d pin-config node(s) in pinctrl-0 for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @pinctrl_configure_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pinctrl_configure_children(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = call i32 (...) @TSENTER()
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @OF_child(i64 %11)
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %70, %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %73

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @ofw_bus_node_status_okay(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %70

21:                                               ; preds = %16
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @pinctrl_configure_children(i64 %22, i64 %23)
  %25 = load i64, i64* %5, align 8
  %26 = bitcast i64** %6 to i8**
  %27 = call i32 @OF_getencprop_alloc_multi(i64 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 8, i8** %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %70

31:                                               ; preds = %21
  %32 = load i64, i64* @bootverbose, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i64, i64* %5, align 8
  %36 = bitcast [32 x i8]* %9 to i8**
  %37 = call i32 @OF_getprop(i64 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %36, i32 32)
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %40 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %38, i8* %39)
  br label %41

41:                                               ; preds = %34, %31
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %64, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = load i64*, i64** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @OF_device_from_xref(i64 %51)
  %53 = load i64, i64* %3, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %46
  %56 = load i64, i64* %3, align 8
  %57 = load i64*, i64** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @FDT_PINCTRL_CONFIGURE(i64 %56, i64 %61)
  br label %63

63:                                               ; preds = %55, %46
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %42

67:                                               ; preds = %42
  %68 = load i64*, i64** %6, align 8
  %69 = call i32 @OF_prop_free(i64* %68)
  br label %70

70:                                               ; preds = %67, %30, %20
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @OF_peer(i64 %71)
  store i64 %72, i64* %5, align 8
  br label %13

73:                                               ; preds = %13
  %74 = call i32 (...) @TSEXIT()
  ret i32 0
}

declare dso_local i32 @TSENTER(...) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @ofw_bus_node_status_okay(i64) #1

declare dso_local i32 @OF_getencprop_alloc_multi(i64, i8*, i32, i8**) #1

declare dso_local i32 @OF_getprop(i64, i8*, i8**, i32) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i64 @OF_device_from_xref(i64) #1

declare dso_local i32 @FDT_PINCTRL_CONFIGURE(i64, i64) #1

declare dso_local i32 @OF_prop_free(i64*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @TSEXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
