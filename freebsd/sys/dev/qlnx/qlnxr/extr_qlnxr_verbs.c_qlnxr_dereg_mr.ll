; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.qlnxr_mr = type { i64, %struct.qlnxr_mr*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qlnxr_dev = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@QLNXR_MR_DMA = common dso_local global i64 0, align 8
@QLNXR_MR_FRMR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_dereg_mr(%struct.ib_mr* %0) #0 {
  %2 = alloca %struct.ib_mr*, align 8
  %3 = alloca %struct.qlnxr_mr*, align 8
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.ib_mr* %0, %struct.ib_mr** %2, align 8
  %7 = load %struct.ib_mr*, %struct.ib_mr** %2, align 8
  %8 = call %struct.qlnxr_mr* @get_qlnxr_mr(%struct.ib_mr* %7)
  store %struct.qlnxr_mr* %8, %struct.qlnxr_mr** %3, align 8
  %9 = load %struct.ib_mr*, %struct.ib_mr** %2, align 8
  %10 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %11)
  store %struct.qlnxr_dev* %12, %struct.qlnxr_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %14 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @QL_DPRINT12(i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %3, align 8
  %19 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QLNXR_MR_DMA, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %1
  %24 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %3, align 8
  %25 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QLNXR_MR_FRMR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %31 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %3, align 8
  %32 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %3, align 8
  %35 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @qlnxr_free_pbl(%struct.qlnxr_dev* %30, i32* %33, i32 %37)
  br label %39

39:                                               ; preds = %29, %23, %1
  %40 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %3, align 8
  %41 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %3, align 8
  %46 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ib_umem_release(i64 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %3, align 8
  %51 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %50, i32 0, i32 1
  %52 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %51, align 8
  %53 = call i32 @kfree(%struct.qlnxr_mr* %52)
  %54 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %3, align 8
  %55 = call i32 @kfree(%struct.qlnxr_mr* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @QL_DPRINT12(i32* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.qlnxr_mr* @get_qlnxr_mr(%struct.ib_mr*) #1

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*) #1

declare dso_local i32 @qlnxr_free_pbl(%struct.qlnxr_dev*, i32*, i32) #1

declare dso_local i32 @ib_umem_release(i64) #1

declare dso_local i32 @kfree(%struct.qlnxr_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
