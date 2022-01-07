; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, %struct.statfs, i32* }
%struct.statfs = type { i32, i32, i64, i64, i64, i8*, i8* }

@MNT_UPDATE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@mqfs_data = common dso_local global i32 0, align 4
@MNT_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mqueue\00", align 1
@PAGE_SIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @mqfs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqfs_mount(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.statfs*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  %5 = load %struct.mount*, %struct.mount** %3, align 8
  %6 = getelementptr inbounds %struct.mount, %struct.mount* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MNT_UPDATE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %12, i32* %2, align 4
  br label %47

13:                                               ; preds = %1
  %14 = load %struct.mount*, %struct.mount** %3, align 8
  %15 = getelementptr inbounds %struct.mount, %struct.mount* %14, i32 0, i32 2
  store i32* @mqfs_data, i32** %15, align 8
  %16 = load %struct.mount*, %struct.mount** %3, align 8
  %17 = call i32 @MNT_ILOCK(%struct.mount* %16)
  %18 = load i32, i32* @MNT_LOCAL, align 4
  %19 = load %struct.mount*, %struct.mount** %3, align 8
  %20 = getelementptr inbounds %struct.mount, %struct.mount* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.mount*, %struct.mount** %3, align 8
  %24 = call i32 @MNT_IUNLOCK(%struct.mount* %23)
  %25 = load %struct.mount*, %struct.mount** %3, align 8
  %26 = call i32 @vfs_getnewfsid(%struct.mount* %25)
  %27 = load %struct.mount*, %struct.mount** %3, align 8
  %28 = getelementptr inbounds %struct.mount, %struct.mount* %27, i32 0, i32 1
  store %struct.statfs* %28, %struct.statfs** %4, align 8
  %29 = load %struct.mount*, %struct.mount** %3, align 8
  %30 = call i32 @vfs_mountedfrom(%struct.mount* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = load i8*, i8** @PAGE_SIZE, align 8
  %32 = load %struct.statfs*, %struct.statfs** %4, align 8
  %33 = getelementptr inbounds %struct.statfs, %struct.statfs* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @PAGE_SIZE, align 8
  %35 = load %struct.statfs*, %struct.statfs** %4, align 8
  %36 = getelementptr inbounds %struct.statfs, %struct.statfs* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load %struct.statfs*, %struct.statfs** %4, align 8
  %38 = getelementptr inbounds %struct.statfs, %struct.statfs* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.statfs*, %struct.statfs** %4, align 8
  %40 = getelementptr inbounds %struct.statfs, %struct.statfs* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.statfs*, %struct.statfs** %4, align 8
  %42 = getelementptr inbounds %struct.statfs, %struct.statfs* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.statfs*, %struct.statfs** %4, align 8
  %44 = getelementptr inbounds %struct.statfs, %struct.statfs* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.statfs*, %struct.statfs** %4, align 8
  %46 = getelementptr inbounds %struct.statfs, %struct.statfs* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %13, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @vfs_getnewfsid(%struct.mount*) #1

declare dso_local i32 @vfs_mountedfrom(%struct.mount*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
