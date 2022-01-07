; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_sys_flock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_sys_flock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.flock_args = type { i32, i32 }
%struct.file = type { i64, i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.flock = type { i32, i64, i64, i32 }

@cap_flock_rights = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@LOCK_UN = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@FHASLOCK = common dso_local global i32 0, align 4
@F_FLOCK = common dso_local global i32 0, align 4
@LOCK_EX = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@LOCK_SH = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@LOCK_NB = common dso_local global i32 0, align 4
@F_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_flock(%struct.thread* %0, %struct.flock_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.flock_args*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.flock, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.flock_args* %1, %struct.flock_args** %5, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = load %struct.flock_args*, %struct.flock_args** %5, align 8
  %12 = getelementptr inbounds %struct.flock_args, %struct.flock_args* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @fget(%struct.thread* %10, i32 %13, i32* @cap_flock_rights, %struct.file** %6)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %109

19:                                               ; preds = %2
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DTYPE_VNODE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = load %struct.thread*, %struct.thread** %4, align 8
  %28 = call i32 @fdrop(%struct.file* %26, %struct.thread* %27)
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %29, i32* %3, align 4
  br label %109

30:                                               ; preds = %19
  %31 = load %struct.file*, %struct.file** %6, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 2
  %33 = load %struct.vnode*, %struct.vnode** %32, align 8
  store %struct.vnode* %33, %struct.vnode** %7, align 8
  %34 = load i32, i32* @SEEK_SET, align 4
  %35 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.flock_args*, %struct.flock_args** %5, align 8
  %39 = getelementptr inbounds %struct.flock_args, %struct.flock_args* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @LOCK_UN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %30
  %45 = load i32, i32* @F_UNLCK, align 4
  %46 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load %struct.file*, %struct.file** %6, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 1
  %49 = load i32, i32* @FHASLOCK, align 4
  %50 = call i32 @atomic_clear_int(i32* %48, i32 %49)
  %51 = load %struct.vnode*, %struct.vnode** %7, align 8
  %52 = load %struct.file*, %struct.file** %6, align 8
  %53 = ptrtoint %struct.file* %52 to i32
  %54 = load i32, i32* @F_UNLCK, align 4
  %55 = load i32, i32* @F_FLOCK, align 4
  %56 = call i32 @VOP_ADVLOCK(%struct.vnode* %51, i32 %53, i32 %54, %struct.flock* %8, i32 %55)
  store i32 %56, i32* %9, align 4
  br label %104

57:                                               ; preds = %30
  %58 = load %struct.flock_args*, %struct.flock_args** %5, align 8
  %59 = getelementptr inbounds %struct.flock_args, %struct.flock_args* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @LOCK_EX, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @F_WRLCK, align 4
  %66 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  br label %80

67:                                               ; preds = %57
  %68 = load %struct.flock_args*, %struct.flock_args** %5, align 8
  %69 = getelementptr inbounds %struct.flock_args, %struct.flock_args* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @LOCK_SH, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* @F_RDLCK, align 4
  %76 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  br label %79

77:                                               ; preds = %67
  %78 = load i32, i32* @EBADF, align 4
  store i32 %78, i32* %9, align 4
  br label %104

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %64
  %81 = load %struct.file*, %struct.file** %6, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 1
  %83 = load i32, i32* @FHASLOCK, align 4
  %84 = call i32 @atomic_set_int(i32* %82, i32 %83)
  %85 = load %struct.vnode*, %struct.vnode** %7, align 8
  %86 = load %struct.file*, %struct.file** %6, align 8
  %87 = ptrtoint %struct.file* %86 to i32
  %88 = load i32, i32* @F_SETLK, align 4
  %89 = load %struct.flock_args*, %struct.flock_args** %5, align 8
  %90 = getelementptr inbounds %struct.flock_args, %struct.flock_args* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @LOCK_NB, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %80
  %96 = load i32, i32* @F_FLOCK, align 4
  br label %101

97:                                               ; preds = %80
  %98 = load i32, i32* @F_FLOCK, align 4
  %99 = load i32, i32* @F_WAIT, align 4
  %100 = or i32 %98, %99
  br label %101

101:                                              ; preds = %97, %95
  %102 = phi i32 [ %96, %95 ], [ %100, %97 ]
  %103 = call i32 @VOP_ADVLOCK(%struct.vnode* %85, i32 %87, i32 %88, %struct.flock* %8, i32 %102)
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %101, %77, %44
  %105 = load %struct.file*, %struct.file** %6, align 8
  %106 = load %struct.thread*, %struct.thread** %4, align 8
  %107 = call i32 @fdrop(%struct.file* %105, %struct.thread* %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %104, %25, %17
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @atomic_clear_int(i32*, i32) #1

declare dso_local i32 @VOP_ADVLOCK(%struct.vnode*, i32, i32, %struct.flock*, i32) #1

declare dso_local i32 @atomic_set_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
