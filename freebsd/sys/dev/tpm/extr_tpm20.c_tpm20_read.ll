; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm20.c_tpm20_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm20.c_tpm20_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.uio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.tpm_sc = type { i64, i32, i32, i64, i64, i32 }

@EPERM = common dso_local global i32 0, align 4
@TPM_BUFSIZE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm20_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tpm_sc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.cdev*, %struct.cdev** %5, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.tpm_sc*
  store %struct.tpm_sc* %14, %struct.tpm_sc** %8, align 8
  %15 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %16 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %15, i32 0, i32 5
  %17 = call i32 @callout_stop(i32* %16)
  %18 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %19 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %18, i32 0, i32 1
  %20 = call i32 @sx_xlock(i32* %19)
  %21 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %22 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.uio*, %struct.uio** %6, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %23, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %32 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %31, i32 0, i32 1
  %33 = call i32 @sx_xunlock(i32* %32)
  %34 = load i32, i32* @EPERM, align 4
  store i32 %34, i32* %4, align 4
  br label %70

35:                                               ; preds = %3
  %36 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %37 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.uio*, %struct.uio** %6, align 8
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @MIN(i64 %38, i32 %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %35
  %46 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %47 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.uio*, %struct.uio** %6, align 8
  %52 = call i32 @uiomove(i32 %49, i64 %50, %struct.uio* %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %54 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @TPM_BUFSIZE, align 4
  %57 = call i32 @memset(i64 %55, i32 0, i32 %56)
  %58 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %59 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %61 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %60, i32 0, i32 2
  %62 = call i32 @cv_signal(i32* %61)
  br label %65

63:                                               ; preds = %35
  %64 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %63, %45
  %66 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %67 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %66, i32 0, i32 1
  %68 = call i32 @sx_xunlock(i32* %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %30
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @uiomove(i32, i64, %struct.uio*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
