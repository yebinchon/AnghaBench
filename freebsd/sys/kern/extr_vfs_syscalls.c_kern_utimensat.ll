; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_utimensat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_utimensat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.timespec = type { i32 }
%struct.nameidata = type { i32 }

@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@AT_BENEATH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@BENEATH = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@cap_futimes_rights = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@UTIMENS_EXIT = common dso_local global i32 0, align 4
@UTIMENS_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_utimensat(%struct.thread* %0, i32 %1, i8* %2, i32 %3, %struct.timespec* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timespec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nameidata, align 4
  %17 = alloca [2 x %struct.timespec], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.timespec* %4, %struct.timespec** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %22 = load i32, i32* @AT_BENEATH, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %8, align 4
  br label %91

29:                                               ; preds = %7
  %30 = load %struct.timespec*, %struct.timespec** %13, align 8
  %31 = load i32, i32* %14, align 4
  %32 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %17, i64 0, i64 0
  %33 = call i32 @getutimens(%struct.timespec* %30, i32 %31, %struct.timespec* %32, i32* %19)
  store i32 %33, i32* %18, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %18, align 4
  store i32 %36, i32* %8, align 4
  br label %91

37:                                               ; preds = %29
  %38 = load i32, i32* @LOOKUP, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @NOFOLLOW, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @FOLLOW, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @AT_BENEATH, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @BENEATH, align 4
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = or i32 %48, %57
  %59 = load i32, i32* @AUDITVNODE1, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %12, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.thread*, %struct.thread** %9, align 8
  %65 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %16, i32 %38, i32 %60, i32 %61, i8* %62, i32 %63, i32* @cap_futimes_rights, %struct.thread* %64)
  %66 = call i32 @namei(%struct.nameidata* %16)
  store i32 %66, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i32, i32* %18, align 4
  store i32 %69, i32* %8, align 4
  br label %91

70:                                               ; preds = %56
  %71 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %72 = call i32 @NDFREE(%struct.nameidata* %16, i32 %71)
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* @UTIMENS_EXIT, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load %struct.thread*, %struct.thread** %9, align 8
  %79 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %17, i64 0, i64 0
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* @UTIMENS_NULL, align 4
  %84 = and i32 %82, %83
  %85 = call i32 @setutimes(%struct.thread* %78, i32 %80, %struct.timespec* %81, i32 2, i32 %84)
  store i32 %85, i32* %18, align 4
  br label %86

86:                                               ; preds = %77, %70
  %87 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @vrele(i32 %88)
  %90 = load i32, i32* %18, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %86, %68, %35, %27
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i32 @getutimens(%struct.timespec*, i32, %struct.timespec*, i32*) #1

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @setutimes(%struct.thread*, i32, %struct.timespec*, i32, i32) #1

declare dso_local i32 @vrele(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
