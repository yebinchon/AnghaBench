; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_uio.c_copyiniov.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_uio.c_copyiniov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }

@UIO_MAXIOV = common dso_local global i32 0, align 4
@M_IOV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copyiniov(%struct.iovec* %0, i32 %1, %struct.iovec** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iovec**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iovec* %0, %struct.iovec** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.iovec** %2, %struct.iovec*** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.iovec**, %struct.iovec*** %8, align 8
  store %struct.iovec* null, %struct.iovec** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @UIO_MAXIOV, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %5, align 4
  br label %42

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @M_IOV, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = call %struct.iovec* @malloc(i32 %22, i32 %23, i32 %24)
  %26 = load %struct.iovec**, %struct.iovec*** %8, align 8
  store %struct.iovec* %25, %struct.iovec** %26, align 8
  %27 = load %struct.iovec*, %struct.iovec** %6, align 8
  %28 = load %struct.iovec**, %struct.iovec*** %8, align 8
  %29 = load %struct.iovec*, %struct.iovec** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @copyin(%struct.iovec* %27, %struct.iovec* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %17
  %35 = load %struct.iovec**, %struct.iovec*** %8, align 8
  %36 = load %struct.iovec*, %struct.iovec** %35, align 8
  %37 = load i32, i32* @M_IOV, align 4
  %38 = call i32 @free(%struct.iovec* %36, i32 %37)
  %39 = load %struct.iovec**, %struct.iovec*** %8, align 8
  store %struct.iovec* null, %struct.iovec** %39, align 8
  br label %40

40:                                               ; preds = %34, %17
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %15
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.iovec* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(%struct.iovec*, %struct.iovec*, i32) #1

declare dso_local i32 @free(%struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
