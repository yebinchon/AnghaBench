; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_kern_preadv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_kern_preadv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.uio = type { i32 }
%struct.file = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@cap_pread_rights = common dso_local global i32 0, align 4
@DFLAG_SEEKABLE = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FOF_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_preadv(%struct.thread* %0, i32 %1, %struct.uio* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.uio* %2, %struct.uio** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.thread*, %struct.thread** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @fget_read(%struct.thread* %12, i32 %13, i32* @cap_pread_rights, %struct.file** %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %62

19:                                               ; preds = %4
  %20 = load %struct.file*, %struct.file** %10, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DFLAG_SEEKABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @ESPIPE, align 4
  store i32 %29, i32* %11, align 4
  br label %57

30:                                               ; preds = %19
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.file*, %struct.file** %10, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp eq %struct.TYPE_3__* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = load %struct.file*, %struct.file** %10, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VCHR, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38, %33
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %11, align 4
  br label %56

48:                                               ; preds = %38, %30
  %49 = load %struct.thread*, %struct.thread** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.file*, %struct.file** %10, align 8
  %52 = load %struct.uio*, %struct.uio** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @FOF_OFFSET, align 4
  %55 = call i32 @dofileread(%struct.thread* %49, i32 %50, %struct.file* %51, %struct.uio* %52, i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %48, %46
  br label %57

57:                                               ; preds = %56, %28
  %58 = load %struct.file*, %struct.file** %10, align 8
  %59 = load %struct.thread*, %struct.thread** %6, align 8
  %60 = call i32 @fdrop(%struct.file* %58, %struct.thread* %59)
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %57, %17
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @fget_read(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @dofileread(%struct.thread*, i32, %struct.file*, %struct.uio*, i32, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
