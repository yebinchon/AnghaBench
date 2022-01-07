; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_del_ifidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_del_ifidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i64 }
%struct.tentry_info = type { i32, i64 }
%struct.iftable_cfg = type { i32, i32, i32, i64, i32 }
%struct.ifentry = type { i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ta_buf_ifidx = type { %struct.ifentry* }

@ENOENT = common dso_local global i32 0, align 4
@compare_ifidx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"index %d does not exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.table_info*, %struct.tentry_info*, i8*, i32*)* @ta_del_ifidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_del_ifidx(i8* %0, %struct.table_info* %1, %struct.tentry_info* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.table_info*, align 8
  %9 = alloca %struct.tentry_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.iftable_cfg*, align 8
  %13 = alloca %struct.ifentry*, align 8
  %14 = alloca %struct.ta_buf_ifidx*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.table_info* %1, %struct.table_info** %8, align 8
  store %struct.tentry_info* %2, %struct.tentry_info** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.ta_buf_ifidx*
  store %struct.ta_buf_ifidx* %19, %struct.ta_buf_ifidx** %14, align 8
  %20 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %21 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %15, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.iftable_cfg*
  store %struct.iftable_cfg* %25, %struct.iftable_cfg** %12, align 8
  %26 = load %struct.iftable_cfg*, %struct.iftable_cfg** %12, align 8
  %27 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = call i64 @ipfw_objhash_lookup_name(i32 %28, i32 0, i8* %29)
  %31 = inttoptr i64 %30 to %struct.ifentry*
  store %struct.ifentry* %31, %struct.ifentry** %13, align 8
  %32 = load %struct.ifentry*, %struct.ifentry** %13, align 8
  %33 = icmp eq %struct.ifentry* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* @ENOENT, align 4
  store i32 %35, i32* %6, align 4
  br label %106

36:                                               ; preds = %5
  %37 = load %struct.ifentry*, %struct.ifentry** %13, align 8
  %38 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %36
  %42 = load %struct.ifentry*, %struct.ifentry** %13, align 8
  %43 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %16, align 4
  %48 = load %struct.iftable_cfg*, %struct.iftable_cfg** %12, align 8
  %49 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.iftable_cfg*, %struct.iftable_cfg** %12, align 8
  %52 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @compare_ifidx, align 4
  %55 = call i32 @bdel(i32* %16, i32 %50, i64 %53, i32 4, i32 %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp eq i32 %56, 1
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @KASSERT(i32 %58, i8* %61)
  %63 = load %struct.iftable_cfg*, %struct.iftable_cfg** %12, align 8
  %64 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.iftable_cfg*, %struct.iftable_cfg** %12, align 8
  %68 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.table_info*, %struct.table_info** %8, align 8
  %71 = getelementptr inbounds %struct.table_info, %struct.table_info* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.ifentry*, %struct.ifentry** %13, align 8
  %73 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %41, %36
  %75 = load %struct.iftable_cfg*, %struct.iftable_cfg** %12, align 8
  %76 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ifentry*, %struct.ifentry** %13, align 8
  %79 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %78, i32 0, i32 3
  %80 = call i32 @ipfw_objhash_del(i32 %77, i32* %79)
  %81 = load %struct.iftable_cfg*, %struct.iftable_cfg** %12, align 8
  %82 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ifentry*, %struct.ifentry** %13, align 8
  %85 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %84, i32 0, i32 2
  %86 = call i32 @ipfw_iface_del_notify(i32 %83, %struct.TYPE_5__* %85)
  %87 = load %struct.iftable_cfg*, %struct.iftable_cfg** %12, align 8
  %88 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ifentry*, %struct.ifentry** %13, align 8
  %91 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %90, i32 0, i32 2
  %92 = call i32 @ipfw_iface_unref(i32 %89, %struct.TYPE_5__* %91)
  %93 = load %struct.iftable_cfg*, %struct.iftable_cfg** %12, align 8
  %94 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.ifentry*, %struct.ifentry** %13, align 8
  %98 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %101 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.ifentry*, %struct.ifentry** %13, align 8
  %103 = load %struct.ta_buf_ifidx*, %struct.ta_buf_ifidx** %14, align 8
  %104 = getelementptr inbounds %struct.ta_buf_ifidx, %struct.ta_buf_ifidx* %103, i32 0, i32 0
  store %struct.ifentry* %102, %struct.ifentry** %104, align 8
  %105 = load i32*, i32** %11, align 8
  store i32 1, i32* %105, align 4
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %74, %34
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i64 @ipfw_objhash_lookup_name(i32, i32, i8*) #1

declare dso_local i32 @bdel(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ipfw_objhash_del(i32, i32*) #1

declare dso_local i32 @ipfw_iface_del_notify(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ipfw_iface_unref(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
