; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_dynaddr_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_dynaddr_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 (i32*, i32, %struct.pfr_walktree*)* }
%struct.pfr_walktree = type { %struct.pfi_dynaddr*, i32 }
%struct.TYPE_3__ = type { i32, i32 (i32*, i32, %struct.pfr_walktree*)* }
%struct.pfi_dynaddr = type { i64, i64, i64 }

@PFRW_DYNADDR_UPDATE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@pfr_walktree = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfr_dynaddr_update(%struct.pfr_ktable* %0, %struct.pfi_dynaddr* %1) #0 {
  %3 = alloca %struct.pfr_ktable*, align 8
  %4 = alloca %struct.pfi_dynaddr*, align 8
  %5 = alloca %struct.pfr_walktree, align 8
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %3, align 8
  store %struct.pfi_dynaddr* %1, %struct.pfi_dynaddr** %4, align 8
  %6 = call i32 @bzero(%struct.pfr_walktree* %5, i32 16)
  %7 = load i32, i32* @PFRW_DYNADDR_UPDATE, align 4
  %8 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %5, i32 0, i32 1
  store i32 %7, i32* %8, align 8
  %9 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %4, align 8
  %10 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %5, i32 0, i32 0
  store %struct.pfi_dynaddr* %9, %struct.pfi_dynaddr** %10, align 8
  %11 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %4, align 8
  %12 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %4, align 8
  %14 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %4, align 8
  %16 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %4, align 8
  %21 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19, %2
  %26 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %27 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32 (i32*, i32, %struct.pfr_walktree*)*, i32 (i32*, i32, %struct.pfr_walktree*)** %29, align 8
  %31 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %32 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* @pfr_walktree, align 4
  %36 = call i32 %30(i32* %34, i32 %35, %struct.pfr_walktree* %5)
  br label %37

37:                                               ; preds = %25, %19
  %38 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %4, align 8
  %39 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %4, align 8
  %44 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AF_INET6, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %42, %37
  %49 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %50 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32 (i32*, i32, %struct.pfr_walktree*)*, i32 (i32*, i32, %struct.pfr_walktree*)** %52, align 8
  %54 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %55 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* @pfr_walktree, align 4
  %59 = call i32 %53(i32* %57, i32 %58, %struct.pfr_walktree* %5)
  br label %60

60:                                               ; preds = %48, %42
  ret void
}

declare dso_local i32 @bzero(%struct.pfr_walktree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
