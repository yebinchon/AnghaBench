; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bus_teardown_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bus_teardown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.scc_mode = type { i32**, i32*, i32*, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SCC_ISRCCNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scc_bus_teardown_intr(i64 %0, i64 %1, %struct.resource* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.scc_mode*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.resource* %2, %struct.resource** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @device_get_parent(i64 %12)
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %51

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = call %struct.scc_mode* @device_get_ivars(i64 %19)
  store %struct.scc_mode* %20, %struct.scc_mode** %10, align 8
  %21 = load %struct.scc_mode*, %struct.scc_mode** %10, align 8
  %22 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %5, align 4
  br label %51

27:                                               ; preds = %18
  %28 = load %struct.scc_mode*, %struct.scc_mode** %10, align 8
  %29 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.scc_mode*, %struct.scc_mode** %10, align 8
  %31 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.scc_mode*, %struct.scc_mode** %10, align 8
  %33 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = load %struct.scc_mode*, %struct.scc_mode** %10, align 8
  %35 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %47, %27
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @SCC_ISRCCNT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct.scc_mode*, %struct.scc_mode** %10, align 8
  %42 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %36

50:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %25, %16
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.scc_mode* @device_get_ivars(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
