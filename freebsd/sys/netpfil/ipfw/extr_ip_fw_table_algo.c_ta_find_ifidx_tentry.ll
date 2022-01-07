; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_find_ifidx_tentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_find_ifidx_tentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.iftable_cfg = type { i32 }
%struct.ifentry = type { i32 }

@IF_NAMESIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.table_info*, %struct.TYPE_6__*)* @ta_find_ifidx_tentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_find_ifidx_tentry(i8* %0, %struct.table_info* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.table_info*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.iftable_cfg*, align 8
  %9 = alloca %struct.ifentry*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.table_info* %1, %struct.table_info** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.iftable_cfg*
  store %struct.iftable_cfg* %12, %struct.iftable_cfg** %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i64, i64* @IF_NAMESIZE, align 8
  %19 = call i64 @strnlen(i8* %17, i64 %18)
  %20 = load i64, i64* @IF_NAMESIZE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %41

24:                                               ; preds = %3
  %25 = load %struct.iftable_cfg*, %struct.iftable_cfg** %8, align 8
  %26 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @ipfw_objhash_lookup_name(i32 %27, i32 0, i8* %28)
  %30 = inttoptr i64 %29 to %struct.ifentry*
  store %struct.ifentry* %30, %struct.ifentry** %9, align 8
  %31 = load %struct.ifentry*, %struct.ifentry** %9, align 8
  %32 = icmp ne %struct.ifentry* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.table_info*, %struct.table_info** %6, align 8
  %36 = load %struct.ifentry*, %struct.ifentry** %9, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = call i32 @ta_dump_ifidx_tentry(i8* %34, %struct.table_info* %35, %struct.ifentry* %36, %struct.TYPE_6__* %37)
  store i32 0, i32* %4, align 4
  br label %41

39:                                               ; preds = %24
  %40 = load i32, i32* @ENOENT, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %33, %22
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local i64 @ipfw_objhash_lookup_name(i32, i32, i8*) #1

declare dso_local i32 @ta_dump_ifidx_tentry(i8*, %struct.table_info*, %struct.ifentry*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
