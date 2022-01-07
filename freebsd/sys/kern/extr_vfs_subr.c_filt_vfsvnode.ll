; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_filt_vfsvnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_filt_vfsvnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64, i64, i32, i64 }
%struct.vnode = type { i64 }

@NOTE_REVOKE = common dso_local global i64 0, align 8
@VBAD = common dso_local global i64 0, align 8
@EV_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @filt_vfsvnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_vfsvnode(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.knote*, %struct.knote** %4, align 8
  %9 = getelementptr inbounds %struct.knote, %struct.knote* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.vnode*
  store %struct.vnode* %11, %struct.vnode** %6, align 8
  %12 = load %struct.vnode*, %struct.vnode** %6, align 8
  %13 = call i32 @VI_LOCK(%struct.vnode* %12)
  %14 = load %struct.knote*, %struct.knote** %4, align 8
  %15 = getelementptr inbounds %struct.knote, %struct.knote* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.knote*, %struct.knote** %4, align 8
  %23 = getelementptr inbounds %struct.knote, %struct.knote* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = or i64 %24, %21
  store i64 %25, i64* %23, align 8
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @NOTE_REVOKE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.vnode*, %struct.vnode** %6, align 8
  %35 = getelementptr inbounds %struct.vnode, %struct.vnode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VBAD, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33, %26
  %40 = load i32, i32* @EV_EOF, align 4
  %41 = load %struct.knote*, %struct.knote** %4, align 8
  %42 = getelementptr inbounds %struct.knote, %struct.knote* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.vnode*, %struct.vnode** %6, align 8
  %46 = call i32 @VI_UNLOCK(%struct.vnode* %45)
  store i32 1, i32* %3, align 4
  br label %56

47:                                               ; preds = %33, %30
  %48 = load %struct.knote*, %struct.knote** %4, align 8
  %49 = getelementptr inbounds %struct.knote, %struct.knote* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load %struct.vnode*, %struct.vnode** %6, align 8
  %54 = call i32 @VI_UNLOCK(%struct.vnode* %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %47, %39
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
