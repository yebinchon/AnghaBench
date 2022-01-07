; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_read_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_read_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cache_tree = type { i64, i32, i32, i32, i32 }
%struct.cache_tree_sub = type { %struct.cache_tree* }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"cache-tree: internal error\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_tree* (i8**, i64*)* @read_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_tree* @read_one(i8** %0, i64* %1) #0 {
  %3 = alloca %struct.cache_tree*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cache_tree*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cache_tree*, align 8
  %15 = alloca %struct.cache_tree_sub*, align 8
  %16 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  store %struct.cache_tree* null, %struct.cache_tree** %10, align 8
  br label %24

24:                                               ; preds = %34, %2
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i1 [ false, %24 ], [ %31, %27 ]
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %7, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  br label %24

39:                                               ; preds = %32
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %166

43:                                               ; preds = %39
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %7, align 8
  %48 = call %struct.cache_tree* (...) @cache_tree()
  store %struct.cache_tree* %48, %struct.cache_tree** %10, align 8
  %49 = load i8*, i8** %6, align 8
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i8* @strtol(i8* %50, i8** %9, i32 10)
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.cache_tree*, %struct.cache_tree** %10, align 8
  %54 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = icmp eq i8* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %166

59:                                               ; preds = %43
  %60 = load i8*, i8** %9, align 8
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i8* @strtol(i8* %61, i8** %9, i32 10)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %12, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = icmp eq i8* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %166

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %84, %68
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load i8*, i8** %6, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i8*, i8** %6, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 10
  br label %82

82:                                               ; preds = %77, %72, %69
  %83 = phi i1 [ false, %72 ], [ false, %69 ], [ %81, %77 ]
  br i1 %83, label %84, label %89

84:                                               ; preds = %82
  %85 = load i64, i64* %7, align 8
  %86 = add i64 %85, -1
  store i64 %86, i64* %7, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  br label %69

89:                                               ; preds = %82
  %90 = load i64, i64* %7, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  br label %166

93:                                               ; preds = %89
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %96, -1
  store i64 %97, i64* %7, align 8
  %98 = load %struct.cache_tree*, %struct.cache_tree** %10, align 8
  %99 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sle i64 0, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %93
  %103 = load i64, i64* %7, align 8
  %104 = load i32, i32* %13, align 4
  %105 = zext i32 %104 to i64
  %106 = icmp ult i64 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %166

108:                                              ; preds = %102
  %109 = load %struct.cache_tree*, %struct.cache_tree** %10, align 8
  %110 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %109, i32 0, i32 4
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @oidread(i32* %110, i8* %111)
  %113 = load i32, i32* %13, align 4
  %114 = load i8*, i8** %6, align 8
  %115 = zext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %6, align 8
  %117 = load i32, i32* %13, align 4
  %118 = zext i32 %117 to i64
  %119 = load i64, i64* %7, align 8
  %120 = sub i64 %119, %118
  store i64 %120, i64* %7, align 8
  br label %121

121:                                              ; preds = %108, %93
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 2
  %124 = load %struct.cache_tree*, %struct.cache_tree** %10, align 8
  %125 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load %struct.cache_tree*, %struct.cache_tree** %10, align 8
  %127 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @xcalloc(i32 %128, i32 8)
  %130 = load %struct.cache_tree*, %struct.cache_tree** %10, align 8
  %131 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %149, %121
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %152

136:                                              ; preds = %132
  %137 = load i8*, i8** %6, align 8
  store i8* %137, i8** %16, align 8
  %138 = call %struct.cache_tree* @read_one(i8** %6, i64* %7)
  store %struct.cache_tree* %138, %struct.cache_tree** %14, align 8
  %139 = load %struct.cache_tree*, %struct.cache_tree** %14, align 8
  %140 = icmp ne %struct.cache_tree* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %136
  br label %166

142:                                              ; preds = %136
  %143 = load %struct.cache_tree*, %struct.cache_tree** %10, align 8
  %144 = load i8*, i8** %16, align 8
  %145 = call %struct.cache_tree_sub* @cache_tree_sub(%struct.cache_tree* %143, i8* %144)
  store %struct.cache_tree_sub* %145, %struct.cache_tree_sub** %15, align 8
  %146 = load %struct.cache_tree*, %struct.cache_tree** %14, align 8
  %147 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %15, align 8
  %148 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %147, i32 0, i32 0
  store %struct.cache_tree* %146, %struct.cache_tree** %148, align 8
  br label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %132

152:                                              ; preds = %132
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.cache_tree*, %struct.cache_tree** %10, align 8
  %155 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %153, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %152
  %161 = load i8*, i8** %6, align 8
  %162 = load i8**, i8*** %4, align 8
  store i8* %161, i8** %162, align 8
  %163 = load i64, i64* %7, align 8
  %164 = load i64*, i64** %5, align 8
  store i64 %163, i64* %164, align 8
  %165 = load %struct.cache_tree*, %struct.cache_tree** %10, align 8
  store %struct.cache_tree* %165, %struct.cache_tree** %3, align 8
  br label %168

166:                                              ; preds = %141, %107, %92, %67, %58, %42
  %167 = call i32 @cache_tree_free(%struct.cache_tree** %10)
  store %struct.cache_tree* null, %struct.cache_tree** %3, align 8
  br label %168

168:                                              ; preds = %166, %160
  %169 = load %struct.cache_tree*, %struct.cache_tree** %3, align 8
  ret %struct.cache_tree* %169
}

declare dso_local %struct.cache_tree* @cache_tree(...) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i32 @oidread(i32*, i8*) #1

declare dso_local i32 @xcalloc(i32, i32) #1

declare dso_local %struct.cache_tree_sub* @cache_tree_sub(%struct.cache_tree*, i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @cache_tree_free(%struct.cache_tree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
