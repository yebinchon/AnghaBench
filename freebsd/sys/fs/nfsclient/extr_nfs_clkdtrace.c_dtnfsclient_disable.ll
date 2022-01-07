; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkdtrace.c_dtnfsclient_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkdtrace.c_dtnfsclient_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nfscl_accesscache_flush_done_id = common dso_local global i64 0, align 8
@dtrace_nfscl_accesscache_flush_done_probe = common dso_local global i32* null, align 8
@nfscl_accesscache_get_hit_id = common dso_local global i64 0, align 8
@dtrace_nfscl_accesscache_get_hit_probe = common dso_local global i32* null, align 8
@nfscl_accesscache_get_miss_id = common dso_local global i64 0, align 8
@dtrace_nfscl_accesscache_get_miss_probe = common dso_local global i32* null, align 8
@nfscl_accesscache_load_done_id = common dso_local global i64 0, align 8
@dtrace_nfscl_accesscache_load_done_probe = common dso_local global i32* null, align 8
@nfscl_attrcache_flush_done_id = common dso_local global i64 0, align 8
@dtrace_nfscl_attrcache_flush_done_probe = common dso_local global i32* null, align 8
@nfscl_attrcache_get_hit_id = common dso_local global i64 0, align 8
@dtrace_nfscl_attrcache_get_hit_probe = common dso_local global i32* null, align 8
@nfscl_attrcache_get_miss_id = common dso_local global i64 0, align 8
@dtrace_nfscl_attrcache_get_miss_probe = common dso_local global i32* null, align 8
@nfscl_attrcache_load_done_id = common dso_local global i64 0, align 8
@dtrace_nfscl_attrcache_load_done_probe = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*)* @dtnfsclient_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtnfsclient_disable(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to i64*
  store i64* %9, i64** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @nfscl_accesscache_flush_done_id, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32* null, i32** @dtrace_nfscl_accesscache_flush_done_probe, align 8
  br label %58

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @nfscl_accesscache_get_hit_id, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32* null, i32** @dtrace_nfscl_accesscache_get_hit_probe, align 8
  br label %57

19:                                               ; preds = %14
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @nfscl_accesscache_get_miss_id, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32* null, i32** @dtrace_nfscl_accesscache_get_miss_probe, align 8
  br label %56

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @nfscl_accesscache_load_done_id, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32* null, i32** @dtrace_nfscl_accesscache_load_done_probe, align 8
  br label %55

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @nfscl_attrcache_flush_done_id, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32* null, i32** @dtrace_nfscl_attrcache_flush_done_probe, align 8
  br label %54

34:                                               ; preds = %29
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @nfscl_attrcache_get_hit_id, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32* null, i32** @dtrace_nfscl_attrcache_get_hit_probe, align 8
  br label %53

39:                                               ; preds = %34
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @nfscl_attrcache_get_miss_id, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32* null, i32** @dtrace_nfscl_attrcache_get_miss_probe, align 8
  br label %52

44:                                               ; preds = %39
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @nfscl_attrcache_load_done_id, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32* null, i32** @dtrace_nfscl_attrcache_load_done_probe, align 8
  br label %51

49:                                               ; preds = %44
  %50 = load i64*, i64** %7, align 8
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %49, %48
  br label %52

52:                                               ; preds = %51, %43
  br label %53

53:                                               ; preds = %52, %38
  br label %54

54:                                               ; preds = %53, %33
  br label %55

55:                                               ; preds = %54, %28
  br label %56

56:                                               ; preds = %55, %23
  br label %57

57:                                               ; preds = %56, %18
  br label %58

58:                                               ; preds = %57, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
