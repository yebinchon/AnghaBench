; ModuleID = '/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_lower_subexp.c'
source_filename = "/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_lower_subexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_14__, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@BITSET_WORD_BITS = common dso_local global i32 0, align 4
@OP_OPEN_SUBEXP = common dso_local global i32 0, align 4
@OP_CLOSE_SUBEXP = common dso_local global i32 0, align 4
@CONCAT = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (i32*, %struct.TYPE_15__*, %struct.TYPE_17__*)* @lower_subexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @lower_subexp(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %8, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %9, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %3
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = icmp ne %struct.TYPE_17__* %28, null
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BITSET_WORD_BITS, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %30
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %41, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %38, %30
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %4, align 8
  br label %122

54:                                               ; preds = %38, %25, %3
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = load i32, i32* @OP_OPEN_SUBEXP, align 4
  %57 = call %struct.TYPE_17__* @create_tree(%struct.TYPE_16__* %55, %struct.TYPE_17__* null, %struct.TYPE_17__* null, i32 %56)
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %10, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %59 = load i32, i32* @OP_CLOSE_SUBEXP, align 4
  %60 = call %struct.TYPE_17__* @create_tree(%struct.TYPE_16__* %58, %struct.TYPE_17__* null, %struct.TYPE_17__* null, i32 %59)
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %11, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %62 = icmp ne %struct.TYPE_17__* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %67 = load i32, i32* @CONCAT, align 4
  %68 = call %struct.TYPE_17__* @create_tree(%struct.TYPE_16__* %64, %struct.TYPE_17__* %65, %struct.TYPE_17__* %66, i32 %67)
  br label %71

69:                                               ; preds = %54
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  br label %71

71:                                               ; preds = %69, %63
  %72 = phi %struct.TYPE_17__* [ %68, %63 ], [ %70, %69 ]
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %12, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %76 = load i32, i32* @CONCAT, align 4
  %77 = call %struct.TYPE_17__* @create_tree(%struct.TYPE_16__* %73, %struct.TYPE_17__* %74, %struct.TYPE_17__* %75, i32 %76)
  store %struct.TYPE_17__* %77, %struct.TYPE_17__** %13, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %79 = icmp eq %struct.TYPE_17__* %78, null
  br i1 %79, label %89, label %80

80:                                               ; preds = %71
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %82 = icmp eq %struct.TYPE_17__* %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %85 = icmp eq %struct.TYPE_17__* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %88 = icmp eq %struct.TYPE_17__* %87, null
  br label %89

89:                                               ; preds = %86, %83, %80, %71
  %90 = phi i1 [ true, %83 ], [ true, %80 ], [ true, %71 ], [ %88, %86 ]
  %91 = zext i1 %90 to i32
  %92 = call i64 @BE(i32 %91, i32 0)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @REG_ESPACE, align 4
  %96 = load i32*, i32** %5, align 8
  store i32 %95, i32* %96, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %122

97:                                               ; preds = %89
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i32 %102, i32* %110, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  store i32 %114, i32* %120, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %121, %struct.TYPE_17__** %4, align 8
  br label %122

122:                                              ; preds = %97, %94, %50
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  ret %struct.TYPE_17__* %123
}

declare dso_local %struct.TYPE_17__* @create_tree(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @BE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
