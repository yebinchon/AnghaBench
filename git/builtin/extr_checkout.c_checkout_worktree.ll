; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_checkout_worktree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_checkout_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout = type { i32, i32, i32* }
%struct.cache_entry = type { i32 }
%struct.checkout_opts = type { %struct.TYPE_4__*, i64, i64, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CHECKOUT_INIT = common dso_local global %struct.checkout zeroinitializer, align 8
@the_index = common dso_local global i32 0, align 4
@active_nr = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@CE_MATCHED = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Recreated %d merge conflict\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Recreated %d merge conflicts\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Updated %d path from %s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Updated %d paths from %s\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Updated %d path from the index\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Updated %d paths from the index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.checkout_opts*)* @checkout_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_worktree(%struct.checkout_opts* %0) #0 {
  %2 = alloca %struct.checkout_opts*, align 8
  %3 = alloca %struct.checkout, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_entry*, align 8
  store %struct.checkout_opts* %0, %struct.checkout_opts** %2, align 8
  %9 = bitcast %struct.checkout* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.checkout* @CHECKOUT_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = getelementptr inbounds %struct.checkout, %struct.checkout* %3, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds %struct.checkout, %struct.checkout* %3, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.checkout, %struct.checkout* %3, i32 0, i32 2
  store i32* @the_index, i32** %12, align 8
  %13 = call i32 @enable_delayed_checkout(%struct.checkout* %3)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %73, %1
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @active_nr, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %76

18:                                               ; preds = %14
  %19 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %19, i64 %21
  %23 = load %struct.cache_entry*, %struct.cache_entry** %22, align 8
  store %struct.cache_entry* %23, %struct.cache_entry** %8, align 8
  %24 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %25 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CE_MATCHED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %72

30:                                               ; preds = %18
  %31 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %32 = call i32 @ce_stage(%struct.cache_entry* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %36 = call i32 @checkout_entry(%struct.cache_entry* %35, %struct.checkout* %3, i32* null, i32* %4)
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %73

39:                                               ; preds = %30
  %40 = load %struct.checkout_opts*, %struct.checkout_opts** %2, align 8
  %41 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.checkout_opts*, %struct.checkout_opts** %2, align 8
  %46 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.checkout_opts*, %struct.checkout_opts** %2, align 8
  %51 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @checkout_stage(i64 %47, %struct.cache_entry* %48, i32 %49, %struct.checkout* %3, i32* %4, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %67

56:                                               ; preds = %39
  %57 = load %struct.checkout_opts*, %struct.checkout_opts** %2, align 8
  %58 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @checkout_merged(i32 %62, %struct.checkout* %3, i32* %5)
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %61, %56
  br label %67

67:                                               ; preds = %66, %44
  %68 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @skip_same_name(%struct.cache_entry* %68, i32 %69)
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %67, %18
  br label %73

73:                                               ; preds = %72, %34
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %14

76:                                               ; preds = %14
  %77 = call i32 @remove_marked_cache_entries(i32* @the_index, i32 1)
  %78 = call i32 (...) @remove_scheduled_dirs()
  %79 = call i32 @finish_delayed_checkout(%struct.checkout* %3, i32* %4)
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load %struct.checkout_opts*, %struct.checkout_opts** %2, align 8
  %83 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %127

86:                                               ; preds = %76
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* @stderr, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @Q_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = call i32 (i32, i32, i32, ...) @fprintf_ln(i32 %90, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %86
  %96 = load %struct.checkout_opts*, %struct.checkout_opts** %2, align 8
  %97 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = icmp ne %struct.TYPE_4__* %98, null
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load i32, i32* @stderr, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @Q_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.checkout_opts*, %struct.checkout_opts** %2, align 8
  %106 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* @DEFAULT_ABBREV, align 4
  %111 = call i32 @find_unique_abbrev(i32* %109, i32 %110)
  %112 = call i32 (i32, i32, i32, ...) @fprintf_ln(i32 %101, i32 %103, i32 %104, i32 %111)
  br label %126

113:                                              ; preds = %95
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116, %113
  %120 = load i32, i32* @stderr, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @Q_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %4, align 4
  %124 = call i32 (i32, i32, i32, ...) @fprintf_ln(i32 %120, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %119, %116
  br label %126

126:                                              ; preds = %125, %100
  br label %127

127:                                              ; preds = %126, %76
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @enable_delayed_checkout(%struct.checkout*) #2

declare dso_local i32 @ce_stage(%struct.cache_entry*) #2

declare dso_local i32 @checkout_entry(%struct.cache_entry*, %struct.checkout*, i32*, i32*) #2

declare dso_local i32 @checkout_stage(i64, %struct.cache_entry*, i32, %struct.checkout*, i32*, i32) #2

declare dso_local i32 @checkout_merged(i32, %struct.checkout*, i32*) #2

declare dso_local i32 @skip_same_name(%struct.cache_entry*, i32) #2

declare dso_local i32 @remove_marked_cache_entries(i32*, i32) #2

declare dso_local i32 @remove_scheduled_dirs(...) #2

declare dso_local i32 @finish_delayed_checkout(%struct.checkout*, i32*) #2

declare dso_local i32 @fprintf_ln(i32, i32, i32, ...) #2

declare dso_local i32 @Q_(i8*, i8*, i32) #2

declare dso_local i32 @find_unique_abbrev(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
