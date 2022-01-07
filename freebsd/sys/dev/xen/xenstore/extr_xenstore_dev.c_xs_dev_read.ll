; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore_dev.c_xs_dev_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore_dev.c_xs_dev_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64 }
%struct.xs_dev_data = type { i64, i64, i32* }

@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"xsdread\00", align 1
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @xs_dev_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_dev_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xs_dev_data*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = bitcast %struct.xs_dev_data** %9 to i8**
  %11 = call i32 @devfs_get_cdevpriv(i8** %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %76

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %39, %16
  %18 = load %struct.xs_dev_data*, %struct.xs_dev_data** %9, align 8
  %19 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.xs_dev_data*, %struct.xs_dev_data** %9, align 8
  %22 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = load %struct.xs_dev_data*, %struct.xs_dev_data** %9, align 8
  %27 = load i32, i32* @PCATCH, align 4
  %28 = load i32, i32* @hz, align 4
  %29 = sdiv i32 %28, 10
  %30 = call i32 @tsleep(%struct.xs_dev_data* %26, i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @EWOULDBLOCK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %76

39:                                               ; preds = %33, %25
  br label %17

40:                                               ; preds = %17
  br label %41

41:                                               ; preds = %70, %40
  %42 = load %struct.uio*, %struct.uio** %6, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %41
  %47 = load %struct.xs_dev_data*, %struct.xs_dev_data** %9, align 8
  %48 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.xs_dev_data*, %struct.xs_dev_data** %9, align 8
  %51 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %75

55:                                               ; preds = %46
  %56 = load %struct.xs_dev_data*, %struct.xs_dev_data** %9, align 8
  %57 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.xs_dev_data*, %struct.xs_dev_data** %9, align 8
  %60 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @MASK_READ_IDX(i64 %61)
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load %struct.uio*, %struct.uio** %6, align 8
  %65 = call i32 @uiomove(i32* %63, i32 1, %struct.uio* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %76

70:                                               ; preds = %55
  %71 = load %struct.xs_dev_data*, %struct.xs_dev_data** %9, align 8
  %72 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  br label %41

75:                                               ; preds = %54, %41
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %68, %37, %14
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @tsleep(%struct.xs_dev_data*, i32, i8*, i32) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

declare dso_local i64 @MASK_READ_IDX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
