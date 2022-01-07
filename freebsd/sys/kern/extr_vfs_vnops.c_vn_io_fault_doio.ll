; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_io_fault_doio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_io_fault_doio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vn_io_fault_args = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, %struct.uio*, i32, i32, %struct.thread*)*, i32 }
%struct.uio = type opaque
%struct.thread = type opaque
%struct.uio.0 = type { i32 }
%struct.thread.1 = type { i32 }

@UIO_READ = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"vn_io_fault_doio: unknown kind of io %d %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vn_io_fault_args*, %struct.uio.0*, %struct.thread.1*)* @vn_io_fault_doio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_io_fault_doio(%struct.vn_io_fault_args* %0, %struct.uio.0* %1, %struct.thread.1* %2) #0 {
  %4 = alloca %struct.vn_io_fault_args*, align 8
  %5 = alloca %struct.uio.0*, align 8
  %6 = alloca %struct.thread.1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vn_io_fault_args* %0, %struct.vn_io_fault_args** %4, align 8
  store %struct.uio.0* %1, %struct.uio.0** %5, align 8
  store %struct.thread.1* %2, %struct.thread.1** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32 (...) @vm_fault_disable_pagefaults()
  store i32 %9, i32* %8, align 4
  %10 = load %struct.vn_io_fault_args*, %struct.vn_io_fault_args** %4, align 8
  %11 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %77 [
    i32 129, label %13
    i32 128, label %35
  ]

13:                                               ; preds = %3
  %14 = load %struct.vn_io_fault_args*, %struct.vn_io_fault_args** %4, align 8
  %15 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (i32, %struct.uio*, i32, i32, %struct.thread*)*, i32 (i32, %struct.uio*, i32, i32, %struct.thread*)** %17, align 8
  %19 = load %struct.vn_io_fault_args*, %struct.vn_io_fault_args** %4, align 8
  %20 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.uio.0*, %struct.uio.0** %5, align 8
  %25 = bitcast %struct.uio.0* %24 to %struct.uio*
  %26 = load %struct.vn_io_fault_args*, %struct.vn_io_fault_args** %4, align 8
  %27 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vn_io_fault_args*, %struct.vn_io_fault_args** %4, align 8
  %30 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.thread.1*, %struct.thread.1** %6, align 8
  %33 = bitcast %struct.thread.1* %32 to %struct.thread*
  %34 = call i32 %18(i32 %23, %struct.uio* %25, i32 %28, i32 %31, %struct.thread* %33)
  store i32 %34, i32* %7, align 4
  br label %85

35:                                               ; preds = %3
  %36 = load %struct.uio.0*, %struct.uio.0** %5, align 8
  %37 = getelementptr inbounds %struct.uio.0, %struct.uio.0* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @UIO_READ, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.vn_io_fault_args*, %struct.vn_io_fault_args** %4, align 8
  %43 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.uio.0*, %struct.uio.0** %5, align 8
  %48 = load %struct.vn_io_fault_args*, %struct.vn_io_fault_args** %4, align 8
  %49 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.vn_io_fault_args*, %struct.vn_io_fault_args** %4, align 8
  %52 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @VOP_READ(i32 %46, %struct.uio.0* %47, i32 %50, i32 %53)
  store i32 %54, i32* %7, align 4
  br label %76

55:                                               ; preds = %35
  %56 = load %struct.uio.0*, %struct.uio.0** %5, align 8
  %57 = getelementptr inbounds %struct.uio.0, %struct.uio.0* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @UIO_WRITE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load %struct.vn_io_fault_args*, %struct.vn_io_fault_args** %4, align 8
  %63 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.uio.0*, %struct.uio.0** %5, align 8
  %68 = load %struct.vn_io_fault_args*, %struct.vn_io_fault_args** %4, align 8
  %69 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.vn_io_fault_args*, %struct.vn_io_fault_args** %4, align 8
  %72 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @VOP_WRITE(i32 %66, %struct.uio.0* %67, i32 %70, i32 %73)
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %61, %55
  br label %76

76:                                               ; preds = %75, %41
  br label %85

77:                                               ; preds = %3
  %78 = load %struct.vn_io_fault_args*, %struct.vn_io_fault_args** %4, align 8
  %79 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.uio.0*, %struct.uio.0** %5, align 8
  %82 = getelementptr inbounds %struct.uio.0, %struct.uio.0* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %77, %76, %13
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @vm_fault_enable_pagefaults(i32 %86)
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @vm_fault_disable_pagefaults(...) #1

declare dso_local i32 @VOP_READ(i32, %struct.uio.0*, i32, i32) #1

declare dso_local i32 @VOP_WRITE(i32, %struct.uio.0*, i32, i32) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @vm_fault_enable_pagefaults(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
