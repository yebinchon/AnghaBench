; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_unroute_kentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_unroute_kentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.radix_head }
%struct.radix_head = type { i32 }
%struct.TYPE_3__ = type { %struct.radix_head }
%struct.pfr_kentry = type { i32, i32, i32 }
%union.sockaddr_union = type { i32 }
%struct.radix_node = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"pfr_unroute_kentry: delete failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfr_ktable*, %struct.pfr_kentry*)* @pfr_unroute_kentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfr_unroute_kentry(%struct.pfr_ktable* %0, %struct.pfr_kentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfr_ktable*, align 8
  %5 = alloca %struct.pfr_kentry*, align 8
  %6 = alloca %union.sockaddr_union, align 4
  %7 = alloca %struct.radix_node*, align 8
  %8 = alloca %struct.radix_head*, align 8
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %4, align 8
  store %struct.pfr_kentry* %1, %struct.pfr_kentry** %5, align 8
  store %struct.radix_head* null, %struct.radix_head** %8, align 8
  %9 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %10 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AF_INET, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %16 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.radix_head* %18, %struct.radix_head** %8, align 8
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %21 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AF_INET6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %27 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.radix_head* %29, %struct.radix_head** %8, align 8
  br label %30

30:                                               ; preds = %25, %19
  br label %31

31:                                               ; preds = %30, %14
  %32 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %33 = call i64 @KENTRY_NETWORK(%struct.pfr_kentry* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %37 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %40 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pfr_prepare_network(%union.sockaddr_union* %6, i32 %38, i32 %41)
  %43 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %44 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %43, i32 0, i32 0
  %45 = load %struct.radix_head*, %struct.radix_head** %8, align 8
  %46 = call %struct.radix_node* @rn_delete(i32* %44, %union.sockaddr_union* %6, %struct.radix_head* %45)
  store %struct.radix_node* %46, %struct.radix_node** %7, align 8
  br label %52

47:                                               ; preds = %31
  %48 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %49 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %48, i32 0, i32 0
  %50 = load %struct.radix_head*, %struct.radix_head** %8, align 8
  %51 = call %struct.radix_node* @rn_delete(i32* %49, %union.sockaddr_union* null, %struct.radix_head* %50)
  store %struct.radix_node* %51, %struct.radix_node** %7, align 8
  br label %52

52:                                               ; preds = %47, %35
  %53 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %54 = icmp eq %struct.radix_node* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %58

57:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %55
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @KENTRY_NETWORK(%struct.pfr_kentry*) #1

declare dso_local i32 @pfr_prepare_network(%union.sockaddr_union*, i32, i32) #1

declare dso_local %struct.radix_node* @rn_delete(i32*, %union.sockaddr_union*, %struct.radix_head*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
