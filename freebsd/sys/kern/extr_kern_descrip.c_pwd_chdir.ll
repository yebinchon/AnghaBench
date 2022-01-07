; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_pwd_chdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_pwd_chdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.filedesc* }
%struct.filedesc = type { %struct.vnode* }
%struct.vnode = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"chdir to a vnode with zero usecount\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwd_chdir(%struct.thread* %0, %struct.vnode* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.filedesc*, align 8
  %6 = alloca %struct.vnode*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  store %struct.filedesc* %11, %struct.filedesc** %5, align 8
  %12 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %13 = call i32 @FILEDESC_XLOCK(%struct.filedesc* %12)
  %14 = load %struct.vnode*, %struct.vnode** %4, align 8
  %15 = getelementptr inbounds %struct.vnode, %struct.vnode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = load %struct.vnode*, %struct.vnode** %4, align 8
  %20 = call i32 @VNASSERT(i32 %18, %struct.vnode* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %22 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %21, i32 0, i32 0
  %23 = load %struct.vnode*, %struct.vnode** %22, align 8
  store %struct.vnode* %23, %struct.vnode** %6, align 8
  %24 = load %struct.vnode*, %struct.vnode** %4, align 8
  %25 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %26 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %25, i32 0, i32 0
  store %struct.vnode* %24, %struct.vnode** %26, align 8
  %27 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %28 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %27)
  %29 = load %struct.vnode*, %struct.vnode** %6, align 8
  %30 = call i32 @vrele(%struct.vnode* %29)
  ret void
}

declare dso_local i32 @FILEDESC_XLOCK(%struct.filedesc*) #1

declare dso_local i32 @VNASSERT(i32, %struct.vnode*, i8*) #1

declare dso_local i32 @FILEDESC_XUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
