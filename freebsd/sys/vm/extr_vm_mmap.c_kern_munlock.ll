; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_munlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_munlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@PRIV_VM_MUNLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_MAP_WIRE_USER = common dso_local global i32 0, align 4
@VM_MAP_WIRE_NOHOLES = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RACCT_MEMLOCK = common dso_local global i32 0, align 4
@racct_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_munlock(%struct.thread* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.thread*, %struct.thread** %5, align 8
  %14 = load i32, i32* @PRIV_VM_MUNLOCK, align 4
  %15 = call i32 @priv_check(%struct.thread* %13, i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %4, align 4
  br label %59

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @trunc_page(i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @round_page(i64 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %20
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %20
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %4, align 4
  br label %59

38:                                               ; preds = %32
  %39 = load %struct.thread*, %struct.thread** %5, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* @VM_MAP_WIRE_USER, align 4
  %48 = load i32, i32* @VM_MAP_WIRE_NOHOLES, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @vm_map_unwire(%struct.TYPE_8__* %44, i64 %45, i64 %46, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @KERN_SUCCESS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  br label %57

55:                                               ; preds = %38
  %56 = load i32, i32* @ENOMEM, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ 0, %54 ], [ %56, %55 ]
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %36, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @vm_map_unwire(%struct.TYPE_8__*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
