; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_pwd_chroot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_pwd_chroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.filedesc* }
%struct.filedesc = type { i64, %struct.vnode* }
%struct.vnode = type { i32 }

@chroot_allow_open_directories = common dso_local global i32 0, align 4
@rootvnode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwd_chroot(%struct.thread* %0, %struct.vnode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.filedesc*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.vnode* %1, %struct.vnode** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.filedesc*, %struct.filedesc** %12, align 8
  store %struct.filedesc* %13, %struct.filedesc** %6, align 8
  %14 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %15 = call i32 @FILEDESC_XLOCK(%struct.filedesc* %14)
  %16 = load i32, i32* @chroot_allow_open_directories, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @chroot_allow_open_directories, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %23 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @rootvnode, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21, %2
  %28 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %29 = call i32 @chroot_refuse_vdir_fds(%struct.filedesc* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %34 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %21, %18
  %38 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %39 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.vnode*
  store %struct.vnode* %41, %struct.vnode** %7, align 8
  %42 = load %struct.vnode*, %struct.vnode** %5, align 8
  %43 = call i32 @vrefact(%struct.vnode* %42)
  %44 = load %struct.vnode*, %struct.vnode** %5, align 8
  %45 = ptrtoint %struct.vnode* %44 to i64
  %46 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %47 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %49 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %48, i32 0, i32 1
  %50 = load %struct.vnode*, %struct.vnode** %49, align 8
  %51 = icmp eq %struct.vnode* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %37
  %53 = load %struct.vnode*, %struct.vnode** %5, align 8
  %54 = call i32 @vrefact(%struct.vnode* %53)
  %55 = load %struct.vnode*, %struct.vnode** %5, align 8
  %56 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %57 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %56, i32 0, i32 1
  store %struct.vnode* %55, %struct.vnode** %57, align 8
  br label %58

58:                                               ; preds = %52, %37
  %59 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %60 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %59)
  %61 = load %struct.vnode*, %struct.vnode** %7, align 8
  %62 = call i32 @vrele(%struct.vnode* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %32
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @FILEDESC_XLOCK(%struct.filedesc*) #1

declare dso_local i32 @chroot_refuse_vdir_fds(%struct.filedesc*) #1

declare dso_local i32 @FILEDESC_XUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @vrefact(%struct.vnode*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
