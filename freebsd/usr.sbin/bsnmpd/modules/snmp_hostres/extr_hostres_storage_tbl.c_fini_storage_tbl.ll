; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_storage_tbl.c_fini_storage_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_storage_tbl.c_fini_storage_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storage_map_entry = type { %struct.storage_map_entry*, %struct.storage_map_entry*, %struct.storage_map_entry* }

@swap_devs = common dso_local global %struct.storage_map_entry* null, align 8
@swap_devs_len = common dso_local global i64 0, align 8
@fs_buf = common dso_local global %struct.storage_map_entry* null, align 8
@fs_buf_count = common dso_local global i64 0, align 8
@storage_map = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@storage_tbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fini_storage_tbl() #0 {
  %1 = alloca %struct.storage_map_entry*, align 8
  %2 = load %struct.storage_map_entry*, %struct.storage_map_entry** @swap_devs, align 8
  %3 = icmp ne %struct.storage_map_entry* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load %struct.storage_map_entry*, %struct.storage_map_entry** @swap_devs, align 8
  %6 = call i32 @free(%struct.storage_map_entry* %5)
  store %struct.storage_map_entry* null, %struct.storage_map_entry** @swap_devs, align 8
  br label %7

7:                                                ; preds = %4, %0
  store i64 0, i64* @swap_devs_len, align 8
  %8 = load %struct.storage_map_entry*, %struct.storage_map_entry** @fs_buf, align 8
  %9 = icmp ne %struct.storage_map_entry* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load %struct.storage_map_entry*, %struct.storage_map_entry** @fs_buf, align 8
  %12 = call i32 @free(%struct.storage_map_entry* %11)
  store %struct.storage_map_entry* null, %struct.storage_map_entry** @fs_buf, align 8
  br label %13

13:                                               ; preds = %10, %7
  store i64 0, i64* @fs_buf_count, align 8
  br label %14

14:                                               ; preds = %40, %13
  %15 = call %struct.storage_map_entry* @STAILQ_FIRST(i32* @storage_map)
  store %struct.storage_map_entry* %15, %struct.storage_map_entry** %1, align 8
  %16 = icmp ne %struct.storage_map_entry* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  %18 = load i32, i32* @link, align 4
  %19 = call i32 @STAILQ_REMOVE_HEAD(i32* @storage_map, i32 %18)
  %20 = load %struct.storage_map_entry*, %struct.storage_map_entry** %1, align 8
  %21 = getelementptr inbounds %struct.storage_map_entry, %struct.storage_map_entry* %20, i32 0, i32 1
  %22 = load %struct.storage_map_entry*, %struct.storage_map_entry** %21, align 8
  %23 = icmp ne %struct.storage_map_entry* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load %struct.storage_map_entry*, %struct.storage_map_entry** %1, align 8
  %26 = getelementptr inbounds %struct.storage_map_entry, %struct.storage_map_entry* %25, i32 0, i32 1
  %27 = load %struct.storage_map_entry*, %struct.storage_map_entry** %26, align 8
  %28 = load i32, i32* @link, align 4
  %29 = call i32 @TAILQ_REMOVE(i32* @storage_tbl, %struct.storage_map_entry* %27, i32 %28)
  %30 = load %struct.storage_map_entry*, %struct.storage_map_entry** %1, align 8
  %31 = getelementptr inbounds %struct.storage_map_entry, %struct.storage_map_entry* %30, i32 0, i32 1
  %32 = load %struct.storage_map_entry*, %struct.storage_map_entry** %31, align 8
  %33 = getelementptr inbounds %struct.storage_map_entry, %struct.storage_map_entry* %32, i32 0, i32 2
  %34 = load %struct.storage_map_entry*, %struct.storage_map_entry** %33, align 8
  %35 = call i32 @free(%struct.storage_map_entry* %34)
  %36 = load %struct.storage_map_entry*, %struct.storage_map_entry** %1, align 8
  %37 = getelementptr inbounds %struct.storage_map_entry, %struct.storage_map_entry* %36, i32 0, i32 1
  %38 = load %struct.storage_map_entry*, %struct.storage_map_entry** %37, align 8
  %39 = call i32 @free(%struct.storage_map_entry* %38)
  br label %40

40:                                               ; preds = %24, %17
  %41 = load %struct.storage_map_entry*, %struct.storage_map_entry** %1, align 8
  %42 = getelementptr inbounds %struct.storage_map_entry, %struct.storage_map_entry* %41, i32 0, i32 0
  %43 = load %struct.storage_map_entry*, %struct.storage_map_entry** %42, align 8
  %44 = call i32 @free(%struct.storage_map_entry* %43)
  %45 = load %struct.storage_map_entry*, %struct.storage_map_entry** %1, align 8
  %46 = call i32 @free(%struct.storage_map_entry* %45)
  br label %14

47:                                               ; preds = %14
  %48 = call i32 @TAILQ_EMPTY(i32* @storage_tbl)
  %49 = call i32 @assert(i32 %48)
  ret void
}

declare dso_local i32 @free(%struct.storage_map_entry*) #1

declare dso_local %struct.storage_map_entry* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.storage_map_entry*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
