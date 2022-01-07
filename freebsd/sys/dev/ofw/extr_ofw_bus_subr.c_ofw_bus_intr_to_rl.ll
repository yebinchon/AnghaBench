; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_intr_to_rl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_intr_to_rl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"No interrupt-parent found, assuming direct parent\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Missing #interrupt-cells property, assuming <1>\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"Invalid #interrupt-cells property value <%d>, assuming <1>\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"interrupts-extended\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Missing #interrupt-cells property\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"Invalid #interrupt-cells property value <%d>\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_OFWPROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_bus_intr_to_rl(i32 %0, i64 %1, %struct.resource_list* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.resource_list*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store %struct.resource_list* %2, %struct.resource_list** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i64, i64* %7, align 8
  %20 = bitcast i32** %12 to i8**
  %21 = call i32 @OF_getencprop_alloc_multi(i64 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4, i8** %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %4
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @ofw_bus_find_iparent(i64 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32, i8*, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @OF_parent(i64 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @OF_xref_from_node(i64 %34)
  store i64 %35, i64* %10, align 8
  br label %36

36:                                               ; preds = %29, %24
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @OF_node_from_xref(i64 %37)
  %39 = call i32 @OF_searchencprop(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %11, i32 4)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  store i32 1, i32* %11, align 4
  br label %55

55:                                               ; preds = %51, %47
  store i32 0, i32* %18, align 4
  br label %64

56:                                               ; preds = %4
  %57 = load i64, i64* %7, align 8
  %58 = bitcast i32** %12 to i8**
  %59 = call i32 @OF_getencprop_alloc_multi(i64 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 4, i8** %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %134

63:                                               ; preds = %56
  store i32 1, i32* %18, align 4
  br label %64

64:                                               ; preds = %63, %55
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %119, %64
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %123

69:                                               ; preds = %65
  %70 = load i32, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %69
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @OF_node_from_xref(i64 %80)
  %82 = call i32 @OF_searchencprop(i32 %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %11, i32 4)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load i32, i32* %6, align 4
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32, i32* @ENOENT, align 4
  store i32 %87, i32* %13, align 4
  br label %123

88:                                               ; preds = %72
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %16, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91, %88
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @ERANGE, align 4
  store i32 %101, i32* %13, align 4
  br label %123

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %69
  %104 = load i32, i32* %6, align 4
  %105 = load i64, i64* %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = call i32 @ofw_bus_map_intr(i32 %104, i64 %105, i32 %106, i32* %110)
  store i32 %111, i32* %15, align 4
  %112 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %113 = load i32, i32* @SYS_RES_IRQ, align 4
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @resource_list_add(%struct.resource_list* %112, i32 %113, i32 %114, i32 %116, i32 %117, i32 1)
  br label %119

119:                                              ; preds = %103
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %14, align 4
  br label %65

123:                                              ; preds = %97, %84, %65
  %124 = load i32*, i32** %9, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* %17, align 4
  %128 = load i32*, i32** %9, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* @M_OFWPROP, align 4
  %132 = call i32 @free(i32* %130, i32 %131)
  %133 = load i32, i32* %13, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %129, %62
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @OF_getencprop_alloc_multi(i64, i8*, i32, i8**) #1

declare dso_local i64 @ofw_bus_find_iparent(i64) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @OF_parent(i64) #1

declare dso_local i64 @OF_xref_from_node(i64) #1

declare dso_local i32 @OF_searchencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_node_from_xref(i64) #1

declare dso_local i32 @ofw_bus_map_intr(i32, i64, i32, i32*) #1

declare dso_local i32 @resource_list_add(%struct.resource_list*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
