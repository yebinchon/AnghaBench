; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_sys_mlockall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_sys_mlockall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.mlockall_args = type { i32 }

@PRIV_VM_MLOCK = common dso_local global i32 0, align 4
@MCL_CURRENT = common dso_local global i32 0, align 4
@MCL_FUTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@old_mlock = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAP_WIREFUTURE = common dso_local global i32 0, align 4
@VM_MAP_WIRE_USER = common dso_local global i32 0, align 4
@VM_MAP_WIRE_HOLESOK = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@RACCT_MEMLOCK = common dso_local global i32 0, align 4
@racct_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_mlockall(%struct.thread* %0, %struct.mlockall_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.mlockall_args*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.mlockall_args* %1, %struct.mlockall_args** %5, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %6, align 8
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  %15 = load i32, i32* @PRIV_VM_MLOCK, align 4
  %16 = call i32 @priv_check(%struct.thread* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %107

21:                                               ; preds = %2
  %22 = load %struct.mlockall_args*, %struct.mlockall_args** %5, align 8
  %23 = getelementptr inbounds %struct.mlockall_args, %struct.mlockall_args* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load %struct.mlockall_args*, %struct.mlockall_args** %5, align 8
  %28 = getelementptr inbounds %struct.mlockall_args, %struct.mlockall_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MCL_CURRENT, align 4
  %31 = load i32, i32* @MCL_FUTURE, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %29, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26, %21
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %107

38:                                               ; preds = %26
  %39 = load i32, i32* @old_mlock, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %38
  %42 = load %struct.mlockall_args*, %struct.mlockall_args** %5, align 8
  %43 = getelementptr inbounds %struct.mlockall_args, %struct.mlockall_args* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MCL_CURRENT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.thread*, %struct.thread** %4, align 8
  %53 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %54 = call i64 @lim_cur(%struct.thread* %52, i32 %53)
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @ENOMEM, align 4
  store i32 %57, i32* %3, align 4
  br label %107

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %41, %38
  %60 = load %struct.mlockall_args*, %struct.mlockall_args** %5, align 8
  %61 = getelementptr inbounds %struct.mlockall_args, %struct.mlockall_args* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MCL_FUTURE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = call i32 @vm_map_lock(%struct.TYPE_13__* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = load i32, i32* @MAP_WIREFUTURE, align 4
  %71 = call i32 @vm_map_modflags(%struct.TYPE_13__* %69, i32 %70, i32 0)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = call i32 @vm_map_unlock(%struct.TYPE_13__* %72)
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %66, %59
  %75 = load %struct.mlockall_args*, %struct.mlockall_args** %5, align 8
  %76 = getelementptr inbounds %struct.mlockall_args, %struct.mlockall_args* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MCL_CURRENT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %74
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = call i32 @vm_map_min(%struct.TYPE_13__* %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = call i32 @vm_map_max(%struct.TYPE_13__* %85)
  %87 = load i32, i32* @VM_MAP_WIRE_USER, align 4
  %88 = load i32, i32* @VM_MAP_WIRE_HOLESOK, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @vm_map_wire(%struct.TYPE_13__* %82, i32 %84, i32 %86, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @KERN_SUCCESS, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %104

95:                                               ; preds = %81
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @ENOMEM, align 4
  store i32 %100, i32* %7, align 4
  br label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @EAGAIN, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %101, %99
  br label %104

104:                                              ; preds = %103, %94
  br label %105

105:                                              ; preds = %104, %74
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %56, %36, %19
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i64 @lim_cur(%struct.thread*, i32) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_map_modflags(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_map_wire(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @vm_map_min(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_map_max(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
