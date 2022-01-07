; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_msg_prison_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_msg_prison_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i32 }
%struct.vfsoptlist = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"sysvmsg\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@msg_prison_slot = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @msg_prison_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_prison_check(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.prison*, align 8
  %7 = alloca %struct.prison*, align 8
  %8 = alloca %struct.vfsoptlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.prison*
  store %struct.prison* %12, %struct.prison** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.vfsoptlist*
  store %struct.vfsoptlist* %14, %struct.vfsoptlist** %8, align 8
  %15 = load %struct.vfsoptlist*, %struct.vfsoptlist** %8, align 8
  %16 = call i32 @vfs_copyopt(%struct.vfsoptlist* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %10, i32 4)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %51

25:                                               ; preds = %20
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %47 [
    i32 130, label %27
    i32 128, label %28
    i32 129, label %28
  ]

27:                                               ; preds = %25
  br label %49

28:                                               ; preds = %25, %25
  %29 = load %struct.prison*, %struct.prison** %6, align 8
  %30 = getelementptr inbounds %struct.prison, %struct.prison* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @prison_lock(i32 %31)
  %33 = load %struct.prison*, %struct.prison** %6, align 8
  %34 = getelementptr inbounds %struct.prison, %struct.prison* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @msg_prison_slot, align 4
  %37 = call %struct.prison* @osd_jail_get(i32 %35, i32 %36)
  store %struct.prison* %37, %struct.prison** %7, align 8
  %38 = load %struct.prison*, %struct.prison** %6, align 8
  %39 = getelementptr inbounds %struct.prison, %struct.prison* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @prison_unlock(i32 %40)
  %42 = load %struct.prison*, %struct.prison** %7, align 8
  %43 = icmp eq %struct.prison* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* @EPERM, align 4
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %28
  br label %49

47:                                               ; preds = %25
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %46, %27
  br label %50

50:                                               ; preds = %49, %2
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %47, %44, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @vfs_copyopt(%struct.vfsoptlist*, i8*, i32*, i32) #1

declare dso_local i32 @prison_lock(i32) #1

declare dso_local %struct.prison* @osd_jail_get(i32, i32) #1

declare dso_local i32 @prison_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
