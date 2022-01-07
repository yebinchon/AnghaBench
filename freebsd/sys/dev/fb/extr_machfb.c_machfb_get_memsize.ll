; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_get_memsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_get_memsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machfb_softc = type { i32 }

@__const.machfb_get_memsize.mem_tab = private unnamed_addr constant [8 x i32] [i32 512, i32 1024, i32 2048, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384], align 16
@MEM_CNTL = common dso_local global i32 0, align 4
@MACHFB_DSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.machfb_softc*)* @machfb_get_memsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machfb_get_memsize(%struct.machfb_softc* %0) #0 {
  %2 = alloca %struct.machfb_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  store %struct.machfb_softc* %0, %struct.machfb_softc** %2, align 8
  %6 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([8 x i32]* @__const.machfb_get_memsize.mem_tab to i8*), i64 32, i1 false)
  %7 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %8 = load i32, i32* @MEM_CNTL, align 4
  %9 = call i32 @regr(%struct.machfb_softc* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %11 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MACHFB_DSP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 15
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  %24 = mul nsw i32 %23, 512
  store i32 %24, i32* %4, align 4
  br label %37

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 12
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %29, 3
  %31 = mul nsw i32 %30, 1024
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 %33, 7
  %35 = mul nsw i32 %34, 2048
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %21
  br label %44

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, 7
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %37
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @regr(%struct.machfb_softc*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
