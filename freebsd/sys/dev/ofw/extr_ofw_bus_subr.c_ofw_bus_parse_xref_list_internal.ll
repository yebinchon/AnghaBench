; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_parse_xref_list_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_parse_xref_list_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Missing %s property\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid %s property value <%d>\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@M_OFWPROP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i32, i32*, i32*, i32**)* @ofw_bus_parse_xref_list_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_bus_parse_xref_list_internal(i32 %0, i8* %1, i8* %2, i32 %3, i32* %4, i32* %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32** %6, i32*** %15, align 8
  store i32* null, i32** %17, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = bitcast i32** %17 to i8**
  %27 = call i32 @OF_getencprop_alloc_multi(i32 %24, i8* %25, i32 4, i8** %26)
  store i32 %27, i32* %22, align 4
  %28 = load i32, i32* %22, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* @ENOENT, align 4
  store i32 %31, i32* %8, align 4
  br label %134

32:                                               ; preds = %7
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @ENOENT, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi i32 [ 0, %35 ], [ %37, %36 ]
  store i32 %39, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %23, align 4
  br label %40

40:                                               ; preds = %110, %38
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* %22, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %116

44:                                               ; preds = %40
  %45 = load i32*, i32** %17, align 8
  %46 = load i32, i32* %20, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %20, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @OF_node_from_xref(i32 %51)
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @OF_getencprop(i32 %52, i8* %53, i32* %18, i32 4)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* @ENOENT, align 4
  store i32 %59, i32* %19, align 4
  br label %116

60:                                               ; preds = %44
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* %18, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %22, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* %18, align 4
  %69 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %67, i32 %68)
  %70 = load i32, i32* @ERANGE, align 4
  store i32 %70, i32* %19, align 4
  br label %116

71:                                               ; preds = %60
  %72 = load i32, i32* %23, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %109

75:                                               ; preds = %71
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* @M_OFWPROP, align 4
  %81 = load i32, i32* @M_WAITOK, align 4
  %82 = call i32* @malloc(i32 %79, i32 %80, i32 %81)
  %83 = load i32**, i32*** %15, align 8
  store i32* %82, i32** %83, align 8
  %84 = load i32, i32* %16, align 4
  %85 = load i32*, i32** %13, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32*, i32** %14, align 8
  store i32 %86, i32* %87, align 4
  store i32 0, i32* %21, align 4
  br label %88

88:                                               ; preds = %105, %75
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load i32*, i32** %17, align 8
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %21, align 4
  %96 = add nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32**, i32*** %15, align 8
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %21, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %99, i32* %104, align 4
  br label %105

105:                                              ; preds = %92
  %106 = load i32, i32* %21, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %21, align 4
  br label %88

108:                                              ; preds = %88
  store i32 0, i32* %19, align 4
  br label %116

109:                                              ; preds = %71
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %20, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %20, align 4
  %114 = load i32, i32* %23, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %23, align 4
  br label %40

116:                                              ; preds = %108, %66, %56, %40
  %117 = load i32*, i32** %17, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32*, i32** %17, align 8
  %121 = load i32, i32* @M_OFWPROP, align 4
  %122 = call i32 @free(i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %116
  %124 = load i32, i32* %12, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i32, i32* %19, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* %23, align 4
  %131 = load i32*, i32** %14, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %126, %123
  %133 = load i32, i32* %19, align 4
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %132, %30
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

declare dso_local i32 @OF_getencprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
