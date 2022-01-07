; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_dump_fhash_tentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_dump_fhash_tentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i32 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.tflow_entry }
%struct.tflow_entry = type { i64, %struct.TYPE_21__, i8*, i8*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_15__ = type { i8* }
%struct.fhash_cfg = type { i32 }
%struct.fhashentry = type { i64, i32, i32, i32, i32 }
%struct.fhashentry4 = type { %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.table_info*, i8*, %struct.TYPE_12__*)* @ta_dump_fhash_tentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_dump_fhash_tentry(i8* %0, %struct.table_info* %1, i8* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.table_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.fhash_cfg*, align 8
  %10 = alloca %struct.fhashentry*, align 8
  %11 = alloca %struct.fhashentry4*, align 8
  %12 = alloca %struct.tflow_entry*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.table_info* %1, %struct.table_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.fhash_cfg*
  store %struct.fhash_cfg* %14, %struct.fhash_cfg** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.fhashentry*
  store %struct.fhashentry* %16, %struct.fhashentry** %10, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store %struct.tflow_entry* %19, %struct.tflow_entry** %12, align 8
  %20 = load %struct.fhashentry*, %struct.fhashentry** %10, align 8
  %21 = getelementptr inbounds %struct.fhashentry, %struct.fhashentry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.tflow_entry*, %struct.tflow_entry** %12, align 8
  %24 = getelementptr inbounds %struct.tflow_entry, %struct.tflow_entry* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.fhashentry*, %struct.fhashentry** %10, align 8
  %26 = getelementptr inbounds %struct.fhashentry, %struct.fhashentry* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tflow_entry*, %struct.tflow_entry** %12, align 8
  %29 = getelementptr inbounds %struct.tflow_entry, %struct.tflow_entry* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.fhashentry*, %struct.fhashentry** %10, align 8
  %31 = getelementptr inbounds %struct.fhashentry, %struct.fhashentry* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @htons(i32 %32)
  %34 = load %struct.tflow_entry*, %struct.tflow_entry** %12, align 8
  %35 = getelementptr inbounds %struct.tflow_entry, %struct.tflow_entry* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.fhashentry*, %struct.fhashentry** %10, align 8
  %37 = getelementptr inbounds %struct.fhashentry, %struct.fhashentry* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @htons(i32 %38)
  %40 = load %struct.tflow_entry*, %struct.tflow_entry** %12, align 8
  %41 = getelementptr inbounds %struct.tflow_entry, %struct.tflow_entry* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.fhashentry*, %struct.fhashentry** %10, align 8
  %43 = getelementptr inbounds %struct.fhashentry, %struct.fhashentry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.fhashentry*, %struct.fhashentry** %10, align 8
  %49 = getelementptr inbounds %struct.fhashentry, %struct.fhashentry* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.fhashentry*, %struct.fhashentry** %10, align 8
  %54 = getelementptr inbounds %struct.fhashentry, %struct.fhashentry* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AF_INET, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %4
  %59 = load %struct.fhashentry*, %struct.fhashentry** %10, align 8
  %60 = bitcast %struct.fhashentry* %59 to %struct.fhashentry4*
  store %struct.fhashentry4* %60, %struct.fhashentry4** %11, align 8
  %61 = load %struct.fhashentry4*, %struct.fhashentry4** %11, align 8
  %62 = getelementptr inbounds %struct.fhashentry4, %struct.fhashentry4* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @htonl(i32 %64)
  %66 = load %struct.tflow_entry*, %struct.tflow_entry** %12, align 8
  %67 = getelementptr inbounds %struct.tflow_entry, %struct.tflow_entry* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  store i8* %65, i8** %70, align 8
  %71 = load %struct.fhashentry4*, %struct.fhashentry4** %11, align 8
  %72 = getelementptr inbounds %struct.fhashentry4, %struct.fhashentry4* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @htonl(i32 %74)
  %76 = load %struct.tflow_entry*, %struct.tflow_entry** %12, align 8
  %77 = getelementptr inbounds %struct.tflow_entry, %struct.tflow_entry* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  store i8* %75, i8** %80, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store i32 32, i32* %82, align 8
  br label %83

83:                                               ; preds = %58, %4
  ret i32 0
}

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
