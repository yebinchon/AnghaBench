; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c__fgetvp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c__fgetvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.file = type { %struct.vnode* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i32, i32*, %struct.vnode**)* @_fgetvp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fgetvp(%struct.thread* %0, i32 %1, i32 %2, i32* %3, %struct.vnode** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.vnode**, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.vnode** %4, %struct.vnode*** %11, align 8
  %14 = load %struct.vnode**, %struct.vnode*** %11, align 8
  store %struct.vnode* null, %struct.vnode** %14, align 8
  %15 = load %struct.thread*, %struct.thread** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @_fget(%struct.thread* %15, i32 %16, %struct.file** %12, i32 %17, i32* %18, i32* null)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %44

24:                                               ; preds = %5
  %25 = load %struct.file*, %struct.file** %12, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load %struct.vnode*, %struct.vnode** %26, align 8
  %28 = icmp eq %struct.vnode* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %13, align 4
  br label %39

31:                                               ; preds = %24
  %32 = load %struct.file*, %struct.file** %12, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = load %struct.vnode*, %struct.vnode** %33, align 8
  %35 = load %struct.vnode**, %struct.vnode*** %11, align 8
  store %struct.vnode* %34, %struct.vnode** %35, align 8
  %36 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %37 = load %struct.vnode*, %struct.vnode** %36, align 8
  %38 = call i32 @vrefact(%struct.vnode* %37)
  br label %39

39:                                               ; preds = %31, %29
  %40 = load %struct.file*, %struct.file** %12, align 8
  %41 = load %struct.thread*, %struct.thread** %7, align 8
  %42 = call i32 @fdrop(%struct.file* %40, %struct.thread* %41)
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %39, %22
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @_fget(%struct.thread*, i32, %struct.file**, i32, i32*, i32*) #1

declare dso_local i32 @vrefact(%struct.vnode*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
