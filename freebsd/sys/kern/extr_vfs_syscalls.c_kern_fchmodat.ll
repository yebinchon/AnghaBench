; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_fchmodat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_fchmodat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.nameidata = type { i32 }

@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@AT_BENEATH = common dso_local global i32 0, align 4
@BENEATH = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@cap_fchmod_rights = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_fchmodat(%struct.thread* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nameidata, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @AUDIT_ARG_MODE(i32 %17)
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @NOFOLLOW, align 4
  br label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @FOLLOW, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @AT_BENEATH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @BENEATH, align 4
  br label %36

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = load i32, i32* %16, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* @LOOKUP, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @AUDITVNODE1, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %11, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.thread*, %struct.thread** %8, align 8
  %48 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %14, i32 %40, i32 %43, i32 %44, i8* %45, i32 %46, i32* @cap_fchmod_rights, %struct.thread* %47)
  %49 = call i32 @namei(%struct.nameidata* %14)
  store i32 %49, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %7, align 4
  br label %68

53:                                               ; preds = %36
  %54 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %55 = call i32 @NDFREE(%struct.nameidata* %14, i32 %54)
  %56 = load %struct.thread*, %struct.thread** %8, align 8
  %57 = load %struct.thread*, %struct.thread** %8, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @setfmode(%struct.thread* %56, i32 %59, i32 %61, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @vrele(i32 %65)
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %53, %51
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @AUDIT_ARG_MODE(i32) #1

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @setfmode(%struct.thread*, i32, i32, i32) #1

declare dso_local i32 @vrele(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
