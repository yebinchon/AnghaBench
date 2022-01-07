; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_fp_getfvp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_fp_getfvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.filedesc* }
%struct.filedesc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.file* }
%struct.file = type { i32 }
%struct.vnode = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, %struct.file**, %struct.vnode**)* @fp_getfvp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fp_getfvp(%struct.thread* %0, i32 %1, %struct.file** %2, %struct.vnode** %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file**, align 8
  %8 = alloca %struct.vnode**, align 8
  %9 = alloca %struct.filedesc*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file** %2, %struct.file*** %7, align 8
  store %struct.vnode** %3, %struct.vnode*** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.thread*, %struct.thread** %5, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.filedesc*, %struct.filedesc** %15, align 8
  store %struct.filedesc* %16, %struct.filedesc** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %22 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %27 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.file*, %struct.file** %32, align 8
  store %struct.file* %33, %struct.file** %10, align 8
  %34 = icmp eq %struct.file* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %25, %19, %4
  %36 = load i32, i32* @EBADF, align 4
  store i32 %36, i32* %11, align 4
  br label %40

37:                                               ; preds = %25
  %38 = load %struct.file*, %struct.file** %10, align 8
  %39 = load %struct.file**, %struct.file*** %7, align 8
  store %struct.file* %38, %struct.file** %39, align 8
  br label %40

40:                                               ; preds = %37, %35
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @NFSEXITCODE(i32 %41)
  %43 = load i32, i32* %11, align 4
  ret i32 %43
}

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
