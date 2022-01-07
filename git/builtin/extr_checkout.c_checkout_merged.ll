; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_checkout_merged.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_checkout_merged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i8*, i32, i32 }
%struct.checkout = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.object_id = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@active_cache = common dso_local global %struct.cache_entry** null, align 8
@active_nr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"path '%s' does not have necessary versions\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ours\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"theirs\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"path '%s': cannot merge\00", align 1
@blob_type = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Unable to add merge result for '%s'\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"make_cache_entry failed for path '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.checkout*, i32*)* @checkout_merged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_merged(i32 %0, %struct.checkout* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.checkout*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cache_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca %struct.TYPE_8__, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.object_id, align 4
  %15 = alloca %struct.TYPE_9__, align 4
  %16 = alloca [3 x %struct.object_id], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.checkout* %1, %struct.checkout** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %19, i64 %21
  %23 = load %struct.cache_entry*, %struct.cache_entry** %22, align 8
  store %struct.cache_entry* %23, %struct.cache_entry** %8, align 8
  %24 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %25 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  store i32 0, i32* %17, align 4
  %27 = getelementptr inbounds [3 x %struct.object_id], [3 x %struct.object_id]* %16, i64 0, i64 0
  %28 = call i32 @memset(%struct.object_id* %27, i32 0, i32 12)
  br label %29

29:                                               ; preds = %61, %3
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @active_nr, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %29
  %34 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %35 = call i32 @ce_stage(%struct.cache_entry* %34)
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %41 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %39, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %33
  br label %69

46:                                               ; preds = %38
  %47 = load i32, i32* %18, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [3 x %struct.object_id], [3 x %struct.object_id]* %16, i64 0, i64 %49
  %51 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %52 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %51, i32 0, i32 2
  %53 = call i32 @oidcpy(%struct.object_id* %50, i32* %52)
  %54 = load i32, i32* %18, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %58 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @create_ce_mode(i32 %59)
  store i32 %60, i32* %17, align 4
  br label %61

61:                                               ; preds = %56, %46
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  %64 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %64, i64 %66
  %68 = load %struct.cache_entry*, %struct.cache_entry** %67, align 8
  store %struct.cache_entry* %68, %struct.cache_entry** %8, align 8
  br label %29

69:                                               ; preds = %45, %29
  %70 = getelementptr inbounds [3 x %struct.object_id], [3 x %struct.object_id]* %16, i64 0, i64 1
  %71 = call i64 @is_null_oid(%struct.object_id* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds [3 x %struct.object_id], [3 x %struct.object_id]* %16, i64 0, i64 2
  %75 = call i64 @is_null_oid(%struct.object_id* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73, %69
  %78 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @error(i32 %78, i8* %79)
  store i32 %80, i32* %4, align 4
  br label %148

81:                                               ; preds = %73
  %82 = getelementptr inbounds [3 x %struct.object_id], [3 x %struct.object_id]* %16, i64 0, i64 0
  %83 = call i32 @read_mmblob(%struct.TYPE_8__* %10, %struct.object_id* %82)
  %84 = getelementptr inbounds [3 x %struct.object_id], [3 x %struct.object_id]* %16, i64 0, i64 1
  %85 = call i32 @read_mmblob(%struct.TYPE_8__* %11, %struct.object_id* %84)
  %86 = getelementptr inbounds [3 x %struct.object_id], [3 x %struct.object_id]* %16, i64 0, i64 2
  %87 = call i32 @read_mmblob(%struct.TYPE_8__* %12, %struct.object_id* %86)
  %88 = load i8*, i8** %9, align 8
  %89 = load %struct.checkout*, %struct.checkout** %6, align 8
  %90 = getelementptr inbounds %struct.checkout, %struct.checkout* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ll_merge(%struct.TYPE_9__* %15, i8* %88, %struct.TYPE_8__* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_8__* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32* null)
  store i32 %92, i32* %13, align 4
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @free(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @free(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @free(i32 %100)
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %81
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %104, %81
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @free(i32 %110)
  %112 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @error(i32 %112, i8* %113)
  store i32 %114, i32* %4, align 4
  br label %148

115:                                              ; preds = %104
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @blob_type, align 4
  %121 = call i64 @write_object_file(i32 %117, i32 %119, i32 %120, %struct.object_id* %14)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %115
  %124 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 @die(i32 %124, i8* %125)
  br label %127

127:                                              ; preds = %123, %115
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @free(i32 %129)
  %131 = load i32, i32* %17, align 4
  %132 = load i8*, i8** %9, align 8
  %133 = call %struct.cache_entry* @make_transient_cache_entry(i32 %131, %struct.object_id* %14, i8* %132, i32 2)
  store %struct.cache_entry* %133, %struct.cache_entry** %8, align 8
  %134 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %135 = icmp ne %struct.cache_entry* %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %127
  %137 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %138 = load i8*, i8** %9, align 8
  %139 = call i32 @die(i32 %137, i8* %138)
  br label %140

140:                                              ; preds = %136, %127
  %141 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %142 = load %struct.checkout*, %struct.checkout** %6, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @checkout_entry(%struct.cache_entry* %141, %struct.checkout* %142, i32* null, i32* %143)
  store i32 %144, i32* %13, align 4
  %145 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %146 = call i32 @discard_cache_entry(%struct.cache_entry* %145)
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %140, %108, %77
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @memset(%struct.object_id*, i32, i32) #1

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

declare dso_local i32 @create_ce_mode(i32) #1

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @read_mmblob(%struct.TYPE_8__*, %struct.object_id*) #1

declare dso_local i32 @ll_merge(%struct.TYPE_9__*, i8*, %struct.TYPE_8__*, i8*, %struct.TYPE_8__*, i8*, %struct.TYPE_8__*, i8*, i32, i32*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i64 @write_object_file(i32, i32, i32, %struct.object_id*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local %struct.cache_entry* @make_transient_cache_entry(i32, %struct.object_id*, i8*, i32) #1

declare dso_local i32 @checkout_entry(%struct.cache_entry*, %struct.checkout*, i32*, i32*) #1

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
