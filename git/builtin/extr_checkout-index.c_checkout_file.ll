; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout-index.c_checkout_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout-index.c_checkout_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.TYPE_3__ = type { i32 }

@active_nr = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@checkout_stage = common dso_local global i32 0, align 4
@CHECKOUT_ALL = common dso_local global i32 0, align 4
@state = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@to_tempfile = common dso_local global i64 0, align 8
@topath = common dso_local global i32** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"git checkout-index: %s \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"is not in the cache\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"does not exist at stage %d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"is unmerged\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @checkout_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_file(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cache_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @cache_name_pos(i8* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 0, %20
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %19, %2
  br label %24

24:                                               ; preds = %82, %63, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @active_nr, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %83

28:                                               ; preds = %24
  %29 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %29, i64 %31
  %33 = load %struct.cache_entry*, %struct.cache_entry** %32, align 8
  store %struct.cache_entry* %33, %struct.cache_entry** %11, align 8
  %34 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %35 = call i32 @ce_namelen(%struct.cache_entry* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %28
  %39 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %40 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @memcmp(i32 %41, i8* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %28
  br label %83

47:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %51 = call i64 @ce_stage(%struct.cache_entry* %50)
  %52 = load i32, i32* @checkout_stage, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = load i32, i32* @CHECKOUT_ALL, align 4
  %57 = load i32, i32* @checkout_stage, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %61 = call i64 @ce_stage(%struct.cache_entry* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59, %55
  br label %24

64:                                               ; preds = %59, %47
  store i32 1, i32* %9, align 4
  %65 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %66 = load i64, i64* @to_tempfile, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32**, i32*** @topath, align 8
  %70 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %71 = call i64 @ce_stage(%struct.cache_entry* %70)
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  br label %75

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %68
  %76 = phi i32* [ %73, %68 ], [ null, %74 ]
  %77 = call i64 @checkout_entry(%struct.cache_entry* %65, %struct.TYPE_3__* @state, i32* %76, i32* null)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %79, %75
  br label %24

83:                                               ; preds = %46, %24
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load i64, i64* @to_tempfile, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i8*, i8** %4, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @write_tempfile_record(i8* %90, i8* %91)
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i32, i32* %10, align 4
  %95 = icmp sgt i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 -1, i32 0
  store i32 %97, i32* %3, align 4
  br label %125

98:                                               ; preds = %83
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @state, i32 0, i32 0), align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %124, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @stderr, align 4
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @stderr, align 4
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %121

110:                                              ; preds = %101
  %111 = load i32, i32* @checkout_stage, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* @stderr, align 4
  %115 = load i32, i32* @checkout_stage, align 4
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  br label %120

117:                                              ; preds = %110
  %118 = load i32, i32* @stderr, align 4
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %113
  br label %121

121:                                              ; preds = %120, %107
  %122 = load i32, i32* @stderr, align 4
  %123 = call i32 @fputc(i8 signext 10, i32 %122)
  br label %124

124:                                              ; preds = %121, %98
  store i32 -1, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %93
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cache_name_pos(i8*, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i64 @ce_stage(%struct.cache_entry*) #1

declare dso_local i64 @checkout_entry(%struct.cache_entry*, %struct.TYPE_3__*, i32*, i32*) #1

declare dso_local i32 @write_tempfile_record(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
