; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_spdcache_entry_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_spdcache_entry_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spdcache_entry = type { %struct.secpolicy*, %struct.secpolicyindex }
%struct.secpolicyindex = type { i32 }
%struct.secpolicy = type { i32 }

@M_IPSEC_SPDCACHE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spdcache_entry* @spdcache_entry_alloc(%struct.secpolicyindex* %0, %struct.secpolicy* %1) #0 {
  %3 = alloca %struct.spdcache_entry*, align 8
  %4 = alloca %struct.secpolicyindex*, align 8
  %5 = alloca %struct.secpolicy*, align 8
  %6 = alloca %struct.spdcache_entry*, align 8
  store %struct.secpolicyindex* %0, %struct.secpolicyindex** %4, align 8
  store %struct.secpolicy* %1, %struct.secpolicy** %5, align 8
  %7 = load i32, i32* @M_IPSEC_SPDCACHE, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.spdcache_entry* @malloc(i32 16, i32 %7, i32 %10)
  store %struct.spdcache_entry* %11, %struct.spdcache_entry** %6, align 8
  %12 = load %struct.spdcache_entry*, %struct.spdcache_entry** %6, align 8
  %13 = icmp eq %struct.spdcache_entry* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.spdcache_entry* null, %struct.spdcache_entry** %3, align 8
  br label %31

15:                                               ; preds = %2
  %16 = load %struct.secpolicy*, %struct.secpolicy** %5, align 8
  %17 = icmp ne %struct.secpolicy* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.secpolicy*, %struct.secpolicy** %5, align 8
  %20 = call i32 @SP_ADDREF(%struct.secpolicy* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.spdcache_entry*, %struct.spdcache_entry** %6, align 8
  %23 = getelementptr inbounds %struct.spdcache_entry, %struct.spdcache_entry* %22, i32 0, i32 1
  %24 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %25 = bitcast %struct.secpolicyindex* %23 to i8*
  %26 = bitcast %struct.secpolicyindex* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.secpolicy*, %struct.secpolicy** %5, align 8
  %28 = load %struct.spdcache_entry*, %struct.spdcache_entry** %6, align 8
  %29 = getelementptr inbounds %struct.spdcache_entry, %struct.spdcache_entry* %28, i32 0, i32 0
  store %struct.secpolicy* %27, %struct.secpolicy** %29, align 8
  %30 = load %struct.spdcache_entry*, %struct.spdcache_entry** %6, align 8
  store %struct.spdcache_entry* %30, %struct.spdcache_entry** %3, align 8
  br label %31

31:                                               ; preds = %21, %14
  %32 = load %struct.spdcache_entry*, %struct.spdcache_entry** %3, align 8
  ret %struct.spdcache_entry* %32
}

declare dso_local %struct.spdcache_entry* @malloc(i32, i32, i32) #1

declare dso_local i32 @SP_ADDREF(%struct.secpolicy*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
