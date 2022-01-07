; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_io_fault_prefault_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_io_fault_prefault_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i64, i64, i32, %struct.iovec* }
%struct.iovec = type { i8*, i64 }

@UIO_USERSPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"vn_io_fault_prefault userspace\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uio*)* @vn_io_fault_prefault_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_io_fault_prefault_user(%struct.uio* %0) #0 {
  %2 = alloca %struct.uio*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iovec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uio* %0, %struct.uio** %2, align 8
  %9 = load %struct.uio*, %struct.uio** %2, align 8
  %10 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @UIO_USERSPACE, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.uio*, %struct.uio** %2, align 8
  %17 = getelementptr inbounds %struct.uio, %struct.uio* %16, i32 0, i32 3
  %18 = load %struct.iovec*, %struct.iovec** %17, align 8
  store %struct.iovec* %18, %struct.iovec** %4, align 8
  %19 = load %struct.uio*, %struct.uio** %2, align 8
  %20 = getelementptr inbounds %struct.uio, %struct.uio* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.iovec*, %struct.iovec** %4, align 8
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %3, align 8
  %25 = load %struct.iovec*, %struct.iovec** %4, align 8
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %90, %1
  %29 = load i64, i64* %6, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %91

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = load %struct.uio*, %struct.uio** %2, align 8
  %34 = call i32 @vn_io_fault_touch(i8* %32, %struct.uio* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %91

38:                                               ; preds = %31
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @PAGE_SIZE, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load i8*, i8** %3, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = getelementptr inbounds i8, i8* %48, i64 -1
  %50 = load %struct.uio*, %struct.uio** %2, align 8
  %51 = call i32 @vn_io_fault_touch(i8* %49, %struct.uio* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %91

55:                                               ; preds = %45
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %55, %42
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = load %struct.uio*, %struct.uio** %2, align 8
  %63 = getelementptr inbounds %struct.uio, %struct.uio* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %91

67:                                               ; preds = %59
  %68 = load %struct.uio*, %struct.uio** %2, align 8
  %69 = getelementptr inbounds %struct.uio, %struct.uio* %68, i32 0, i32 3
  %70 = load %struct.iovec*, %struct.iovec** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.iovec, %struct.iovec* %70, i64 %72
  store %struct.iovec* %73, %struct.iovec** %4, align 8
  %74 = load %struct.iovec*, %struct.iovec** %4, align 8
  %75 = getelementptr inbounds %struct.iovec, %struct.iovec* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %3, align 8
  %77 = load %struct.iovec*, %struct.iovec** %4, align 8
  %78 = getelementptr inbounds %struct.iovec, %struct.iovec* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %5, align 8
  br label %90

80:                                               ; preds = %38
  %81 = load i64, i64* @PAGE_SIZE, align 8
  %82 = load i64, i64* %5, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 %84
  store i8* %86, i8** %3, align 8
  %87 = load i64, i64* @PAGE_SIZE, align 8
  %88 = load i64, i64* %6, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %6, align 8
  br label %90

90:                                               ; preds = %80, %67
  br label %28

91:                                               ; preds = %66, %54, %37, %28
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vn_io_fault_touch(i8*, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
