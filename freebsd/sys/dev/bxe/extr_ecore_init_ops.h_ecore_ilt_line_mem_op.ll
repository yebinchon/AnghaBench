; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_ilt_line_mem_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_ilt_line_mem_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ilt_line = type { i32, i32, i32 }

@ILT_MEMOP_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ilt_line*, i32, i64)* @ecore_ilt_line_mem_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_ilt_line_mem_op(%struct.bxe_softc* %0, %struct.ilt_line* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca %struct.ilt_line*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store %struct.ilt_line* %1, %struct.ilt_line** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ILT_MEMOP_FREE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = load %struct.ilt_line*, %struct.ilt_line** %7, align 8
  %15 = getelementptr inbounds %struct.ilt_line, %struct.ilt_line* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ilt_line*, %struct.ilt_line** %7, align 8
  %18 = getelementptr inbounds %struct.ilt_line, %struct.ilt_line* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ilt_line*, %struct.ilt_line** %7, align 8
  %21 = getelementptr inbounds %struct.ilt_line, %struct.ilt_line* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ECORE_ILT_FREE(i32 %16, i32 %19, i32 %22)
  store i32 0, i32* %5, align 4
  br label %41

24:                                               ; preds = %4
  %25 = load %struct.ilt_line*, %struct.ilt_line** %7, align 8
  %26 = getelementptr inbounds %struct.ilt_line, %struct.ilt_line* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ilt_line*, %struct.ilt_line** %7, align 8
  %29 = getelementptr inbounds %struct.ilt_line, %struct.ilt_line* %28, i32 0, i32 2
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ECORE_ILT_ZALLOC(i32 %27, i32* %29, i32 %30)
  %32 = load %struct.ilt_line*, %struct.ilt_line** %7, align 8
  %33 = getelementptr inbounds %struct.ilt_line, %struct.ilt_line* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %41

37:                                               ; preds = %24
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ilt_line*, %struct.ilt_line** %7, align 8
  %40 = getelementptr inbounds %struct.ilt_line, %struct.ilt_line* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %36, %13
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @ECORE_ILT_FREE(i32, i32, i32) #1

declare dso_local i32 @ECORE_ILT_ZALLOC(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
