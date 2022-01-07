; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_fs_tbl.c_fs_tbl_process_statfs_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_fs_tbl.c_fs_tbl_process_statfs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, i8*, i32 }
%struct.fs_entry = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"for hrStorageEntry::index %d\00", align 1
@HR_FS_FOUND = common dso_local global i32 0, align 4
@MNT_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MNT_RDONLY = common dso_local global i32 0, align 4
@FS_READ_ONLY = common dso_local global i32 0, align 4
@FS_READ_WRITE = common dso_local global i32 0, align 4
@MNT_ROOTFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fs_tbl_process_statfs_entry(%struct.statfs* %0, i32 %1) #0 {
  %3 = alloca %struct.statfs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fs_entry*, align 8
  store %struct.statfs* %0, %struct.statfs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.statfs*, %struct.statfs** %3, align 8
  %7 = icmp ne %struct.statfs* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @HRDBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.statfs*, %struct.statfs** %3, align 8
  %13 = icmp eq %struct.statfs* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %100

15:                                               ; preds = %2
  %16 = load %struct.statfs*, %struct.statfs** %3, align 8
  %17 = getelementptr inbounds %struct.statfs, %struct.statfs* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.fs_entry* @fs_find_by_name(i32 %18)
  store %struct.fs_entry* %19, %struct.fs_entry** %5, align 8
  %20 = icmp ne %struct.fs_entry* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.statfs*, %struct.statfs** %3, align 8
  %23 = getelementptr inbounds %struct.statfs, %struct.statfs* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.fs_entry* @fs_entry_create(i32 %24)
  store %struct.fs_entry* %25, %struct.fs_entry** %5, align 8
  %26 = icmp ne %struct.fs_entry* %25, null
  br i1 %26, label %27, label %100

27:                                               ; preds = %21, %15
  %28 = load i32, i32* @HR_FS_FOUND, align 4
  %29 = load %struct.fs_entry*, %struct.fs_entry** %5, align 8
  %30 = getelementptr inbounds %struct.fs_entry, %struct.fs_entry* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.statfs*, %struct.statfs** %3, align 8
  %34 = getelementptr inbounds %struct.statfs, %struct.statfs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MNT_LOCAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %27
  %40 = load %struct.statfs*, %struct.statfs** %3, align 8
  %41 = getelementptr inbounds %struct.statfs, %struct.statfs* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @strdup(i8* %42)
  %44 = load %struct.fs_entry*, %struct.fs_entry** %5, align 8
  %45 = getelementptr inbounds %struct.fs_entry, %struct.fs_entry* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  br label %50

46:                                               ; preds = %27
  %47 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.fs_entry*, %struct.fs_entry** %5, align 8
  %49 = getelementptr inbounds %struct.fs_entry, %struct.fs_entry* %48, i32 0, i32 7
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.statfs*, %struct.statfs** %3, align 8
  %52 = call i32 @fs_get_type(%struct.statfs* %51)
  %53 = load %struct.fs_entry*, %struct.fs_entry** %5, align 8
  %54 = getelementptr inbounds %struct.fs_entry, %struct.fs_entry* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load %struct.statfs*, %struct.statfs** %3, align 8
  %56 = getelementptr inbounds %struct.statfs, %struct.statfs* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MNT_RDONLY, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @MNT_RDONLY, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load i32, i32* @FS_READ_ONLY, align 4
  %64 = load %struct.fs_entry*, %struct.fs_entry** %5, align 8
  %65 = getelementptr inbounds %struct.fs_entry, %struct.fs_entry* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  br label %70

66:                                               ; preds = %50
  %67 = load i32, i32* @FS_READ_WRITE, align 4
  %68 = load %struct.fs_entry*, %struct.fs_entry** %5, align 8
  %69 = getelementptr inbounds %struct.fs_entry, %struct.fs_entry* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.statfs*, %struct.statfs** %3, align 8
  %72 = getelementptr inbounds %struct.statfs, %struct.statfs* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MNT_ROOTFS, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @MNT_ROOTFS, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @TRUTH_MK(i32 %78)
  %80 = load %struct.fs_entry*, %struct.fs_entry** %5, align 8
  %81 = getelementptr inbounds %struct.fs_entry, %struct.fs_entry* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.fs_entry*, %struct.fs_entry** %5, align 8
  %84 = getelementptr inbounds %struct.fs_entry, %struct.fs_entry* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.fs_entry*, %struct.fs_entry** %5, align 8
  %86 = getelementptr inbounds %struct.fs_entry, %struct.fs_entry* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @memset(i32 %87, i32 0, i32 4)
  %89 = load %struct.fs_entry*, %struct.fs_entry** %5, align 8
  %90 = getelementptr inbounds %struct.fs_entry, %struct.fs_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @memset(i32 %91, i32 0, i32 4)
  %93 = load %struct.statfs*, %struct.statfs** %3, align 8
  %94 = getelementptr inbounds %struct.statfs, %struct.statfs* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.fs_entry*, %struct.fs_entry** %5, align 8
  %97 = getelementptr inbounds %struct.fs_entry, %struct.fs_entry* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @handle_partition_fs_index(i8* %95, i32 %98)
  br label %100

100:                                              ; preds = %14, %70, %21
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @HRDBG(i8*, i32) #1

declare dso_local %struct.fs_entry* @fs_find_by_name(i32) #1

declare dso_local %struct.fs_entry* @fs_entry_create(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fs_get_type(%struct.statfs*) #1

declare dso_local i32 @TRUTH_MK(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @handle_partition_fs_index(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
