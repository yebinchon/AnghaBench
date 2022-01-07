; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in.c_in_lltable_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in.c_in_lltable_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.in_llentry = type { %struct.llentry }

@M_LLTABLE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@in_lltable_destroy_lle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llentry* (i32, i32)* @in_lltable_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llentry* @in_lltable_new(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.llentry*, align 8
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_llentry*, align 8
  %7 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @M_LLTABLE, align 4
  %9 = load i32, i32* @M_NOWAIT, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.in_llentry* @malloc(i32 20, i32 %8, i32 %11)
  store %struct.in_llentry* %12, %struct.in_llentry** %6, align 8
  %13 = load %struct.in_llentry*, %struct.in_llentry** %6, align 8
  %14 = icmp eq %struct.in_llentry* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.llentry* null, %struct.llentry** %3, align 8
  br label %46

16:                                               ; preds = %2
  %17 = load i32, i32* @time_uptime, align 4
  %18 = load %struct.in_llentry*, %struct.in_llentry** %6, align 8
  %19 = getelementptr inbounds %struct.in_llentry, %struct.in_llentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.llentry, %struct.llentry* %19, i32 0, i32 4
  store i32 %17, i32* %20, align 4
  %21 = load %struct.in_llentry*, %struct.in_llentry** %6, align 8
  %22 = getelementptr inbounds %struct.in_llentry, %struct.in_llentry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.llentry, %struct.llentry* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast %struct.in_addr* %24 to i8*
  %26 = bitcast %struct.in_addr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.in_llentry*, %struct.in_llentry** %6, align 8
  %28 = getelementptr inbounds %struct.in_llentry, %struct.in_llentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.llentry, %struct.llentry* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* @in_lltable_destroy_lle, align 4
  %31 = load %struct.in_llentry*, %struct.in_llentry** %6, align 8
  %32 = getelementptr inbounds %struct.in_llentry, %struct.in_llentry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.llentry, %struct.llentry* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load %struct.in_llentry*, %struct.in_llentry** %6, align 8
  %35 = getelementptr inbounds %struct.in_llentry, %struct.in_llentry* %34, i32 0, i32 0
  %36 = call i32 @LLE_LOCK_INIT(%struct.llentry* %35)
  %37 = load %struct.in_llentry*, %struct.in_llentry** %6, align 8
  %38 = getelementptr inbounds %struct.in_llentry, %struct.in_llentry* %37, i32 0, i32 0
  %39 = call i32 @LLE_REQ_INIT(%struct.llentry* %38)
  %40 = load %struct.in_llentry*, %struct.in_llentry** %6, align 8
  %41 = getelementptr inbounds %struct.in_llentry, %struct.in_llentry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.llentry, %struct.llentry* %41, i32 0, i32 1
  %43 = call i32 @callout_init(i32* %42, i32 1)
  %44 = load %struct.in_llentry*, %struct.in_llentry** %6, align 8
  %45 = getelementptr inbounds %struct.in_llentry, %struct.in_llentry* %44, i32 0, i32 0
  store %struct.llentry* %45, %struct.llentry** %3, align 8
  br label %46

46:                                               ; preds = %16, %15
  %47 = load %struct.llentry*, %struct.llentry** %3, align 8
  ret %struct.llentry* %47
}

declare dso_local %struct.in_llentry* @malloc(i32, i32, i32) #1

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
