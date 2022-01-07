; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_fill_kinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_fill_kinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.kinfo_file = type { i32 }
%struct.filedesc = type { i32 }

@DTYPE_FIFO = common dso_local global i64 0, align 8
@KF_TYPE_FIFO = common dso_local global i32 0, align 4
@KF_TYPE_VNODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_fill_kinfo(%struct.file* %0, %struct.kinfo_file* %1, %struct.filedesc* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kinfo_file*, align 8
  %6 = alloca %struct.filedesc*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.kinfo_file* %1, %struct.kinfo_file** %5, align 8
  store %struct.filedesc* %2, %struct.filedesc** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DTYPE_FIFO, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @KF_TYPE_FIFO, align 4
  %16 = load %struct.kinfo_file*, %struct.kinfo_file** %5, align 8
  %17 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @KF_TYPE_VNODE, align 4
  %20 = load %struct.kinfo_file*, %struct.kinfo_file** %5, align 8
  %21 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 1
  %25 = load %struct.vnode*, %struct.vnode** %24, align 8
  store %struct.vnode* %25, %struct.vnode** %7, align 8
  %26 = load %struct.vnode*, %struct.vnode** %7, align 8
  %27 = call i32 @vref(%struct.vnode* %26)
  %28 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %29 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %28)
  %30 = load %struct.vnode*, %struct.vnode** %7, align 8
  %31 = load %struct.kinfo_file*, %struct.kinfo_file** %5, align 8
  %32 = call i32 @vn_fill_kinfo_vnode(%struct.vnode* %30, %struct.kinfo_file* %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.vnode*, %struct.vnode** %7, align 8
  %34 = call i32 @vrele(%struct.vnode* %33)
  %35 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %36 = call i32 @FILEDESC_SLOCK(%struct.filedesc* %35)
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local i32 @vref(%struct.vnode*) #1

declare dso_local i32 @FILEDESC_SUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @vn_fill_kinfo_vnode(%struct.vnode*, %struct.kinfo_file*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @FILEDESC_SLOCK(%struct.filedesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
