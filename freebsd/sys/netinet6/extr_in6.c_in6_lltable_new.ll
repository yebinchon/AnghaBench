; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_lltable_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_lltable_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.in6_llentry = type { %struct.llentry }

@M_LLTABLE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@in6_lltable_destroy_lle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llentry* (%struct.in6_addr*, i32)* @in6_lltable_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llentry* @in6_lltable_new(%struct.in6_addr* %0, i32 %1) #0 {
  %3 = alloca %struct.llentry*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.in6_llentry*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @M_LLTABLE, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.in6_llentry* @malloc(i32 16, i32 %7, i32 %10)
  store %struct.in6_llentry* %11, %struct.in6_llentry** %6, align 8
  %12 = load %struct.in6_llentry*, %struct.in6_llentry** %6, align 8
  %13 = icmp eq %struct.in6_llentry* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.llentry* null, %struct.llentry** %3, align 8
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.in6_llentry*, %struct.in6_llentry** %6, align 8
  %17 = getelementptr inbounds %struct.in6_llentry, %struct.in6_llentry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.llentry, %struct.llentry* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %21 = bitcast %struct.in6_addr* %19 to i8*
  %22 = bitcast %struct.in6_addr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.in6_llentry*, %struct.in6_llentry** %6, align 8
  %24 = getelementptr inbounds %struct.in6_llentry, %struct.in6_llentry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.llentry, %struct.llentry* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @in6_lltable_destroy_lle, align 4
  %27 = load %struct.in6_llentry*, %struct.in6_llentry** %6, align 8
  %28 = getelementptr inbounds %struct.in6_llentry, %struct.in6_llentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.llentry, %struct.llentry* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load %struct.in6_llentry*, %struct.in6_llentry** %6, align 8
  %31 = getelementptr inbounds %struct.in6_llentry, %struct.in6_llentry* %30, i32 0, i32 0
  %32 = call i32 @LLE_LOCK_INIT(%struct.llentry* %31)
  %33 = load %struct.in6_llentry*, %struct.in6_llentry** %6, align 8
  %34 = getelementptr inbounds %struct.in6_llentry, %struct.in6_llentry* %33, i32 0, i32 0
  %35 = call i32 @LLE_REQ_INIT(%struct.llentry* %34)
  %36 = load %struct.in6_llentry*, %struct.in6_llentry** %6, align 8
  %37 = getelementptr inbounds %struct.in6_llentry, %struct.in6_llentry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.llentry, %struct.llentry* %37, i32 0, i32 1
  %39 = call i32 @callout_init(i32* %38, i32 1)
  %40 = load %struct.in6_llentry*, %struct.in6_llentry** %6, align 8
  %41 = getelementptr inbounds %struct.in6_llentry, %struct.in6_llentry* %40, i32 0, i32 0
  store %struct.llentry* %41, %struct.llentry** %3, align 8
  br label %42

42:                                               ; preds = %15, %14
  %43 = load %struct.llentry*, %struct.llentry** %3, align 8
  ret %struct.llentry* %43
}

declare dso_local %struct.in6_llentry* @malloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @LLE_LOCK_INIT(%struct.llentry*) #1

declare dso_local i32 @LLE_REQ_INIT(%struct.llentry*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
