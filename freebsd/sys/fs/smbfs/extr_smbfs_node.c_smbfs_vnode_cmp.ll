; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_node.c_smbfs_vnode_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_node.c_smbfs_vnode_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.smbnode = type { i64, i64, i32 }
%struct.smbcmp = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i8*)* @smbfs_vnode_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_vnode_cmp(%struct.vnode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.smbnode*, align 8
  %7 = alloca %struct.smbcmp*, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.vnode*, %struct.vnode** %4, align 8
  %9 = getelementptr inbounds %struct.vnode, %struct.vnode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.smbnode*
  store %struct.smbnode* %11, %struct.smbnode** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.smbcmp*
  store %struct.smbcmp* %13, %struct.smbcmp** %7, align 8
  %14 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %15 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.smbcmp*, %struct.smbcmp** %7, align 8
  %18 = getelementptr inbounds %struct.smbcmp, %struct.smbcmp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %41, label %21

21:                                               ; preds = %2
  %22 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %23 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.smbcmp*, %struct.smbcmp** %7, align 8
  %26 = getelementptr inbounds %struct.smbcmp, %struct.smbcmp* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %21
  %30 = load %struct.smbcmp*, %struct.smbcmp** %7, align 8
  %31 = getelementptr inbounds %struct.smbcmp, %struct.smbcmp* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %34 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.smbcmp*, %struct.smbcmp** %7, align 8
  %37 = getelementptr inbounds %struct.smbcmp, %struct.smbcmp* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @bcmp(i32 %32, i32 %35, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29, %21, %2
  store i32 1, i32* %3, align 4
  br label %43

42:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @bcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
