; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_enqueue_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_enqueue_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 (i32*, i32, %struct.pfr_walktree*)* }
%struct.pfr_walktree = type { i32, %struct.pfr_kentryworkq*, i32 }
%struct.TYPE_3__ = type { i32, i64 (i32*, i32, %struct.pfr_walktree*)* }
%struct.pfr_kentryworkq = type { i32 }

@PFRW_SWEEP = common dso_local global i32 0, align 4
@PFRW_ENQUEUE = common dso_local global i32 0, align 4
@pfr_walktree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"pfr_enqueue_addrs: IPv4 walktree failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"pfr_enqueue_addrs: IPv6 walktree failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_ktable*, %struct.pfr_kentryworkq*, i32*, i32)* @pfr_enqueue_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_enqueue_addrs(%struct.pfr_ktable* %0, %struct.pfr_kentryworkq* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.pfr_ktable*, align 8
  %6 = alloca %struct.pfr_kentryworkq*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pfr_walktree, align 8
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %5, align 8
  store %struct.pfr_kentryworkq* %1, %struct.pfr_kentryworkq** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pfr_kentryworkq*, %struct.pfr_kentryworkq** %6, align 8
  %11 = call i32 @SLIST_INIT(%struct.pfr_kentryworkq* %10)
  %12 = call i32 @bzero(%struct.pfr_walktree* %9, i32 24)
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @PFRW_SWEEP, align 4
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @PFRW_ENQUEUE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %9, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load %struct.pfr_kentryworkq*, %struct.pfr_kentryworkq** %6, align 8
  %23 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %9, i32 0, i32 1
  store %struct.pfr_kentryworkq* %22, %struct.pfr_kentryworkq** %23, align 8
  %24 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %25 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %19
  %29 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %30 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64 (i32*, i32, %struct.pfr_walktree*)*, i64 (i32*, i32, %struct.pfr_walktree*)** %32, align 8
  %34 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %35 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* @pfr_walktree, align 4
  %39 = call i64 %33(i32* %37, i32 %38, %struct.pfr_walktree* %9)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %28
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %46 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %51 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64 (i32*, i32, %struct.pfr_walktree*)*, i64 (i32*, i32, %struct.pfr_walktree*)** %53, align 8
  %55 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %56 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* @pfr_walktree, align 4
  %60 = call i64 %54(i32* %58, i32 %59, %struct.pfr_walktree* %9)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %49
  br label %65

65:                                               ; preds = %64, %44
  %66 = load i32*, i32** %7, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %9, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %65
  ret void
}

declare dso_local i32 @SLIST_INIT(%struct.pfr_kentryworkq*) #1

declare dso_local i32 @bzero(%struct.pfr_walktree*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
