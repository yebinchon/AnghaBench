; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_route_kentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_route_kentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.radix_head }
%struct.radix_head = type { i32 }
%struct.TYPE_3__ = type { %struct.radix_head }
%struct.pfr_kentry = type { i32, i32, i32, i32 }
%union.sockaddr_union = type { i32 }
%struct.radix_node = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfr_ktable*, %struct.pfr_kentry*)* @pfr_route_kentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfr_route_kentry(%struct.pfr_ktable* %0, %struct.pfr_kentry* %1) #0 {
  %3 = alloca %struct.pfr_ktable*, align 8
  %4 = alloca %struct.pfr_kentry*, align 8
  %5 = alloca %union.sockaddr_union, align 4
  %6 = alloca %struct.radix_node*, align 8
  %7 = alloca %struct.radix_head*, align 8
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %3, align 8
  store %struct.pfr_kentry* %1, %struct.pfr_kentry** %4, align 8
  store %struct.radix_head* null, %struct.radix_head** %7, align 8
  %8 = call i32 (...) @PF_RULES_WASSERT()
  %9 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %10 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @bzero(i32 %11, i32 4)
  %13 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %14 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AF_INET, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %20 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.radix_head* %22, %struct.radix_head** %7, align 8
  br label %35

23:                                               ; preds = %2
  %24 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %25 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AF_INET6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %31 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.radix_head* %33, %struct.radix_head** %7, align 8
  br label %34

34:                                               ; preds = %29, %23
  br label %35

35:                                               ; preds = %34, %18
  %36 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %37 = call i64 @KENTRY_NETWORK(%struct.pfr_kentry* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %41 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %44 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pfr_prepare_network(%union.sockaddr_union* %5, i32 %42, i32 %45)
  %47 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %48 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %47, i32 0, i32 1
  %49 = load %struct.radix_head*, %struct.radix_head** %7, align 8
  %50 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %51 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.radix_node* @rn_addroute(i32* %48, %union.sockaddr_union* %5, %struct.radix_head* %49, i32 %52)
  store %struct.radix_node* %53, %struct.radix_node** %6, align 8
  br label %62

54:                                               ; preds = %35
  %55 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %56 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %55, i32 0, i32 1
  %57 = load %struct.radix_head*, %struct.radix_head** %7, align 8
  %58 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %59 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.radix_node* @rn_addroute(i32* %56, %union.sockaddr_union* null, %struct.radix_head* %57, i32 %60)
  store %struct.radix_node* %61, %struct.radix_node** %6, align 8
  br label %62

62:                                               ; preds = %54, %39
  %63 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %64 = icmp eq %struct.radix_node* %63, null
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 -1, i32 0
  ret i32 %66
}

declare dso_local i32 @PF_RULES_WASSERT(...) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i64 @KENTRY_NETWORK(%struct.pfr_kentry*) #1

declare dso_local i32 @pfr_prepare_network(%union.sockaddr_union*, i32, i32) #1

declare dso_local %struct.radix_node* @rn_addroute(i32*, %union.sockaddr_union*, %struct.radix_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
