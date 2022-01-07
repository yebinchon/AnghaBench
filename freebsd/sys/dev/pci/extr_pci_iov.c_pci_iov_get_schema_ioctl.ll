; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_get_schema_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_get_schema_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.pci_devinfo* }
%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_iov_schema = type { i64, i64, i32 }

@Giant = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i64 0, align 8
@M_NVLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.pci_iov_schema*)* @pci_iov_get_schema_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_iov_get_schema_ioctl(%struct.cdev* %0, %struct.pci_iov_schema* %1) #0 {
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca %struct.pci_iov_schema*, align 8
  %5 = alloca %struct.pci_devinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  store %struct.pci_iov_schema* %1, %struct.pci_iov_schema** %4, align 8
  store i8* null, i8** %6, align 8
  %10 = call i32 @mtx_lock(i32* @Giant)
  %11 = load %struct.cdev*, %struct.cdev** %3, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load %struct.pci_devinfo*, %struct.pci_devinfo** %12, align 8
  store %struct.pci_devinfo* %13, %struct.pci_devinfo** %5, align 8
  %14 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %15 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @nvlist_pack(i32 %19, i64* %8)
  store i8* %20, i8** %6, align 8
  %21 = call i32 @mtx_unlock(i32* @Giant)
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %9, align 4
  br label %54

26:                                               ; preds = %2
  %27 = load %struct.pci_iov_schema*, %struct.pci_iov_schema** %4, align 8
  %28 = getelementptr inbounds %struct.pci_iov_schema, %struct.pci_iov_schema* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.pci_iov_schema*, %struct.pci_iov_schema** %4, align 8
  %32 = getelementptr inbounds %struct.pci_iov_schema, %struct.pci_iov_schema* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ule i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %26
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.pci_iov_schema*, %struct.pci_iov_schema** %4, align 8
  %39 = getelementptr inbounds %struct.pci_iov_schema, %struct.pci_iov_schema* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @copyout(i8* %37, i32 %40, i64 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %54

46:                                               ; preds = %36
  %47 = load %struct.pci_iov_schema*, %struct.pci_iov_schema** %4, align 8
  %48 = getelementptr inbounds %struct.pci_iov_schema, %struct.pci_iov_schema* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  br label %53

49:                                               ; preds = %26
  %50 = load i64, i64* @EMSGSIZE, align 8
  %51 = load %struct.pci_iov_schema*, %struct.pci_iov_schema** %4, align 8
  %52 = getelementptr inbounds %struct.pci_iov_schema, %struct.pci_iov_schema* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %46
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %45, %24
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* @M_NVLIST, align 4
  %57 = call i32 @free(i8* %55, i32 %56)
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i8* @nvlist_pack(i32, i64*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @copyout(i8*, i32, i64) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
