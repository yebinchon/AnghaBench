; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_prepare_shallow_update.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_prepare_shallow_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shallow_info = type { i32**, i32*, i32, i64*, i32*, %struct.TYPE_4__*, %struct.TYPE_3__*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GIT_SHALLOW_FILE_ENVIRONMENT = common dso_local global i32 0, align 4
@alt_shallow_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shallow_info*)* @prepare_shallow_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_shallow_update(%struct.shallow_info* %0) #0 {
  %2 = alloca %struct.shallow_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.shallow_info* %0, %struct.shallow_info** %2, align 8
  %7 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %8 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %7, i32 0, i32 6
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @DIV_ROUND_UP(i32 %11, i32 32)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %14 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %13, i32 0, i32 0
  %15 = load i32**, i32*** %14, align 8
  %16 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %17 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %16, i32 0, i32 5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ALLOC_ARRAY(i32** %15, i32 %20)
  %22 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %23 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %24 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = call i32 @assign_shallow_commits_to_refs(%struct.shallow_info* %22, i32** %25, i32* null)
  %27 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %28 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %27, i32 0, i32 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @xcalloc(i32 %31, i32 4)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %35 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %37 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %36, i32 0, i32 5
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @xcalloc(i32 %40, i32 1)
  %42 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %43 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  %44 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %45 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %44, i32 0, i32 6
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @xcalloc(i32 %48, i32 4)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %52 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %51, i32 0, i32 4
  store i32* %50, i32** %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %71, %1
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %56 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %61 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %64 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %63, i32 0, i32 3
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %62, i64 %69
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %53

74:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %176, %74
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %78 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %77, i32 0, i32 5
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %76, %81
  br i1 %82, label %83, label %179

83:                                               ; preds = %75
  %84 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %85 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %83
  br label %176

93:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %157, %93
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %160

98:                                               ; preds = %94
  %99 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %100 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %99, i32 0, i32 0
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %98
  br label %157

112:                                              ; preds = %98
  %113 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %114 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %153, %112
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 32
  br i1 %123, label %124, label %156

124:                                              ; preds = %121
  %125 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %126 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %125, i32 0, i32 0
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %5, align 4
  %137 = shl i32 1, %136
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %124
  %141 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %142 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = mul nsw i32 %144, 32
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %143, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %140, %124
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  br label %121

156:                                              ; preds = %121
  br label %157

157:                                              ; preds = %156, %111
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %4, align 4
  br label %94

160:                                              ; preds = %94
  %161 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %162 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp sgt i32 %167, 1
  %169 = zext i1 %168 to i32
  %170 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %171 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %3, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %169, i32* %175, align 4
  br label %176

176:                                              ; preds = %160, %92
  %177 = load i32, i32* %3, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %3, align 4
  br label %75

179:                                              ; preds = %75
  %180 = load i32, i32* @GIT_SHALLOW_FILE_ENVIRONMENT, align 4
  %181 = load i32, i32* @alt_shallow_file, align 4
  %182 = call i32 @setenv(i32 %180, i32 %181, i32 1)
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ALLOC_ARRAY(i32**, i32) #1

declare dso_local i32 @assign_shallow_commits_to_refs(%struct.shallow_info*, i32**, i32*) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @setenv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
