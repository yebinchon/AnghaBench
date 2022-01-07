; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_parse_single_patch.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_parse_single_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i64, i32 }
%struct.patch = type { i64, i64, i32, i32, %struct.fragment* }
%struct.fragment = type { i8*, i32, %struct.fragment*, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"@@ -\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"corrupt patch at line %d\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"new file %s depends on old contents\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"deleted file %s still has contents\00", align 1
@verbosity_silent = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"** warning: file %s becomes empty but is not deleted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, i8*, i64, %struct.patch*)* @parse_single_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_single_patch(%struct.apply_state* %0, i8* %1, i64 %2, %struct.patch* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.apply_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.patch*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.fragment**, align 8
  %15 = alloca %struct.fragment*, align 8
  %16 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.patch* %3, %struct.patch** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %17 = load %struct.patch*, %struct.patch** %9, align 8
  %18 = getelementptr inbounds %struct.patch, %struct.patch* %17, i32 0, i32 4
  store %struct.fragment** %18, %struct.fragment*** %14, align 8
  br label %19

19:                                               ; preds = %52, %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp ugt i64 %20, 4
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @memcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ %26, %22 ]
  br i1 %28, label %29, label %94

29:                                               ; preds = %27
  %30 = call %struct.fragment* @xcalloc(i32 1, i32 64)
  store %struct.fragment* %30, %struct.fragment** %15, align 8
  %31 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %32 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.fragment*, %struct.fragment** %15, align 8
  %35 = getelementptr inbounds %struct.fragment, %struct.fragment* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.patch*, %struct.patch** %9, align 8
  %40 = load %struct.fragment*, %struct.fragment** %15, align 8
  %41 = call i32 @parse_fragment(%struct.apply_state* %36, i8* %37, i64 %38, %struct.patch* %39, %struct.fragment* %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %29
  %45 = load %struct.fragment*, %struct.fragment** %15, align 8
  %46 = call i32 @free(%struct.fragment* %45)
  %47 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %49 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @error(i32 %47, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %195

52:                                               ; preds = %29
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.fragment*, %struct.fragment** %15, align 8
  %55 = getelementptr inbounds %struct.fragment, %struct.fragment* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.fragment*, %struct.fragment** %15, align 8
  %58 = getelementptr inbounds %struct.fragment, %struct.fragment* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.fragment*, %struct.fragment** %15, align 8
  %60 = getelementptr inbounds %struct.fragment, %struct.fragment* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %11, align 8
  %64 = load %struct.fragment*, %struct.fragment** %15, align 8
  %65 = getelementptr inbounds %struct.fragment, %struct.fragment* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %12, align 8
  %69 = load %struct.fragment*, %struct.fragment** %15, align 8
  %70 = getelementptr inbounds %struct.fragment, %struct.fragment* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.fragment*, %struct.fragment** %15, align 8
  %73 = getelementptr inbounds %struct.fragment, %struct.fragment* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %13, align 8
  %78 = load %struct.fragment*, %struct.fragment** %15, align 8
  %79 = load %struct.fragment**, %struct.fragment*** %14, align 8
  store %struct.fragment* %78, %struct.fragment** %79, align 8
  %80 = load %struct.fragment*, %struct.fragment** %15, align 8
  %81 = getelementptr inbounds %struct.fragment, %struct.fragment* %80, i32 0, i32 2
  store %struct.fragment** %81, %struct.fragment*** %14, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %10, align 8
  %86 = load i32, i32* %16, align 4
  %87 = load i8*, i8** %7, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %7, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %8, align 8
  %93 = sub i64 %92, %91
  store i64 %93, i64* %8, align 8
  br label %19

94:                                               ; preds = %27
  %95 = load %struct.patch*, %struct.patch** %9, align 8
  %96 = getelementptr inbounds %struct.patch, %struct.patch* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %94
  %100 = load i64, i64* %11, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %99
  %103 = load %struct.patch*, %struct.patch** %9, align 8
  %104 = getelementptr inbounds %struct.patch, %struct.patch* %103, i32 0, i32 4
  %105 = load %struct.fragment*, %struct.fragment** %104, align 8
  %106 = icmp ne %struct.fragment* %105, null
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load %struct.patch*, %struct.patch** %9, align 8
  %109 = getelementptr inbounds %struct.patch, %struct.patch* %108, i32 0, i32 4
  %110 = load %struct.fragment*, %struct.fragment** %109, align 8
  %111 = getelementptr inbounds %struct.fragment, %struct.fragment* %110, i32 0, i32 2
  %112 = load %struct.fragment*, %struct.fragment** %111, align 8
  %113 = icmp ne %struct.fragment* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %107, %99
  %115 = load %struct.patch*, %struct.patch** %9, align 8
  %116 = getelementptr inbounds %struct.patch, %struct.patch* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  br label %117

117:                                              ; preds = %114, %107, %102, %94
  %118 = load %struct.patch*, %struct.patch** %9, align 8
  %119 = getelementptr inbounds %struct.patch, %struct.patch* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %117
  %123 = load i64, i64* %12, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %122
  %126 = load %struct.patch*, %struct.patch** %9, align 8
  %127 = getelementptr inbounds %struct.patch, %struct.patch* %126, i32 0, i32 4
  %128 = load %struct.fragment*, %struct.fragment** %127, align 8
  %129 = icmp ne %struct.fragment* %128, null
  br i1 %129, label %130, label %140

130:                                              ; preds = %125
  %131 = load %struct.patch*, %struct.patch** %9, align 8
  %132 = getelementptr inbounds %struct.patch, %struct.patch* %131, i32 0, i32 4
  %133 = load %struct.fragment*, %struct.fragment** %132, align 8
  %134 = getelementptr inbounds %struct.fragment, %struct.fragment* %133, i32 0, i32 2
  %135 = load %struct.fragment*, %struct.fragment** %134, align 8
  %136 = icmp ne %struct.fragment* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %130, %122
  %138 = load %struct.patch*, %struct.patch** %9, align 8
  %139 = getelementptr inbounds %struct.patch, %struct.patch* %138, i32 0, i32 1
  store i64 0, i64* %139, align 8
  br label %140

140:                                              ; preds = %137, %130, %125, %117
  %141 = load %struct.patch*, %struct.patch** %9, align 8
  %142 = getelementptr inbounds %struct.patch, %struct.patch* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 0, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %140
  %146 = load i64, i64* %11, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %150 = load %struct.patch*, %struct.patch** %9, align 8
  %151 = getelementptr inbounds %struct.patch, %struct.patch* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @error(i32 %149, i32 %152)
  store i32 %153, i32* %5, align 4
  br label %195

154:                                              ; preds = %145, %140
  %155 = load %struct.patch*, %struct.patch** %9, align 8
  %156 = getelementptr inbounds %struct.patch, %struct.patch* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp slt i64 0, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %154
  %160 = load i64, i64* %12, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %164 = load %struct.patch*, %struct.patch** %9, align 8
  %165 = getelementptr inbounds %struct.patch, %struct.patch* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @error(i32 %163, i32 %166)
  store i32 %167, i32* %5, align 4
  br label %195

168:                                              ; preds = %159, %154
  %169 = load %struct.patch*, %struct.patch** %9, align 8
  %170 = getelementptr inbounds %struct.patch, %struct.patch* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %192, label %173

173:                                              ; preds = %168
  %174 = load i64, i64* %12, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %192, label %176

176:                                              ; preds = %173
  %177 = load i64, i64* %13, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %192

179:                                              ; preds = %176
  %180 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %181 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @verbosity_silent, align 8
  %184 = icmp sgt i64 %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %179
  %186 = load i32, i32* @stderr, align 4
  %187 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %188 = load %struct.patch*, %struct.patch** %9, align 8
  %189 = getelementptr inbounds %struct.patch, %struct.patch* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @fprintf_ln(i32 %186, i32 %187, i32 %190)
  br label %192

192:                                              ; preds = %185, %179, %176, %173, %168
  %193 = load i64, i64* %10, align 8
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %192, %162, %148, %44
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local %struct.fragment* @xcalloc(i32, i32) #1

declare dso_local i32 @parse_fragment(%struct.apply_state*, i8*, i64, %struct.patch*, %struct.fragment*) #1

declare dso_local i32 @free(%struct.fragment*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @fprintf_ln(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
