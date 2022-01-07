; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_gc.c_gc_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_gc.c_gc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"gc.packrefs\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"notbare\00", align 1
@pack_refs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"gc.reflogexpire\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"gc.reflogexpireunreachable\00", align 1
@prune_reflogs = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"gc.aggressivewindow\00", align 1
@aggressive_window = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"gc.aggressivedepth\00", align 1
@aggressive_depth = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"gc.auto\00", align 1
@gc_auto_threshold = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"gc.autopacklimit\00", align 1
@gc_auto_pack_limit = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"gc.autodetach\00", align 1
@detach_auto = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"gc.pruneexpire\00", align 1
@prune_expire = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"gc.worktreepruneexpire\00", align 1
@prune_worktrees_expire = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"gc.logexpiry\00", align 1
@gc_log_expire = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"gc.bigpackthreshold\00", align 1
@big_pack_threshold = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"pack.deltacachesize\00", align 1
@max_delta_cache_size = common dso_local global i32 0, align 4
@git_default_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_config() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 @git_config_get_value(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %0
  %5 = load i8*, i8** %1, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load i8*, i8** %1, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i32 -1, i32* @pack_refs, align 4
  br label %15

12:                                               ; preds = %7, %4
  %13 = load i8*, i8** %1, align 8
  %14 = call i32 @git_config_bool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 %14, i32* @pack_refs, align 4
  br label %15

15:                                               ; preds = %12, %11
  br label %16

16:                                               ; preds = %15, %0
  %17 = call i64 @gc_config_is_timestamp_never(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = call i64 @gc_config_is_timestamp_never(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i64 0, i64* @prune_reflogs, align 8
  br label %23

23:                                               ; preds = %22, %19, %16
  %24 = call i32 @git_config_get_int(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* @aggressive_window)
  %25 = call i32 @git_config_get_int(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* @aggressive_depth)
  %26 = call i32 @git_config_get_int(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* @gc_auto_threshold)
  %27 = call i32 @git_config_get_int(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32* @gc_auto_pack_limit)
  %28 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32* @detach_auto)
  %29 = call i32 @git_config_get_expiry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32* @prune_expire)
  %30 = call i32 @git_config_get_expiry(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32* @prune_worktrees_expire)
  %31 = call i32 @git_config_get_expiry(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32* @gc_log_expire)
  %32 = call i32 @git_config_get_ulong(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32* @big_pack_threshold)
  %33 = call i32 @git_config_get_ulong(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32* @max_delta_cache_size)
  %34 = load i32, i32* @git_default_config, align 4
  %35 = call i32 @git_config(i32 %34, i32* null)
  ret void
}

declare dso_local i32 @git_config_get_value(i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_bool(i8*, i8*) #1

declare dso_local i64 @gc_config_is_timestamp_never(i8*) #1

declare dso_local i32 @git_config_get_int(i8*, i32*) #1

declare dso_local i32 @git_config_get_bool(i8*, i32*) #1

declare dso_local i32 @git_config_get_expiry(i8*, i32*) #1

declare dso_local i32 @git_config_get_ulong(i8*, i32*) #1

declare dso_local i32 @git_config(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
