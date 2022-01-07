; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_sem_prison_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_sem_prison_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i32 }
%struct.vfsoptlist = type { i32 }

@sem_prison_slot = common dso_local global i32 0, align 4
@JAIL_SYS_DISABLE = common dso_local global i32 0, align 4
@JAIL_SYS_NEW = common dso_local global i32 0, align 4
@JAIL_SYS_INHERIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sysvsem\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sem_prison_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sem_prison_get(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.prison*, align 8
  %6 = alloca %struct.prison*, align 8
  %7 = alloca %struct.vfsoptlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.prison*
  store %struct.prison* %11, %struct.prison** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.vfsoptlist*
  store %struct.vfsoptlist* %13, %struct.vfsoptlist** %7, align 8
  %14 = load %struct.prison*, %struct.prison** %5, align 8
  %15 = call i32 @prison_lock(%struct.prison* %14)
  %16 = load %struct.prison*, %struct.prison** %5, align 8
  %17 = load i32, i32* @sem_prison_slot, align 4
  %18 = call %struct.prison* @osd_jail_get(%struct.prison* %16, i32 %17)
  store %struct.prison* %18, %struct.prison** %6, align 8
  %19 = load %struct.prison*, %struct.prison** %5, align 8
  %20 = call i32 @prison_unlock(%struct.prison* %19)
  %21 = load %struct.prison*, %struct.prison** %6, align 8
  %22 = icmp eq %struct.prison* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @JAIL_SYS_DISABLE, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.prison*, %struct.prison** %6, align 8
  %27 = load %struct.prison*, %struct.prison** %5, align 8
  %28 = icmp eq %struct.prison* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @JAIL_SYS_NEW, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @JAIL_SYS_INHERIT, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  br label %35

35:                                               ; preds = %33, %23
  %36 = phi i32 [ %24, %23 ], [ %34, %33 ]
  store i32 %36, i32* %9, align 4
  %37 = load %struct.vfsoptlist*, %struct.vfsoptlist** %7, align 8
  %38 = call i32 @vfs_setopt(%struct.vfsoptlist* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %9, i32 4)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ENOENT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @prison_lock(%struct.prison*) #1

declare dso_local %struct.prison* @osd_jail_get(%struct.prison*, i32) #1

declare dso_local i32 @prison_unlock(%struct.prison*) #1

declare dso_local i32 @vfs_setopt(%struct.vfsoptlist*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
