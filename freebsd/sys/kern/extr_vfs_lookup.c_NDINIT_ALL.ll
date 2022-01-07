; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_lookup.c_NDINIT_ALL.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_lookup.c_NDINIT_ALL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, i8*, i32, i32, %struct.TYPE_2__, i32, i64, %struct.vnode* }
%struct.TYPE_2__ = type { %struct.thread*, i8*, i8* }
%struct.vnode = type { i32 }
%struct.thread = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NDINIT_ALL(%struct.nameidata* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5, %struct.vnode* %6, i32* %7, %struct.thread* %8) #0 {
  %10 = alloca %struct.nameidata*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.thread*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.vnode* %6, %struct.vnode** %16, align 8
  store i32* %7, i32** %17, align 8
  store %struct.thread* %8, %struct.thread** %18, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %21 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i8* %19, i8** %22, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %25 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %29 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %32 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.vnode*, %struct.vnode** %16, align 8
  %37 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %38 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %37, i32 0, i32 7
  store %struct.vnode* %36, %struct.vnode** %38, align 8
  %39 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %40 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %42 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %41, i32 0, i32 5
  %43 = call i32 @filecaps_init(i32* %42)
  %44 = load %struct.thread*, %struct.thread** %18, align 8
  %45 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %46 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.thread* %44, %struct.thread** %47, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %9
  %51 = load i32*, i32** %17, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %54 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  br label %59

55:                                               ; preds = %9
  %56 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %57 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %56, i32 0, i32 3
  %58 = call i32 @cap_rights_init(i32* %57)
  br label %59

59:                                               ; preds = %55, %50
  ret void
}

declare dso_local i32 @filecaps_init(i32*) #1

declare dso_local i32 @cap_rights_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
