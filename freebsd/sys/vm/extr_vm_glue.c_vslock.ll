; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_glue.c_vslock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_glue.c_vslock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@vm_page_max_user_wired = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.TYPE_6__* null, align 8
@VM_MAP_WIRE_SYSTEM = common dso_local global i32 0, align 4
@VM_MAP_WIRE_NOHOLES = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_5__* null, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vslock(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load i64, i64* %5, align 8
  %14 = add i64 %12, %13
  store i64 %14, i64* %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = call i64 @trunc_page(i64 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @round_page(i64 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* %6, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %2
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %3, align 4
  br label %63

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = sub nsw i64 %32, %33
  %35 = call i64 @atop(i64 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @vm_page_max_user_wired, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %31
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curproc, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* @VM_MAP_WIRE_SYSTEM, align 4
  %49 = load i32, i32* @VM_MAP_WIRE_NOHOLES, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @vm_map_wire(i32* %45, i64 %46, i64 %47, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @KERN_SUCCESS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %41
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curthread, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, %56
  store i64 %60, i64* %58, align 8
  store i32 0, i32* %3, align 4
  br label %63

61:                                               ; preds = %41
  %62 = load i32, i32* @EFAULT, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %55, %39, %29
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @atop(i64) #1

declare dso_local i32 @vm_map_wire(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
