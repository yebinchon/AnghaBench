; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_if_notifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_if_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.ifentry = type { i32, %struct.TYPE_4__, i32, %struct.iftable_cfg* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iftable_cfg = type { i64, i32, %struct.table_info* }
%struct.table_info = type { i64 }
%struct.ifidx = type { i32, i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"ti=NULL, check change_ti handler\00", align 1
@compare_ifidx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"index %d already exists\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"index %d does not exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, i8*, i64)* @if_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_notifier(%struct.ip_fw_chain* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifentry*, align 8
  %8 = alloca %struct.ifidx, align 8
  %9 = alloca %struct.iftable_cfg*, align 8
  %10 = alloca %struct.table_info*, align 8
  %11 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ifentry*
  store %struct.ifentry* %13, %struct.ifentry** %7, align 8
  %14 = load %struct.ifentry*, %struct.ifentry** %7, align 8
  %15 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %14, i32 0, i32 3
  %16 = load %struct.iftable_cfg*, %struct.iftable_cfg** %15, align 8
  store %struct.iftable_cfg* %16, %struct.iftable_cfg** %9, align 8
  %17 = load %struct.iftable_cfg*, %struct.iftable_cfg** %9, align 8
  %18 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %17, i32 0, i32 2
  %19 = load %struct.table_info*, %struct.table_info** %18, align 8
  store %struct.table_info* %19, %struct.table_info** %10, align 8
  %20 = load %struct.table_info*, %struct.table_info** %10, align 8
  %21 = icmp ne %struct.table_info* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ifentry*, %struct.ifentry** %7, align 8
  %25 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %28
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.ifidx, %struct.ifidx* %8, i32 0, i32 2
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.ifidx, %struct.ifidx* %8, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.ifentry*, %struct.ifentry** %7, align 8
  %36 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.ifidx, %struct.ifidx* %8, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load %struct.iftable_cfg*, %struct.iftable_cfg** %9, align 8
  %40 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.iftable_cfg*, %struct.iftable_cfg** %9, align 8
  %43 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @compare_ifidx, align 4
  %46 = call i32 @badd(i64* %6, %struct.ifidx* %8, i32 %41, i64 %44, i32 24, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 1
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %6, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @KASSERT(i32 %49, i8* %51)
  %53 = load %struct.iftable_cfg*, %struct.iftable_cfg** %9, align 8
  %54 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.iftable_cfg*, %struct.iftable_cfg** %9, align 8
  %58 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.table_info*, %struct.table_info** %10, align 8
  %61 = getelementptr inbounds %struct.table_info, %struct.table_info* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.ifentry*, %struct.ifentry** %7, align 8
  %63 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %105

64:                                               ; preds = %28, %3
  %65 = load %struct.ifentry*, %struct.ifentry** %7, align 8
  %66 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %104

69:                                               ; preds = %64
  %70 = load i64, i64* %6, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %104

72:                                               ; preds = %69
  %73 = load %struct.ifentry*, %struct.ifentry** %7, align 8
  %74 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %6, align 8
  %79 = load %struct.iftable_cfg*, %struct.iftable_cfg** %9, align 8
  %80 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.iftable_cfg*, %struct.iftable_cfg** %9, align 8
  %83 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @compare_ifidx, align 4
  %86 = call i32 @bdel(i64* %6, i32 %81, i64 %84, i32 24, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 1
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %6, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 @KASSERT(i32 %89, i8* %91)
  %93 = load %struct.iftable_cfg*, %struct.iftable_cfg** %9, align 8
  %94 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, -1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.iftable_cfg*, %struct.iftable_cfg** %9, align 8
  %98 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.table_info*, %struct.table_info** %10, align 8
  %101 = getelementptr inbounds %struct.table_info, %struct.table_info* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.ifentry*, %struct.ifentry** %7, align 8
  %103 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %104

104:                                              ; preds = %72, %69, %64
  br label %105

105:                                              ; preds = %104, %31
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @badd(i64*, %struct.ifidx*, i32, i64, i32, i32) #1

declare dso_local i32 @bdel(i64*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
