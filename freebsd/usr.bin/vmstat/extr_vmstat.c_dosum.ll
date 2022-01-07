; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_dosum.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_dosum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nchstats = type { i64, i64, i64, i64, i64, i64, i64 }

@sum = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"summary-statistics\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"{:context-switches/%9u} {N:cpu context switches}\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"{:interrupts/%9u} {N:device interrupts}\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"{:software-interrupts/%9u} {N:software interrupts}\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"{:traps/%9u} {N:traps}\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"{:system-calls/%9u} {N:system calls}\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"{:kernel-threads/%9u} {N:kernel threads created}\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"{:forks/%9u} {N: fork() calls}\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"{:vforks/%9u} {N:vfork() calls}\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"{:rforks/%9u} {N:rfork() calls}\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"{:swap-ins/%9u} {N:swap pager pageins}\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"{:swap-in-pages/%9u} {N:swap pager pages paged in}\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"{:swap-outs/%9u} {N:swap pager pageouts}\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"{:swap-out-pages/%9u} {N:swap pager pages paged out}\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"{:vnode-page-ins/%9u} {N:vnode pager pageins}\0A\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"{:vnode-page-in-pages/%9u} {N:vnode pager pages paged in}\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"{:vnode-page-outs/%9u} {N:vnode pager pageouts}\0A\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"{:vnode-page-out-pages/%9u} {N:vnode pager pages paged out}\0A\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"{:page-daemon-wakeups/%9u} {N:page daemon wakeups}\0A\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"{:page-daemon-pages/%9u} {N:pages examined by the page daemon}\0A\00", align 1
@.str.20 = private unnamed_addr constant [74 x i8] c"{:page-reclamation-shortfalls/%9u} {N:clean page reclamation shortfalls}\0A\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"{:reactivated/%9u} {N:pages reactivated by the page daemon}\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"{:copy-on-write-faults/%9u} {N:copy-on-write faults}\0A\00", align 1
@.str.23 = private unnamed_addr constant [74 x i8] c"{:copy-on-write-optimized-faults/%9u} {N:copy-on-write optimized faults}\0A\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"{:zero-fill-pages/%9u} {N:zero fill pages zeroed}\0A\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"{:zero-fill-prezeroed/%9u} {N:zero fill pages prezeroed}\0A\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c"{:intransit-blocking/%9u} {N:intransit blocking page faults}\0A\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"{:total-faults/%9u} {N:total VM faults taken}\0A\00", align 1
@.str.28 = private unnamed_addr constant [59 x i8] c"{:faults-requiring-io/%9u} {N:page faults requiring I\\/O}\0A\00", align 1
@.str.29 = private unnamed_addr constant [81 x i8] c"{:faults-from-thread-creation/%9u} {N:pages affected by kernel thread creation}\0A\00", align 1
@.str.30 = private unnamed_addr constant [55 x i8] c"{:faults-from-fork/%9u} {N:pages affected by  fork}()\0A\00", align 1
@.str.31 = private unnamed_addr constant [56 x i8] c"{:faults-from-vfork/%9u} {N:pages affected by vfork}()\0A\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"{:pages-rfork/%9u} {N:pages affected by rfork}()\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"{:pages-freed/%9u} {N:pages freed}\0A\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"{:pages-freed-by-daemon/%9u} {N:pages freed by daemon}\0A\00", align 1
@.str.35 = private unnamed_addr constant [65 x i8] c"{:pages-freed-on-exit/%9u} {N:pages freed by exiting processes}\0A\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"{:active-pages/%9u} {N:pages active}\0A\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"{:inactive-pages/%9u} {N:pages inactive}\0A\00", align 1
@.str.38 = private unnamed_addr constant [53 x i8] c"{:laundry-pages/%9u} {N:pages in the laundry queue}\0A\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"{:wired-pages/%9u} {N:pages wired down}\0A\00", align 1
@.str.40 = private unnamed_addr constant [68 x i8] c"{:virtual-user-wired-pages/%9lu} {N:virtual user pages wired down}\0A\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"{:free-pages/%9u} {N:pages free}\0A\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"{:bytes-per-page/%9u} {N:bytes per page}\0A\00", align 1
@kd = common dso_local global i32* null, align 8
@X_NCHSTATS = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [19 x i8] c"vfs.cache.nchstats\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"vfs.cache.nchstats size mismatch\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"{:total-name-lookups/%9ld} {N:total name lookups}\0A\00", align 1
@.str.46 = private unnamed_addr constant [144 x i8] c"{P:/%9s} {N:cache hits} ({:positive-cache-hits/%ld}% pos + {:negative-cache-hits/%ld}% {N:neg}) system {:cache-hit-percent/%ld}% per-directory\0A\00", align 1
@.str.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.48 = private unnamed_addr constant [106 x i8] c"{P:/%9s} {L:deletions} {:deletions/%ld}%, {L:falsehits} {:false-hits/%ld}%, {L:toolong} {:too-long/%ld}%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dosum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dosum() #0 {
  %1 = alloca %struct.nchstats, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @fill_vmmeter(%struct.TYPE_3__* @sum)
  %5 = call i32 @xo_open_container(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 41), align 4
  %7 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 40), align 4
  %9 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 39), align 4
  %11 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 38), align 4
  %13 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 37), align 4
  %15 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 36), align 4
  %17 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 35), align 4
  %19 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 34), align 4
  %21 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 33), align 4
  %23 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 32), align 4
  %25 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 31), align 4
  %27 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 30), align 4
  %29 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 29), align 4
  %31 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 28), align 4
  %33 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 27), align 4
  %35 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 26), align 4
  %37 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 25), align 4
  %39 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 24), align 4
  %41 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 23), align 4
  %43 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 22), align 4
  %45 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.20, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 21), align 4
  %47 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.21, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 20), align 4
  %49 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 19), align 4
  %51 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.23, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 18), align 4
  %53 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 17), align 4
  %55 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.25, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 16), align 4
  %57 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.26, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 15), align 4
  %59 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 14), align 4
  %61 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.28, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 13), align 4
  %63 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.29, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 12), align 4
  %65 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.30, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 11), align 4
  %67 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.31, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 10), align 4
  %69 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 9), align 4
  %71 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 8), align 4
  %73 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 7), align 4
  %75 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.35, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 6), align 4
  %77 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.36, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 5), align 4
  %79 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 4), align 4
  %81 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.38, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 3), align 4
  %83 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 2), align 4
  %85 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.40, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 1), align 4
  %87 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sum, i32 0, i32 0), align 4
  %89 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** @kd, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %0
  %93 = load i32, i32* @X_NCHSTATS, align 4
  %94 = call i32 @kread(i32 %93, %struct.nchstats* %1, i32 56)
  br label %102

95:                                               ; preds = %0
  store i64 56, i64* %2, align 8
  %96 = call i32 @mysysctl(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i64 0, i64 0), %struct.nchstats* %1, i64* %2)
  %97 = load i64, i64* %2, align 8
  %98 = icmp ne i64 %97, 56
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %95
  br label %102

102:                                              ; preds = %101, %92
  %103 = getelementptr inbounds %struct.nchstats, %struct.nchstats* %1, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.nchstats, %struct.nchstats* %1, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %104, %106
  %108 = getelementptr inbounds %struct.nchstats, %struct.nchstats* %1, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %107, %109
  %111 = getelementptr inbounds %struct.nchstats, %struct.nchstats* %1, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %110, %112
  %114 = getelementptr inbounds %struct.nchstats, %struct.nchstats* %1, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %113, %115
  %117 = getelementptr inbounds %struct.nchstats, %struct.nchstats* %1, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %116, %118
  store i64 %119, i64* %3, align 8
  %120 = load i64, i64* %3, align 8
  %121 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0), i64 %120)
  %122 = getelementptr inbounds %struct.nchstats, %struct.nchstats* %1, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %3, align 8
  %125 = call i32 @PCT(i64 %123, i64 %124)
  %126 = getelementptr inbounds %struct.nchstats, %struct.nchstats* %1, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %3, align 8
  %129 = call i32 @PCT(i64 %127, i64 %128)
  %130 = getelementptr inbounds %struct.nchstats, %struct.nchstats* %1, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %3, align 8
  %133 = call i32 @PCT(i64 %131, i64 %132)
  %134 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i64 0, i64 0), i32 %125, i32 %129, i32 %133)
  %135 = getelementptr inbounds %struct.nchstats, %struct.nchstats* %1, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %3, align 8
  %138 = call i32 @PCT(i64 %136, i64 %137)
  %139 = getelementptr inbounds %struct.nchstats, %struct.nchstats* %1, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %3, align 8
  %142 = call i32 @PCT(i64 %140, i64 %141)
  %143 = getelementptr inbounds %struct.nchstats, %struct.nchstats* %1, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %3, align 8
  %146 = call i32 @PCT(i64 %144, i64 %145)
  %147 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i64 0, i64 0), i32 %138, i32 %142, i32 %146)
  %148 = call i32 @xo_close_container(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fill_vmmeter(%struct.TYPE_3__*) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @kread(i32, %struct.nchstats*, i32) #1

declare dso_local i32 @mysysctl(i8*, %struct.nchstats*, i64*) #1

declare dso_local i32 @xo_errx(i32, i8*) #1

declare dso_local i32 @PCT(i64, i64) #1

declare dso_local i32 @xo_close_container(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
