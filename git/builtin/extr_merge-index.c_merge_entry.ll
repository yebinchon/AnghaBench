; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-index.c_merge_entry.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-index.c_merge_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32, i32 }

@pgm = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GIT_MAX_HEXSZ = common dso_local global i32 0, align 4
@active_nr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"git merge-index: %s not in the cache\00", align 1
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@one_shot = common dso_local global i64 0, align 8
@err = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"merge program failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @merge_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_entry(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [9 x i8*], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [4 x [60 x i8]], align 16
  %10 = alloca %struct.cache_entry*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 0
  %13 = load i8*, i8** @pgm, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  store i8* null, i8** %22, align 8
  %23 = load i32, i32* @GIT_MAX_HEXSZ, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = mul nuw i64 4, %25
  %28 = alloca i8, i64 %27, align 16
  store i64 %25, i64* %8, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @active_nr, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %2
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %84, %35
  %37 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %37, i64 %39
  %41 = load %struct.cache_entry*, %struct.cache_entry** %40, align 8
  store %struct.cache_entry* %41, %struct.cache_entry** %10, align 8
  %42 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %43 = call i32 @ce_stage(%struct.cache_entry* %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %45 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @strcmp(i32 %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %89

51:                                               ; preds = %36
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 %55, %25
  %57 = getelementptr inbounds i8, i8* %28, i64 %56
  %58 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %59 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %58, i32 0, i32 1
  %60 = call i32 @oid_to_hex_r(i8* %57, i32* %59)
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x [60 x i8]], [4 x [60 x i8]]* %9, i64 0, i64 %62
  %64 = getelementptr inbounds [60 x i8], [60 x i8]* %63, i64 0, i64 0
  %65 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %66 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @xsnprintf(i8* %64, i32 60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %70, %25
  %72 = getelementptr inbounds i8, i8* %28, i64 %71
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 %74
  store i8* %72, i8** %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x [60 x i8]], [4 x [60 x i8]]* %9, i64 0, i64 %77
  %79 = getelementptr inbounds [60 x i8], [60 x i8]* %78, i64 0, i64 0
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 %82
  store i8* %79, i8** %83, align 8
  br label %84

84:                                               ; preds = %51
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* @active_nr, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %36, label %89

89:                                               ; preds = %84, %50
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 0
  %97 = call i64 @run_command_v_opt(i8** %96, i32 0)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load i64, i64* @one_shot, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* @err, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @err, align 4
  br label %112

105:                                              ; preds = %99
  %106 = load i32, i32* @quiet, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %105
  %111 = call i32 @exit(i32 1) #4
  unreachable

112:                                              ; preds = %102
  br label %113

113:                                              ; preds = %112, %95
  %114 = load i32, i32* %5, align 4
  %115 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %115)
  ret i32 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32 @ce_stage(%struct.cache_entry*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @oid_to_hex_r(i8*, i32*) #2

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @run_command_v_opt(i8**, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
