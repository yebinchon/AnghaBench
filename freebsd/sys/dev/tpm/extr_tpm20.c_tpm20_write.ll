; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm20.c_tpm20_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm20.c_tpm20_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.uio = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tpm_sc = type { i64, i32 (%struct.tpm_sc*, i64)*, i32, i32, i32, i32, i32, i32 }

@TPM_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Requested transfer is too small\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TPM_BUFSIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Requested transfer is too large\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@TPM_READ_TIMEOUT = common dso_local global i32 0, align 4
@tick = common dso_local global i32 0, align 4
@tpm20_discard_buffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm20_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
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
  %15 = load %struct.uio*, %struct.uio** %6, align 8
  %16 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %23 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %96

27:                                               ; preds = %3
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @TPM_BUFSIZE, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %33 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @E2BIG, align 4
  store i32 %36, i32* %4, align 4
  br label %96

37:                                               ; preds = %27
  %38 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %39 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %38, i32 0, i32 2
  %40 = call i32 @sx_xlock(i32* %39)
  br label %41

41:                                               ; preds = %46, %37
  %42 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %43 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %48 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %47, i32 0, i32 6
  %49 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %50 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %49, i32 0, i32 2
  %51 = call i32 @cv_wait(i32* %48, i32* %50)
  br label %41

52:                                               ; preds = %41
  %53 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %54 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.uio*, %struct.uio** %6, align 8
  %58 = call i32 @uiomove(i32 %55, i64 %56, %struct.uio* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %63 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %62, i32 0, i32 2
  %64 = call i32 @sx_xunlock(i32* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %96

66:                                               ; preds = %52
  %67 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %68 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %67, i32 0, i32 1
  %69 = load i32 (%struct.tpm_sc*, i64)*, i32 (%struct.tpm_sc*, i64)** %68, align 8
  %70 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 %69(%struct.tpm_sc* %70, i64 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %66
  %76 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %77 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %76, i32 0, i32 4
  %78 = load i32, i32* @TPM_READ_TIMEOUT, align 4
  %79 = load i32, i32* @tick, align 4
  %80 = sdiv i32 %78, %79
  %81 = load i32, i32* @tpm20_discard_buffer, align 4
  %82 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %83 = call i32 @callout_reset(i32* %77, i32 %80, i32 %81, %struct.tpm_sc* %82)
  %84 = load %struct.uio*, %struct.uio** %6, align 8
  %85 = getelementptr inbounds %struct.uio, %struct.uio* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %90 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %75, %66
  %92 = load %struct.tpm_sc*, %struct.tpm_sc** %8, align 8
  %93 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %92, i32 0, i32 2
  %94 = call i32 @sx_xunlock(i32* %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %91, %61, %31, %21
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @uiomove(i32, i64, %struct.uio*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.tpm_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
