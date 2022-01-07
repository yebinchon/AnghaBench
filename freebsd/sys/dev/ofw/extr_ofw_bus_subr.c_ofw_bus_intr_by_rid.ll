; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_intr_by_rid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_intr_by_rid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"No interrupt-parent found, assuming direct parent\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Missing #interrupt-cells property, assuming <1>\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"Invalid #interrupt-cells property value <%d>, assuming <1>\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"interrupts-extended\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Missing #interrupt-cells property\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"Invalid #interrupt-cells property value <%d>\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@M_OFWPROP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_bus_intr_by_rid(i32 %0, i64 %1, i32 %2, i64* %3, i32* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32** %5, i32*** %13, align 8
  %22 = load i64, i64* %9, align 8
  %23 = bitcast i32** %16 to i8**
  %24 = call i32 @OF_getencprop_alloc_multi(i64 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4, i8** %23)
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %19, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %6
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @ofw_bus_find_iparent(i64 %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @OF_parent(i64 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = call i64 @OF_xref_from_node(i64 %37)
  store i64 %38, i64* %14, align 8
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i64, i64* %14, align 8
  %41 = call i32 @OF_node_from_xref(i64 %40)
  %42 = call i32 @OF_searchencprop(i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %15, i32 4)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  store i32 1, i32* %15, align 4
  br label %58

58:                                               ; preds = %54, %50
  store i32 0, i32* %21, align 4
  br label %68

59:                                               ; preds = %6
  %60 = load i64, i64* %9, align 8
  %61 = bitcast i32** %16 to i8**
  %62 = call i32 @OF_getencprop_alloc_multi(i64 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 4, i8** %61)
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @ESRCH, align 4
  store i32 %66, i32* %7, align 4
  br label %148

67:                                               ; preds = %59
  store i32 1, i32* %21, align 4
  br label %68

68:                                               ; preds = %67, %58
  %69 = load i32, i32* @ESRCH, align 4
  store i32 %69, i32* %17, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %70

70:                                               ; preds = %137, %68
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %19, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %143

74:                                               ; preds = %70
  %75 = load i32, i32* %21, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %74
  %78 = load i32*, i32** %16, align 8
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %18, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %14, align 8
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @OF_node_from_xref(i64 %85)
  %87 = call i32 @OF_searchencprop(i32 %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %15, i32 4)
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %93

89:                                               ; preds = %77
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i32, i8*, ...) @device_printf(i32 %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %92 = load i32, i32* @ENOENT, align 4
  store i32 %92, i32* %17, align 4
  br label %143

93:                                               ; preds = %77
  %94 = load i32, i32* %15, align 4
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %19, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96, %93
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %15, align 4
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @ERANGE, align 4
  store i32 %106, i32* %17, align 4
  br label %143

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %74
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %136

112:                                              ; preds = %108
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* @M_OFWPROP, align 4
  %118 = load i32, i32* @M_WAITOK, align 4
  %119 = call i32* @malloc(i32 %116, i32 %117, i32 %118)
  %120 = load i32**, i32*** %13, align 8
  store i32* %119, i32** %120, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load i64*, i64** %11, align 8
  store i64 %121, i64* %122, align 8
  %123 = load i32, i32* %15, align 4
  %124 = load i32*, i32** %12, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32**, i32*** %13, align 8
  %126 = load i32*, i32** %125, align 8
  %127 = load i32*, i32** %16, align 8
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 4
  %134 = trunc i64 %133 to i32
  %135 = call i32 @memcpy(i32* %126, i32* %130, i32 %134)
  store i32 0, i32* %17, align 4
  br label %143

136:                                              ; preds = %108
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %18, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %20, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %20, align 4
  br label %70

143:                                              ; preds = %112, %102, %89, %70
  %144 = load i32*, i32** %16, align 8
  %145 = load i32, i32* @M_OFWPROP, align 4
  %146 = call i32 @free(i32* %144, i32 %145)
  %147 = load i32, i32* %17, align 4
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %143, %65
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local i32 @OF_getencprop_alloc_multi(i64, i8*, i32, i8**) #1

declare dso_local i64 @ofw_bus_find_iparent(i64) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @OF_parent(i64) #1

declare dso_local i64 @OF_xref_from_node(i64) #1

declare dso_local i32 @OF_searchencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_node_from_xref(i64) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
