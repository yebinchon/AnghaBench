; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkdtrace.c_dtnfsclient_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkdtrace.c_dtnfsclient_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dtrace_probe = common dso_local global i8* null, align 8
@nfscl_accesscache_flush_done_id = common dso_local global i64 0, align 8
@dtrace_nfscl_accesscache_flush_done_probe = common dso_local global i8* null, align 8
@nfscl_accesscache_get_hit_id = common dso_local global i64 0, align 8
@dtrace_nfscl_accesscache_get_hit_probe = common dso_local global i8* null, align 8
@nfscl_accesscache_get_miss_id = common dso_local global i64 0, align 8
@dtrace_nfscl_accesscache_get_miss_probe = common dso_local global i8* null, align 8
@nfscl_accesscache_load_done_id = common dso_local global i64 0, align 8
@dtrace_nfscl_accesscache_load_done_probe = common dso_local global i8* null, align 8
@nfscl_attrcache_flush_done_id = common dso_local global i64 0, align 8
@dtrace_nfscl_attrcache_flush_done_probe = common dso_local global i8* null, align 8
@nfscl_attrcache_get_hit_id = common dso_local global i64 0, align 8
@dtrace_nfscl_attrcache_get_hit_probe = common dso_local global i8* null, align 8
@nfscl_attrcache_get_miss_id = common dso_local global i64 0, align 8
@dtrace_nfscl_attrcache_get_miss_probe = common dso_local global i8* null, align 8
@nfscl_attrcache_load_done_id = common dso_local global i64 0, align 8
@dtrace_nfscl_attrcache_load_done_probe = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*)* @dtnfsclient_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtnfsclient_enable(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to i64*
  store i64* %10, i64** %7, align 8
  %11 = load i8*, i8** @dtrace_probe, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @nfscl_accesscache_flush_done_id, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** @dtrace_nfscl_accesscache_flush_done_probe, align 8
  br label %69

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @nfscl_accesscache_get_hit_id, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** @dtrace_nfscl_accesscache_get_hit_probe, align 8
  br label %68

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @nfscl_accesscache_get_miss_id, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** @dtrace_nfscl_accesscache_get_miss_probe, align 8
  br label %67

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @nfscl_accesscache_load_done_id, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i8*, i8** %8, align 8
  store i8* %34, i8** @dtrace_nfscl_accesscache_load_done_probe, align 8
  br label %66

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @nfscl_attrcache_flush_done_id, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  store i8* %40, i8** @dtrace_nfscl_attrcache_flush_done_probe, align 8
  br label %65

41:                                               ; preds = %35
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @nfscl_attrcache_get_hit_id, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  store i8* %46, i8** @dtrace_nfscl_attrcache_get_hit_probe, align 8
  br label %64

47:                                               ; preds = %41
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @nfscl_attrcache_get_miss_id, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i8*, i8** %8, align 8
  store i8* %52, i8** @dtrace_nfscl_attrcache_get_miss_probe, align 8
  br label %63

53:                                               ; preds = %47
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @nfscl_attrcache_load_done_id, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i8*, i8** %8, align 8
  store i8* %58, i8** @dtrace_nfscl_attrcache_load_done_probe, align 8
  br label %62

59:                                               ; preds = %53
  %60 = load i64, i64* %5, align 8
  %61 = load i64*, i64** %7, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %57
  br label %63

63:                                               ; preds = %62, %51
  br label %64

64:                                               ; preds = %63, %45
  br label %65

65:                                               ; preds = %64, %39
  br label %66

66:                                               ; preds = %65, %33
  br label %67

67:                                               ; preds = %66, %27
  br label %68

68:                                               ; preds = %67, %21
  br label %69

69:                                               ; preds = %68, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
