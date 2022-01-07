; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_netmap_kqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_netmap_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.knote = type { i32, %struct.netmap_priv_d*, i32* }
%struct.netmap_priv_d = type { %struct.nm_selinfo**, %struct.netmap_adapter* }
%struct.nm_selinfo = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.netmap_adapter = type { i32 }

@EVFILT_READ = common dso_local global i32 0, align 4
@EVFILT_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"bad filter request %d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"device not yet setup\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"no netmap adapter for this file descriptor\00", align 1
@NR_TX = common dso_local global i64 0, align 8
@NR_RX = common dso_local global i64 0, align 8
@netmap_wfiltops = common dso_local global i32 0, align 4
@netmap_rfiltops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"kqueue users for %s: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.knote*)* @netmap_kqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_kqfilter(%struct.cdev* %0, %struct.knote* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.netmap_priv_d*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netmap_adapter*, align 8
  %9 = alloca %struct.nm_selinfo*, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.knote* %1, %struct.knote** %5, align 8
  %11 = load %struct.knote*, %struct.knote** %5, align 8
  %12 = getelementptr inbounds %struct.knote, %struct.knote* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @EVFILT_READ, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @EVFILT_WRITE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 1, i32* %3, align 4
  br label %82

24:                                               ; preds = %17, %2
  %25 = bitcast %struct.netmap_priv_d** %6 to i8**
  %26 = call i32 @devfs_get_cdevpriv(i8** %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %82

31:                                               ; preds = %24
  %32 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %6, align 8
  %33 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %32, i32 0, i32 1
  %34 = load %struct.netmap_adapter*, %struct.netmap_adapter** %33, align 8
  store %struct.netmap_adapter* %34, %struct.netmap_adapter** %8, align 8
  %35 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %36 = icmp eq %struct.netmap_adapter* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %82

39:                                               ; preds = %31
  %40 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %6, align 8
  %41 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %40, i32 0, i32 0
  %42 = load %struct.nm_selinfo**, %struct.nm_selinfo*** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @EVFILT_WRITE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* @NR_TX, align 8
  br label %50

48:                                               ; preds = %39
  %49 = load i64, i64* @NR_RX, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ]
  %52 = getelementptr inbounds %struct.nm_selinfo*, %struct.nm_selinfo** %42, i64 %51
  %53 = load %struct.nm_selinfo*, %struct.nm_selinfo** %52, align 8
  store %struct.nm_selinfo* %53, %struct.nm_selinfo** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @EVFILT_WRITE, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32* @netmap_wfiltops, i32* @netmap_rfiltops
  %59 = load %struct.knote*, %struct.knote** %5, align 8
  %60 = getelementptr inbounds %struct.knote, %struct.knote* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %6, align 8
  %62 = load %struct.knote*, %struct.knote** %5, align 8
  %63 = getelementptr inbounds %struct.knote, %struct.knote* %62, i32 0, i32 1
  store %struct.netmap_priv_d* %61, %struct.netmap_priv_d** %63, align 8
  %64 = call i32 (...) @NMG_LOCK()
  %65 = load %struct.nm_selinfo*, %struct.nm_selinfo** %9, align 8
  %66 = getelementptr inbounds %struct.nm_selinfo, %struct.nm_selinfo* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.nm_selinfo*, %struct.nm_selinfo** %9, align 8
  %70 = getelementptr inbounds %struct.nm_selinfo, %struct.nm_selinfo* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nm_selinfo*, %struct.nm_selinfo** %9, align 8
  %73 = getelementptr inbounds %struct.nm_selinfo, %struct.nm_selinfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @nm_prinf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %74)
  %76 = call i32 (...) @NMG_UNLOCK()
  %77 = load %struct.nm_selinfo*, %struct.nm_selinfo** %9, align 8
  %78 = getelementptr inbounds %struct.nm_selinfo, %struct.nm_selinfo* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load %struct.knote*, %struct.knote** %5, align 8
  %81 = call i32 @knlist_add(i32* %79, %struct.knote* %80, i32 0)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %50, %37, %29, %21
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @nm_prerr(i8*, ...) #1

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @NMG_LOCK(...) #1

declare dso_local i32 @nm_prinf(i8*, i32, i32) #1

declare dso_local i32 @NMG_UNLOCK(...) #1

declare dso_local i32 @knlist_add(i32*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
