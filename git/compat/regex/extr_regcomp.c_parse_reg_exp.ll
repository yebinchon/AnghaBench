; ModuleID = '/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_parse_reg_exp.c'
source_filename = "/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_parse_reg_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@REG_NOERROR = common dso_local global i64 0, align 8
@OP_ALT = common dso_local global i64 0, align 8
@RE_CARET_ANCHORS_HERE = common dso_local global i32 0, align 4
@END_OF_RE = common dso_local global i64 0, align 8
@OP_CLOSE_SUBEXP = common dso_local global i64 0, align 8
@REG_ESPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32, i64*)* @parse_reg_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_reg_exp(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %14, align 8
  store i32* null, i32** %16, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i64*, i64** %13, align 8
  %27 = call i32* @parse_branch(i32* %21, %struct.TYPE_8__* %22, %struct.TYPE_9__* %23, i32 %24, i32 %25, i64* %26)
  store i32* %27, i32** %15, align 8
  %28 = load i64*, i64** %13, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REG_NOERROR, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %6
  %33 = load i32*, i32** %15, align 8
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
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @OP_ALT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %113

48:                                               ; preds = %42
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @RE_CARET_ANCHORS_HERE, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @fetch_token(%struct.TYPE_9__* %49, i32* %50, i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @OP_ALT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %48
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @END_OF_RE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %97

66:                                               ; preds = %60
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @OP_CLOSE_SUBEXP, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %69, %66
  %76 = load i32*, i32** %8, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i64*, i64** %13, align 8
  %82 = call i32* @parse_branch(i32* %76, %struct.TYPE_8__* %77, %struct.TYPE_9__* %78, i32 %79, i32 %80, i64* %81)
  store i32* %82, i32** %16, align 8
  %83 = load i64*, i64** %13, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @REG_NOERROR, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load i32*, i32** %16, align 8
  %89 = icmp eq i32* %88, null
  br label %90

90:                                               ; preds = %87, %75
  %91 = phi i1 [ false, %75 ], [ %89, %87 ]
  %92 = zext i1 %91 to i32
  %93 = call i64 @BE(i32 %92, i32 0)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32* null, i32** %7, align 8
  br label %115

96:                                               ; preds = %90
  br label %98

97:                                               ; preds = %69, %60, %48
  store i32* null, i32** %16, align 8
  br label %98

98:                                               ; preds = %97, %96
  %99 = load i32*, i32** %14, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = load i64, i64* @OP_ALT, align 8
  %103 = call i32* @create_tree(i32* %99, i32* %100, i32* %101, i64 %102)
  store i32* %103, i32** %15, align 8
  %104 = load i32*, i32** %15, align 8
  %105 = icmp eq i32* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i64 @BE(i32 %106, i32 0)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = load i64, i64* @REG_ESPACE, align 8
  %111 = load i64*, i64** %13, align 8
  store i64 %110, i64* %111, align 8
  store i32* null, i32** %7, align 8
  br label %115

112:                                              ; preds = %98
  br label %42

113:                                              ; preds = %42
  %114 = load i32*, i32** %15, align 8
  store i32* %114, i32** %7, align 8
  br label %115

115:                                              ; preds = %113, %109, %95, %40
  %116 = load i32*, i32** %7, align 8
  ret i32* %116
}

declare dso_local i32* @parse_branch(i32*, %struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32, i64*) #1

declare dso_local i64 @BE(i32, i32) #1

declare dso_local i32 @fetch_token(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32* @create_tree(i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
