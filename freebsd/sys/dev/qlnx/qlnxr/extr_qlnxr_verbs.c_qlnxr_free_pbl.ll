; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_free_pbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_free_pbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qlnxr_pbl_info = type { i32, i32 }
%struct.qlnxr_pbl = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_dev*, %struct.qlnxr_pbl_info*, %struct.qlnxr_pbl*)* @qlnxr_free_pbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_free_pbl(%struct.qlnxr_dev* %0, %struct.qlnxr_pbl_info* %1, %struct.qlnxr_pbl* %2) #0 {
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca %struct.qlnxr_pbl_info*, align 8
  %6 = alloca %struct.qlnxr_pbl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %4, align 8
  store %struct.qlnxr_pbl_info* %1, %struct.qlnxr_pbl_info** %5, align 8
  store %struct.qlnxr_pbl* %2, %struct.qlnxr_pbl** %6, align 8
  %9 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %10 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %8, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %13 = call i32 @QL_DPRINT12(%struct.TYPE_3__* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %50, %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.qlnxr_pbl_info*, %struct.qlnxr_pbl_info** %5, align 8
  %17 = getelementptr inbounds %struct.qlnxr_pbl_info, %struct.qlnxr_pbl_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %14
  %21 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %21, i64 %23
  %25 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %50

29:                                               ; preds = %20
  %30 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %31 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %34, i64 %36
  %38 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %40, i64 %42
  %44 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.qlnxr_pbl_info*, %struct.qlnxr_pbl_info** %5, align 8
  %47 = getelementptr inbounds %struct.qlnxr_pbl_info, %struct.qlnxr_pbl_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @qlnx_dma_free_coherent(i32* %33, i32 %39, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %29, %28
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %14

53:                                               ; preds = %14
  %54 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %6, align 8
  %55 = call i32 @kfree(%struct.qlnxr_pbl* %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = call i32 @QL_DPRINT12(%struct.TYPE_3__* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @qlnx_dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.qlnxr_pbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
