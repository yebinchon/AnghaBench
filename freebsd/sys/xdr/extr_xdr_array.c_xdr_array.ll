; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xdr/extr_xdr_array.c_xdr_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xdr/extr_xdr_array.c_xdr_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"xdr_array: out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xdr_array(%struct.TYPE_7__* %0, i32** %1, i32* %2, i32 %3, i32 %4, i64 (%struct.TYPE_7__*, i32*)* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64 (%struct.TYPE_7__*, i32*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 (%struct.TYPE_7__*, i32*)* %5, i64 (%struct.TYPE_7__*, i32*)** %13, align 8
  %19 = load i32**, i32*** %9, align 8
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %15, align 8
  %21 = load i64, i64* @TRUE, align 8
  store i64 %21, i64* %17, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @xdr_u_int(%struct.TYPE_7__* %22, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %6
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %7, align 8
  br label %114

28:                                               ; preds = %6
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @UINT_MAX, align 4
  %36 = load i32, i32* %12, align 4
  %37 = sdiv i32 %35, %36
  %38 = load i32, i32* %16, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34, %28
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 128
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i64, i64* @FALSE, align 8
  store i64 %46, i64* %7, align 8
  br label %114

47:                                               ; preds = %40, %34
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %12, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %18, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %79

53:                                               ; preds = %47
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %78 [
    i32 130, label %57
    i32 128, label %75
    i32 129, label %77
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* %16, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* @TRUE, align 8
  store i64 %61, i64* %7, align 8
  br label %114

62:                                               ; preds = %57
  %63 = load i32, i32* %18, align 4
  %64 = call i32* @mem_alloc(i32 %63)
  store i32* %64, i32** %15, align 8
  %65 = load i32**, i32*** %9, align 8
  store i32* %64, i32** %65, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* %7, align 8
  br label %114

71:                                               ; preds = %62
  %72 = load i32*, i32** %15, align 8
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @memset(i32* %72, i32 0, i32 %73)
  br label %78

75:                                               ; preds = %53
  %76 = load i64, i64* @TRUE, align 8
  store i64 %76, i64* %7, align 8
  br label %114

77:                                               ; preds = %53
  br label %78

78:                                               ; preds = %53, %77, %71
  br label %79

79:                                               ; preds = %78, %47
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %98, %79
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i64, i64* %17, align 8
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi i1 [ false, %80 ], [ %86, %84 ]
  br i1 %88, label %89, label %101

89:                                               ; preds = %87
  %90 = load i64 (%struct.TYPE_7__*, i32*)*, i64 (%struct.TYPE_7__*, i32*)** %13, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = call i64 %90(%struct.TYPE_7__* %91, i32* %92)
  store i64 %93, i64* %17, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32*, i32** %15, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %15, align 8
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %80

101:                                              ; preds = %87
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 128
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32**, i32*** %9, align 8
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %18, align 4
  %110 = call i32 @mem_free(i32* %108, i32 %109)
  %111 = load i32**, i32*** %9, align 8
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %106, %101
  %113 = load i64, i64* %17, align 8
  store i64 %113, i64* %7, align 8
  br label %114

114:                                              ; preds = %112, %75, %68, %60, %45, %26
  %115 = load i64, i64* %7, align 8
  ret i64 %115
}

declare dso_local i32 @xdr_u_int(%struct.TYPE_7__*, i32*) #1

declare dso_local i32* @mem_alloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mem_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
