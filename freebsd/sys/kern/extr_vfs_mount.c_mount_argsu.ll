; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_mount_argsu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_mount_argsu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntarg = type { i32, i32 }
%struct.mntaarg = type { i32 }

@M_MOUNT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mntarg* @mount_argsu(%struct.mntarg* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.mntarg*, align 8
  %6 = alloca %struct.mntarg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mntaarg*, align 8
  %11 = alloca i8*, align 8
  store %struct.mntarg* %0, %struct.mntarg** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  store %struct.mntarg* %15, %struct.mntarg** %5, align 8
  br label %65

16:                                               ; preds = %4
  %17 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %18 = icmp eq %struct.mntarg* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, i32* @M_MOUNT, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @malloc(i32 8, i32 %20, i32 %23)
  %25 = bitcast i8* %24 to %struct.mntarg*
  store %struct.mntarg* %25, %struct.mntarg** %6, align 8
  %26 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %27 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %26, i32 0, i32 1
  %28 = call i32 @SLIST_INIT(i32* %27)
  br label %29

29:                                               ; preds = %19, %16
  %30 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %31 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  store %struct.mntarg* %35, %struct.mntarg** %5, align 8
  br label %65

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @M_MOUNT, align 4
  %42 = load i32, i32* @M_WAITOK, align 4
  %43 = load i32, i32* @M_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = call i8* @malloc(i32 %40, i32 %41, i32 %44)
  %46 = bitcast i8* %45 to %struct.mntaarg*
  store %struct.mntaarg* %46, %struct.mntaarg** %10, align 8
  %47 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %48 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %47, i32 0, i32 1
  %49 = load %struct.mntaarg*, %struct.mntaarg** %10, align 8
  %50 = load i32, i32* @next, align 4
  %51 = call i32 @SLIST_INSERT_HEAD(i32* %48, %struct.mntaarg* %49, i32 %50)
  %52 = load %struct.mntaarg*, %struct.mntaarg** %10, align 8
  %53 = getelementptr inbounds %struct.mntaarg, %struct.mntaarg* %52, i64 1
  %54 = bitcast %struct.mntaarg* %53 to i8*
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @copyinstr(i8* %55, i8* %56, i32 %57, i32* null)
  %59 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %60 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call %struct.mntarg* @mount_arg(%struct.mntarg* %61, i8* %62, i8* %63, i32 -1)
  store %struct.mntarg* %64, %struct.mntarg** %5, align 8
  br label %65

65:                                               ; preds = %36, %34, %14
  %66 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  ret %struct.mntarg* %66
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.mntaarg*, i32) #1

declare dso_local i32 @copyinstr(i8*, i8*, i32, i32*) #1

declare dso_local %struct.mntarg* @mount_arg(%struct.mntarg*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
