; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_tei_to_fhash_ent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_tei_to_fhash_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tentry_info = type { i64, i64 }
%struct.fhashentry = type { i64, i8*, i8*, i32 }
%struct.tflow_entry = type { %struct.TYPE_14__, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tentry_info*, %struct.fhashentry*)* @tei_to_fhash_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tei_to_fhash_ent(%struct.tentry_info* %0, %struct.fhashentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tentry_info*, align 8
  %5 = alloca %struct.fhashentry*, align 8
  %6 = alloca %struct.tflow_entry*, align 8
  store %struct.tentry_info* %0, %struct.tentry_info** %4, align 8
  store %struct.fhashentry* %1, %struct.fhashentry** %5, align 8
  %7 = load %struct.tentry_info*, %struct.tentry_info** %4, align 8
  %8 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.tflow_entry*
  store %struct.tflow_entry* %10, %struct.tflow_entry** %6, align 8
  %11 = load %struct.tentry_info*, %struct.tentry_info** %4, align 8
  %12 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.fhashentry*, %struct.fhashentry** %5, align 8
  %15 = getelementptr inbounds %struct.fhashentry, %struct.fhashentry* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.tflow_entry*, %struct.tflow_entry** %6, align 8
  %17 = getelementptr inbounds %struct.tflow_entry, %struct.tflow_entry* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fhashentry*, %struct.fhashentry** %5, align 8
  %20 = getelementptr inbounds %struct.fhashentry, %struct.fhashentry* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.tflow_entry*, %struct.tflow_entry** %6, align 8
  %22 = getelementptr inbounds %struct.tflow_entry, %struct.tflow_entry* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @ntohs(i32 %23)
  %25 = load %struct.fhashentry*, %struct.fhashentry** %5, align 8
  %26 = getelementptr inbounds %struct.fhashentry, %struct.fhashentry* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.tflow_entry*, %struct.tflow_entry** %6, align 8
  %28 = getelementptr inbounds %struct.tflow_entry, %struct.tflow_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @ntohs(i32 %29)
  %31 = load %struct.fhashentry*, %struct.fhashentry** %5, align 8
  %32 = getelementptr inbounds %struct.fhashentry, %struct.fhashentry* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.tentry_info*, %struct.tentry_info** %4, align 8
  %34 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AF_INET, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i8* @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
