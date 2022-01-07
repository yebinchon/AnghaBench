; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_NCP2NEGLIST.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_NCP2NEGLIST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neglist = type { i32 }
%struct.namecache = type { i32 }

@neglists = common dso_local global %struct.neglist* null, align 8
@ncneghash = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.neglist* (%struct.namecache*)* @NCP2NEGLIST to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.neglist* @NCP2NEGLIST(%struct.namecache* %0) #0 {
  %2 = alloca %struct.namecache*, align 8
  store %struct.namecache* %0, %struct.namecache** %2, align 8
  %3 = load %struct.neglist*, %struct.neglist** @neglists, align 8
  %4 = load %struct.namecache*, %struct.namecache** %2, align 8
  %5 = ptrtoint %struct.namecache* %4 to i64
  %6 = lshr i64 %5, 8
  %7 = load i64, i64* @ncneghash, align 8
  %8 = and i64 %6, %7
  %9 = getelementptr inbounds %struct.neglist, %struct.neglist* %3, i64 %8
  ret %struct.neglist* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
