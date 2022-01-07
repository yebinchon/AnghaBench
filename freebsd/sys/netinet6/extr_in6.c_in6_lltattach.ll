; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_lltattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_lltattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lltable = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }

@IN6_LLTBL_DEFAULT_HSIZE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@in6_lltable_lookup = common dso_local global i32 0, align 4
@in6_lltable_alloc = common dso_local global i32 0, align 4
@in6_lltable_delete_entry = common dso_local global i32 0, align 4
@in6_lltable_dump_entry = common dso_local global i32 0, align 4
@in6_lltable_hash = common dso_local global i32 0, align 4
@in6_lltable_fill_sa_entry = common dso_local global i32 0, align 4
@in6_lltable_free_entry = common dso_local global i32 0, align 4
@in6_lltable_match_prefix = common dso_local global i32 0, align 4
@in6_lltable_mark_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lltable* (%struct.ifnet*)* @in6_lltattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lltable* @in6_lltattach(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.lltable*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load i32, i32* @IN6_LLTBL_DEFAULT_HSIZE, align 4
  %5 = call %struct.lltable* @lltable_allocate_htbl(i32 %4)
  store %struct.lltable* %5, %struct.lltable** %3, align 8
  %6 = load i32, i32* @AF_INET6, align 4
  %7 = load %struct.lltable*, %struct.lltable** %3, align 8
  %8 = getelementptr inbounds %struct.lltable, %struct.lltable* %7, i32 0, i32 10
  store i32 %6, i32* %8, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %10 = load %struct.lltable*, %struct.lltable** %3, align 8
  %11 = getelementptr inbounds %struct.lltable, %struct.lltable* %10, i32 0, i32 9
  store %struct.ifnet* %9, %struct.ifnet** %11, align 8
  %12 = load i32, i32* @in6_lltable_lookup, align 4
  %13 = load %struct.lltable*, %struct.lltable** %3, align 8
  %14 = getelementptr inbounds %struct.lltable, %struct.lltable* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @in6_lltable_alloc, align 4
  %16 = load %struct.lltable*, %struct.lltable** %3, align 8
  %17 = getelementptr inbounds %struct.lltable, %struct.lltable* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @in6_lltable_delete_entry, align 4
  %19 = load %struct.lltable*, %struct.lltable** %3, align 8
  %20 = getelementptr inbounds %struct.lltable, %struct.lltable* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @in6_lltable_dump_entry, align 4
  %22 = load %struct.lltable*, %struct.lltable** %3, align 8
  %23 = getelementptr inbounds %struct.lltable, %struct.lltable* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @in6_lltable_hash, align 4
  %25 = load %struct.lltable*, %struct.lltable** %3, align 8
  %26 = getelementptr inbounds %struct.lltable, %struct.lltable* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @in6_lltable_fill_sa_entry, align 4
  %28 = load %struct.lltable*, %struct.lltable** %3, align 8
  %29 = getelementptr inbounds %struct.lltable, %struct.lltable* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @in6_lltable_free_entry, align 4
  %31 = load %struct.lltable*, %struct.lltable** %3, align 8
  %32 = getelementptr inbounds %struct.lltable, %struct.lltable* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @in6_lltable_match_prefix, align 4
  %34 = load %struct.lltable*, %struct.lltable** %3, align 8
  %35 = getelementptr inbounds %struct.lltable, %struct.lltable* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @in6_lltable_mark_used, align 4
  %37 = load %struct.lltable*, %struct.lltable** %3, align 8
  %38 = getelementptr inbounds %struct.lltable, %struct.lltable* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.lltable*, %struct.lltable** %3, align 8
  %40 = call i32 @lltable_link(%struct.lltable* %39)
  %41 = load %struct.lltable*, %struct.lltable** %3, align 8
  ret %struct.lltable* %41
}

declare dso_local %struct.lltable* @lltable_allocate_htbl(i32) #1

declare dso_local i32 @lltable_link(%struct.lltable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
