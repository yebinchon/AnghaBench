; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_mark_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_mark_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64 (i32*, i32, %struct.pfr_walktree*)* }
%struct.pfr_walktree = type { i32 }
%struct.TYPE_4__ = type { i32, i64 (i32*, i32, %struct.pfr_walktree*)* }

@PFRW_MARK = common dso_local global i32 0, align 4
@pfr_walktree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"pfr_mark_addrs: IPv4 walktree failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"pfr_mark_addrs: IPv6 walktree failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_ktable*)* @pfr_mark_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_mark_addrs(%struct.pfr_ktable* %0) #0 {
  %2 = alloca %struct.pfr_ktable*, align 8
  %3 = alloca %struct.pfr_walktree, align 4
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %2, align 8
  %4 = call i32 @bzero(%struct.pfr_walktree* %3, i32 4)
  %5 = load i32, i32* @PFRW_MARK, align 4
  %6 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load %struct.pfr_ktable*, %struct.pfr_ktable** %2, align 8
  %8 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64 (i32*, i32, %struct.pfr_walktree*)*, i64 (i32*, i32, %struct.pfr_walktree*)** %10, align 8
  %12 = load %struct.pfr_ktable*, %struct.pfr_ktable** %2, align 8
  %13 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* @pfr_walktree, align 4
  %17 = call i64 %11(i32* %15, i32 %16, %struct.pfr_walktree* %3)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %1
  %22 = load %struct.pfr_ktable*, %struct.pfr_ktable** %2, align 8
  %23 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64 (i32*, i32, %struct.pfr_walktree*)*, i64 (i32*, i32, %struct.pfr_walktree*)** %25, align 8
  %27 = load %struct.pfr_ktable*, %struct.pfr_ktable** %2, align 8
  %28 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* @pfr_walktree, align 4
  %32 = call i64 %26(i32* %30, i32 %31, %struct.pfr_walktree* %3)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %21
  ret void
}

declare dso_local i32 @bzero(%struct.pfr_walktree*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
