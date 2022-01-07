; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_partition_tbl.c_partition_entry_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_partition_tbl.c_partition_entry_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partition_entry = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.partition_entry*, %struct.partition_entry*)* @partition_entry_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition_entry_cmp(%struct.partition_entry* %0, %struct.partition_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.partition_entry*, align 8
  %5 = alloca %struct.partition_entry*, align 8
  store %struct.partition_entry* %0, %struct.partition_entry** %4, align 8
  store %struct.partition_entry* %1, %struct.partition_entry** %5, align 8
  %6 = load %struct.partition_entry*, %struct.partition_entry** %4, align 8
  %7 = icmp ne %struct.partition_entry* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.partition_entry*, %struct.partition_entry** %5, align 8
  %11 = icmp ne %struct.partition_entry* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.partition_entry*, %struct.partition_entry** %4, align 8
  %15 = getelementptr inbounds %struct.partition_entry, %struct.partition_entry* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.partition_entry*, %struct.partition_entry** %5, align 8
  %20 = getelementptr inbounds %struct.partition_entry, %struct.partition_entry* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %66

26:                                               ; preds = %2
  %27 = load %struct.partition_entry*, %struct.partition_entry** %4, align 8
  %28 = getelementptr inbounds %struct.partition_entry, %struct.partition_entry* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.partition_entry*, %struct.partition_entry** %5, align 8
  %33 = getelementptr inbounds %struct.partition_entry, %struct.partition_entry* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %66

39:                                               ; preds = %26
  %40 = load %struct.partition_entry*, %struct.partition_entry** %4, align 8
  %41 = getelementptr inbounds %struct.partition_entry, %struct.partition_entry* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.partition_entry*, %struct.partition_entry** %5, align 8
  %46 = getelementptr inbounds %struct.partition_entry, %struct.partition_entry* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %44, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %66

52:                                               ; preds = %39
  %53 = load %struct.partition_entry*, %struct.partition_entry** %4, align 8
  %54 = getelementptr inbounds %struct.partition_entry, %struct.partition_entry* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.partition_entry*, %struct.partition_entry** %5, align 8
  %59 = getelementptr inbounds %struct.partition_entry, %struct.partition_entry* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %57, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %66

65:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %51, %38, %25
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
