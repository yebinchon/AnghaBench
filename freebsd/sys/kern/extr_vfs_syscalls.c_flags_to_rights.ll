; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_flags_to_rights.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_flags_to_rights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_EXEC = common dso_local global i32 0, align 4
@CAP_FEXECVE = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@CAP_SEEK = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@CAP_CREATE = common dso_local global i32 0, align 4
@CAP_FTRUNCATE = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@O_FSYNC = common dso_local global i32 0, align 4
@CAP_FSYNC = common dso_local global i32 0, align 4
@O_EXLOCK = common dso_local global i32 0, align 4
@O_SHLOCK = common dso_local global i32 0, align 4
@CAP_FLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @flags_to_rights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flags_to_rights(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @O_EXEC, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @CAP_FEXECVE, align 4
  %12 = call i32 @cap_rights_set(i32* %10, i32 %11)
  br label %41

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @O_ACCMODE, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %40 [
    i32 130, label %17
    i32 129, label %21
    i32 128, label %25
  ]

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @CAP_READ, align 4
  %20 = call i32 @cap_rights_set(i32* %18, i32 %19)
  br label %40

21:                                               ; preds = %13
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @CAP_READ, align 4
  %24 = call i32 @cap_rights_set(i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %13, %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @CAP_WRITE, align 4
  %28 = call i32 @cap_rights_set(i32* %26, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @O_APPEND, align 4
  %31 = load i32, i32* @O_TRUNC, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @CAP_SEEK, align 4
  %38 = call i32 @cap_rights_set(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %25
  br label %40

40:                                               ; preds = %13, %39, %17
  br label %41

41:                                               ; preds = %40, %9
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @O_CREAT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @CAP_CREATE, align 4
  %49 = call i32 @cap_rights_set(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @O_TRUNC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* @CAP_FTRUNCATE, align 4
  %58 = call i32 @cap_rights_set(i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @O_SYNC, align 4
  %62 = load i32, i32* @O_FSYNC, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @CAP_FSYNC, align 4
  %69 = call i32 @cap_rights_set(i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %59
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @O_EXLOCK, align 4
  %73 = load i32, i32* @O_SHLOCK, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @CAP_FLOCK, align 4
  %80 = call i32 @cap_rights_set(i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %70
  ret void
}

declare dso_local i32 @cap_rights_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
