; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_pcibus.c_ofw_pcibus_assign_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_pcibus.c_ofw_pcibus_assign_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"AAPL,interrupts\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ofw_pcibus_assign_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_pcibus_assign_interrupt(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ofw_bus_get_node(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @pci_get_intpin(i32 %16)
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @device_get_parent(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PCIB_ROUTE_INTERRUPT(i32 %20, i32 %21, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %93

25:                                               ; preds = %2
  store i32 -1, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @OF_getencprop(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %8, i32 4)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %25
  store i32 1, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @OF_node_from_xref(i32 %34)
  %36 = call i32 @OF_getencprop(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32 4)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %40 = call i32 @OF_getencprop(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %39, i32 8)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %37
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  br label %59

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %10, align 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %58 = call i32 @ofw_bus_map_intr(i32 %54, i32 %55, i32 %56, i32* %57)
  br label %59

59:                                               ; preds = %53, %50
  %60 = phi i32 [ %52, %50 ], [ %58, %53 ]
  store i32 %60, i32* %3, align 4
  br label %93

61:                                               ; preds = %37
  %62 = load i32, i32* %7, align 4
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %64 = call i32 @OF_getencprop(i32 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %63, i32 8)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 4, %68
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %61
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %79 = call i32 @ofw_bus_map_intr(i32 %75, i32 %76, i32 %77, i32* %78)
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %74, %71
  br label %86

82:                                               ; preds = %61
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @pci_get_intpin(i32 %83)
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %81
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @device_get_parent(i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PCIB_ROUTE_INTERRUPT(i32 %88, i32 %89, i32 %91)
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %86, %59, %15
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @pci_get_intpin(i32) #1

declare dso_local i32 @PCIB_ROUTE_INTERRUPT(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i32 @ofw_bus_map_intr(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
