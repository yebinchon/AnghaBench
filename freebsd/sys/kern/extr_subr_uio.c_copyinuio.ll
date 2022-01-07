; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_uio.c_copyinuio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_uio.c_copyinuio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64 }
%struct.uio = type { i32, i32, i64, i32, %struct.iovec* }

@UIO_MAXIOV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_IOV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@IOSIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copyinuio(%struct.iovec* %0, i32 %1, %struct.uio** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uio**, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca %struct.uio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iovec* %0, %struct.iovec** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.uio** %2, %struct.uio*** %7, align 8
  %13 = load %struct.uio**, %struct.uio*** %7, align 8
  store %struct.uio* null, %struct.uio** %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @UIO_MAXIOV, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %94

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @M_IOV, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = call %struct.uio* @malloc(i32 %27, i32 %28, i32 %29)
  store %struct.uio* %30, %struct.uio** %9, align 8
  %31 = load %struct.uio*, %struct.uio** %9, align 8
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %31, i64 1
  %33 = bitcast %struct.uio* %32 to %struct.iovec*
  store %struct.iovec* %33, %struct.iovec** %8, align 8
  %34 = load %struct.iovec*, %struct.iovec** %5, align 8
  %35 = load %struct.iovec*, %struct.iovec** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @copyin(%struct.iovec* %34, %struct.iovec* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %19
  %41 = load %struct.uio*, %struct.uio** %9, align 8
  %42 = load i32, i32* @M_IOV, align 4
  %43 = call i32 @free(%struct.uio* %41, i32 %42)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %94

45:                                               ; preds = %19
  %46 = load %struct.iovec*, %struct.iovec** %8, align 8
  %47 = load %struct.uio*, %struct.uio** %9, align 8
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %47, i32 0, i32 4
  store %struct.iovec* %46, %struct.iovec** %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.uio*, %struct.uio** %9, align 8
  %51 = getelementptr inbounds %struct.uio, %struct.uio* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @UIO_USERSPACE, align 4
  %53 = load %struct.uio*, %struct.uio** %9, align 8
  %54 = getelementptr inbounds %struct.uio, %struct.uio* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.uio*, %struct.uio** %9, align 8
  %56 = getelementptr inbounds %struct.uio, %struct.uio* %55, i32 0, i32 1
  store i32 -1, i32* %56, align 4
  %57 = load %struct.uio*, %struct.uio** %9, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %88, %45
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %59
  %64 = load %struct.iovec*, %struct.iovec** %8, align 8
  %65 = getelementptr inbounds %struct.iovec, %struct.iovec* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IOSIZE_MAX, align 8
  %68 = load %struct.uio*, %struct.uio** %9, align 8
  %69 = getelementptr inbounds %struct.uio, %struct.uio* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = icmp sgt i64 %66, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load %struct.uio*, %struct.uio** %9, align 8
  %75 = load i32, i32* @M_IOV, align 4
  %76 = call i32 @free(%struct.uio* %74, i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %4, align 4
  br label %94

78:                                               ; preds = %63
  %79 = load %struct.iovec*, %struct.iovec** %8, align 8
  %80 = getelementptr inbounds %struct.iovec, %struct.iovec* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.uio*, %struct.uio** %9, align 8
  %83 = getelementptr inbounds %struct.uio, %struct.uio* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load %struct.iovec*, %struct.iovec** %8, align 8
  %87 = getelementptr inbounds %struct.iovec, %struct.iovec* %86, i32 1
  store %struct.iovec* %87, %struct.iovec** %8, align 8
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %59

91:                                               ; preds = %59
  %92 = load %struct.uio*, %struct.uio** %9, align 8
  %93 = load %struct.uio**, %struct.uio*** %7, align 8
  store %struct.uio* %92, %struct.uio** %93, align 8
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %91, %73, %40, %17
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.uio* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(%struct.iovec*, %struct.iovec*, i32) #1

declare dso_local i32 @free(%struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
