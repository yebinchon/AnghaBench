; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_ls-files.c_write_eolinfo.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_ls-files.c_write_eolinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { i32, i32 }
%struct.stat = type { i32 }

@show_eol = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"i/%-5s w/%-5s attr/%-17s\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, %struct.cache_entry*, i8*)* @write_eolinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_eolinfo(%struct.index_state* %0, %struct.cache_entry* %1, i8* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca %struct.cache_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i64, i64* @show_eol, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %14 = load %struct.index_state*, %struct.index_state** %4, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @get_convert_attr_ascii(%struct.index_state* %14, i8* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %18 = icmp ne %struct.cache_entry* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %21 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISREG(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.index_state*, %struct.index_state** %4, align 8
  %27 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %28 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @get_cached_convert_stats_ascii(%struct.index_state* %26, i32 %29)
  store i8* %30, i8** %8, align 8
  br label %31

31:                                               ; preds = %25, %19, %13
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @lstat(i8* %32, %struct.stat* %7)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @S_ISREG(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* @get_wt_convert_stats_ascii(i8* %41)
  store i8* %42, i8** %9, align 8
  br label %43

43:                                               ; preds = %40, %35, %31
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %43, %3
  ret void
}

declare dso_local i8* @get_convert_attr_ascii(%struct.index_state*, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i8* @get_cached_convert_stats_ascii(%struct.index_state*, i32) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i8* @get_wt_convert_stats_ascii(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
