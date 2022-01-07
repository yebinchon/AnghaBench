; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_fchownat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_fchownat.c"
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
@cap_fchown_rights = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_fchownat(%struct.thread* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nameidata, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %14, align 4
  %21 = call i32 @AUDIT_ARG_OWNER(i32 %19, i32 %20)
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i32, i32* @NOFOLLOW, align 4
  br label %30

28:                                               ; preds = %7
  %29 = load i32, i32* @FOLLOW, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* @AT_BENEATH, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @BENEATH, align 4
  br label %39

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = load i32, i32* %18, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* @LOOKUP, align 4
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* @AUDITVNODE1, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %12, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.thread*, %struct.thread** %9, align 8
  %51 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %16, i32 %43, i32 %46, i32 %47, i8* %48, i32 %49, i32* @cap_fchown_rights, %struct.thread* %50)
  %52 = call i32 @namei(%struct.nameidata* %16)
  store i32 %52, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* %17, align 4
  store i32 %55, i32* %8, align 4
  br label %72

56:                                               ; preds = %39
  %57 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %58 = call i32 @NDFREE(%struct.nameidata* %16, i32 %57)
  %59 = load %struct.thread*, %struct.thread** %9, align 8
  %60 = load %struct.thread*, %struct.thread** %9, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @setfown(%struct.thread* %59, i32 %62, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %17, align 4
  %68 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @vrele(i32 %69)
  %71 = load i32, i32* %17, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %56, %54
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32 @AUDIT_ARG_OWNER(i32, i32) #1

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @setfown(%struct.thread*, i32, i32, i32, i32) #1

declare dso_local i32 @vrele(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
