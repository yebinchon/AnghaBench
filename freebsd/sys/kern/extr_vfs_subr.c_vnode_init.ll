; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vnode_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vnode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, i32, i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"vnode interlock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"vnode\00", align 1
@VLKTIMEOUT = common dso_local global i32 0, align 4
@LK_NOSHARE = common dso_local global i32 0, align 4
@LK_IS_VNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @vnode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnode_init(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vnode*
  store %struct.vnode* %9, %struct.vnode** %7, align 8
  %10 = load %struct.vnode*, %struct.vnode** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @bzero(%struct.vnode* %10, i32 %11)
  %13 = load %struct.vnode*, %struct.vnode** %7, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 6
  %15 = load %struct.vnode*, %struct.vnode** %7, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 4
  store i32* %14, i32** %16, align 8
  %17 = load %struct.vnode*, %struct.vnode** %7, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 5
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = call i32 @mtx_init(i32* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %19)
  %21 = load %struct.vnode*, %struct.vnode** %7, align 8
  %22 = getelementptr inbounds %struct.vnode, %struct.vnode* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @PVFS, align 4
  %25 = load i32, i32* @VLKTIMEOUT, align 4
  %26 = load i32, i32* @LK_NOSHARE, align 4
  %27 = load i32, i32* @LK_IS_VNODE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @lockinit(i32* %23, i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.vnode*, %struct.vnode** %7, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 3
  %32 = load %struct.vnode*, %struct.vnode** %7, align 8
  %33 = call i32 @bufobj_init(i32* %31, %struct.vnode* %32)
  %34 = load %struct.vnode*, %struct.vnode** %7, align 8
  %35 = getelementptr inbounds %struct.vnode, %struct.vnode* %34, i32 0, i32 2
  %36 = call i32 @LIST_INIT(i32* %35)
  %37 = load %struct.vnode*, %struct.vnode** %7, align 8
  %38 = getelementptr inbounds %struct.vnode, %struct.vnode* %37, i32 0, i32 1
  %39 = call i32 @TAILQ_INIT(i32* %38)
  %40 = load %struct.vnode*, %struct.vnode** %7, align 8
  %41 = getelementptr inbounds %struct.vnode, %struct.vnode* %40, i32 0, i32 0
  %42 = call i32 @rangelock_init(i32* %41)
  ret i32 0
}

declare dso_local i32 @bzero(%struct.vnode*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @lockinit(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @bufobj_init(i32*, %struct.vnode*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @rangelock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
