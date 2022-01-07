; ModuleID = '/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_parse_sub_exp.c'
source_filename = "/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_parse_sub_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i32 }

@RE_CARET_ANCHORS_HERE = common dso_local global i32 0, align 4
@OP_CLOSE_SUBEXP = common dso_local global i64 0, align 8
@REG_NOERROR = common dso_local global i64 0, align 8
@REG_EPAREN = common dso_local global i64 0, align 8
@SUBEXP = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (i32*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32, i64*)* @parse_sub_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @parse_sub_exp(i32* %0, %struct.TYPE_19__* %1, %struct.TYPE_20__* %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %14, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = sext i32 %23 to i64
  store i64 %25, i64* %16, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @RE_CARET_ANCHORS_HERE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @fetch_token(%struct.TYPE_20__* %26, i32* %27, i32 %30)
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OP_CLOSE_SUBEXP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %15, align 8
  br label %74

38:                                               ; preds = %6
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i64*, i64** %13, align 8
  %45 = call %struct.TYPE_22__* @parse_reg_exp(i32* %39, %struct.TYPE_19__* %40, %struct.TYPE_20__* %41, i32 %42, i32 %43, i64* %44)
  store %struct.TYPE_22__* %45, %struct.TYPE_22__** %15, align 8
  %46 = load i64*, i64** %13, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @REG_NOERROR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @OP_CLOSE_SUBEXP, align 8
  %55 = icmp ne i64 %53, %54
  br label %56

56:                                               ; preds = %50, %38
  %57 = phi i1 [ false, %38 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @BE(i32 %58, i32 0)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i64, i64* @REG_EPAREN, align 8
  %63 = load i64*, i64** %13, align 8
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i64*, i64** %13, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @REG_NOERROR, align 8
  %68 = icmp ne i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @BE(i32 %69, i32 0)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %105

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %37
  %75 = load i64, i64* %16, align 8
  %76 = icmp ule i64 %75, 8
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i64, i64* %16, align 8
  %79 = trunc i64 %78 to i32
  %80 = shl i32 1, %79
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %77, %74
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %88 = load i32, i32* @SUBEXP, align 4
  %89 = call %struct.TYPE_22__* @create_tree(%struct.TYPE_21__* %86, %struct.TYPE_22__* %87, i32* null, i32 %88)
  store %struct.TYPE_22__* %89, %struct.TYPE_22__** %15, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %91 = icmp eq %struct.TYPE_22__* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i64 @BE(i32 %92, i32 0)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i64, i64* @REG_ESPACE, align 8
  %97 = load i64*, i64** %13, align 8
  store i64 %96, i64* %97, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %105

98:                                               ; preds = %85
  %99 = load i64, i64* %16, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  store i64 %99, i64* %103, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_22__* %104, %struct.TYPE_22__** %7, align 8
  br label %105

105:                                              ; preds = %98, %95, %72
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  ret %struct.TYPE_22__* %106
}

declare dso_local i32 @fetch_token(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local %struct.TYPE_22__* @parse_reg_exp(i32*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32, i64*) #1

declare dso_local i64 @BE(i32, i32) #1

declare dso_local %struct.TYPE_22__* @create_tree(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
