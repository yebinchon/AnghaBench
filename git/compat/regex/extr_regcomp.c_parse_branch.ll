; ModuleID = '/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_parse_branch.c'
source_filename = "/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_parse_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@REG_NOERROR = common dso_local global i64 0, align 8
@OP_ALT = common dso_local global i64 0, align 8
@END_OF_RE = common dso_local global i64 0, align 8
@OP_CLOSE_SUBEXP = common dso_local global i64 0, align 8
@CONCAT = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i64*)* @parse_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_branch(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %16, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i64*, i64** %13, align 8
  %27 = call i32* @parse_expression(i32* %21, %struct.TYPE_7__* %22, %struct.TYPE_8__* %23, i32 %24, i32 %25, i64* %26)
  store i32* %27, i32** %14, align 8
  %28 = load i64*, i64** %13, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REG_NOERROR, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %6
  %33 = load i32*, i32** %14, align 8
  %34 = icmp eq i32* %33, null
  br label %35

35:                                               ; preds = %32, %6
  %36 = phi i1 [ false, %6 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @BE(i32 %37, i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32* null, i32** %7, align 8
  br label %115

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %112, %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @OP_ALT, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @END_OF_RE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @OP_CLOSE_SUBEXP, align 8
  %62 = icmp ne i64 %60, %61
  br label %63

63:                                               ; preds = %57, %54
  %64 = phi i1 [ true, %54 ], [ %62, %57 ]
  br label %65

65:                                               ; preds = %63, %48, %42
  %66 = phi i1 [ false, %48 ], [ false, %42 ], [ %64, %63 ]
  br i1 %66, label %67, label %113

67:                                               ; preds = %65
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i64*, i64** %13, align 8
  %74 = call i32* @parse_expression(i32* %68, %struct.TYPE_7__* %69, %struct.TYPE_8__* %70, i32 %71, i32 %72, i64* %73)
  store i32* %74, i32** %15, align 8
  %75 = load i64*, i64** %13, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @REG_NOERROR, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load i32*, i32** %15, align 8
  %81 = icmp eq i32* %80, null
  br label %82

82:                                               ; preds = %79, %67
  %83 = phi i1 [ false, %67 ], [ %81, %79 ]
  %84 = zext i1 %83 to i32
  %85 = call i64 @BE(i32 %84, i32 0)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32* null, i32** %7, align 8
  br label %115

88:                                               ; preds = %82
  %89 = load i32*, i32** %14, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load i32*, i32** %15, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load i32*, i32** %16, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = load i32, i32* @CONCAT, align 4
  %99 = call i32* @create_tree(i32* %95, i32* %96, i32* %97, i32 %98)
  store i32* %99, i32** %14, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i64, i64* @REG_ESPACE, align 8
  %104 = load i64*, i64** %13, align 8
  store i64 %103, i64* %104, align 8
  store i32* null, i32** %7, align 8
  br label %115

105:                                              ; preds = %94
  br label %112

106:                                              ; preds = %91, %88
  %107 = load i32*, i32** %14, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32*, i32** %15, align 8
  store i32* %110, i32** %14, align 8
  br label %111

111:                                              ; preds = %109, %106
  br label %112

112:                                              ; preds = %111, %105
  br label %42

113:                                              ; preds = %65
  %114 = load i32*, i32** %14, align 8
  store i32* %114, i32** %7, align 8
  br label %115

115:                                              ; preds = %113, %102, %87, %40
  %116 = load i32*, i32** %7, align 8
  ret i32* %116
}

declare dso_local i32* @parse_expression(i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i64*) #1

declare dso_local i64 @BE(i32, i32) #1

declare dso_local i32* @create_tree(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
