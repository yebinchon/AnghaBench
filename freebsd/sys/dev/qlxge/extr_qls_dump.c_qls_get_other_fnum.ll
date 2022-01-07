; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_get_other_fnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_get_other_fnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@Q81_INVALID_NUM = common dso_local global i32 0, align 4
@Q81_TEST_LOGIC_FUNC_PORT_CONFIG = common dso_local global i32 0, align 4
@Q81_NIC1_FUNC_ENABLE = common dso_local global i32 0, align 4
@Q81_NIC1_FUNC_MASK = common dso_local global i32 0, align 4
@Q81_NIC1_FUNC_SHIFT = common dso_local global i32 0, align 4
@Q81_NIC2_FUNC_ENABLE = common dso_local global i32 0, align 4
@Q81_NIC2_FUNC_MASK = common dso_local global i32 0, align 4
@Q81_NIC2_FUNC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @qls_get_other_fnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qls_get_other_fnum(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %9 = load i32, i32* @Q81_INVALID_NUM, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @Q81_INVALID_NUM, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = load i32, i32* @Q81_TEST_LOGIC_FUNC_PORT_CONFIG, align 4
  %13 = call i32 @qls_rd_mpi_reg(%struct.TYPE_4__* %11, i32 %12, i32* %6)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @Q81_INVALID_NUM, align 4
  store i32 %17, i32* %2, align 4
  br label %51

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @Q81_NIC1_FUNC_ENABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @Q81_NIC1_FUNC_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @Q81_NIC1_FUNC_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %23, %18
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @Q81_NIC2_FUNC_ENABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @Q81_NIC2_FUNC_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @Q81_NIC2_FUNC_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %5, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %16
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @qls_rd_mpi_reg(%struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
