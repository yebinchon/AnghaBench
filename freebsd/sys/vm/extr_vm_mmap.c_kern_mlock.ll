; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_mlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_mlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ucred = type { i32 }

@PRIV_VM_MLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vm_page_max_user_wired = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@VM_MAP_WIRE_USER = common dso_local global i32 0, align 4
@VM_MAP_WIRE_NOHOLES = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@RACCT_MEMLOCK = common dso_local global i32 0, align 4
@racct_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_mlock(%struct.proc* %0, %struct.ucred* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %6, align 8
  store %struct.ucred* %1, %struct.ucred** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.ucred*, %struct.ucred** %7, align 8
  %20 = load i32, i32* @PRIV_VM_MLOCK, align 4
  %21 = call i32 @priv_check_cred(%struct.ucred* %19, i32 %20)
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %18, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %18, align 4
  store i32 %25, i32* %5, align 4
  br label %96

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %15, align 8
  %31 = add nsw i64 %29, %30
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @trunc_page(i64 %32)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i64 @round_page(i64 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %26
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %26
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %5, align 4
  br label %96

45:                                               ; preds = %39
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %13, align 8
  %48 = sub nsw i64 %46, %47
  %49 = call i64 @atop(i64 %48)
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @vm_page_max_user_wired, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* %5, align 4
  br label %96

55:                                               ; preds = %45
  %56 = load %struct.proc*, %struct.proc** %6, align 8
  %57 = getelementptr inbounds %struct.proc, %struct.proc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %16, align 8
  %60 = load %struct.proc*, %struct.proc** %6, align 8
  %61 = call i32 @PROC_LOCK(%struct.proc* %60)
  %62 = load i64, i64* %14, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @pmap_wired_count(i32 %65)
  %67 = add nsw i64 %62, %66
  %68 = call i64 @ptoa(i64 %67)
  store i64 %68, i64* %17, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load %struct.proc*, %struct.proc** %6, align 8
  %71 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %72 = call i64 @lim_cur_proc(%struct.proc* %70, i32 %71)
  %73 = icmp ugt i64 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %55
  %75 = load %struct.proc*, %struct.proc** %6, align 8
  %76 = call i32 @PROC_UNLOCK(%struct.proc* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  store i32 %77, i32* %5, align 4
  br label %96

78:                                               ; preds = %55
  %79 = load %struct.proc*, %struct.proc** %6, align 8
  %80 = call i32 @PROC_UNLOCK(%struct.proc* %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i32, i32* @VM_MAP_WIRE_USER, align 4
  %85 = load i32, i32* @VM_MAP_WIRE_NOHOLES, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @vm_map_wire(%struct.TYPE_5__* %81, i64 %82, i64 %83, i32 %86)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* @KERN_SUCCESS, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %94

92:                                               ; preds = %78
  %93 = load i32, i32* @ENOMEM, align 4
  br label %94

94:                                               ; preds = %92, %91
  %95 = phi i32 [ 0, %91 ], [ %93, %92 ]
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %74, %53, %43, %24
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @atop(i64) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i64 @ptoa(i64) #1

declare dso_local i64 @pmap_wired_count(i32) #1

declare dso_local i64 @lim_cur_proc(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @vm_map_wire(%struct.TYPE_5__*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
