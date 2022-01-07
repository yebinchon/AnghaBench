; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_const_ber_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_const_ber_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._qs = type { i32, i32 }
%struct._cfg = type { i32*, i64* }

@MAX_PKT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"pkt len %d too large, trim to %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._qs*, %struct._cfg*)* @const_ber_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @const_ber_run(%struct._qs* %0, %struct._cfg* %1) #0 {
  %3 = alloca %struct._qs*, align 8
  %4 = alloca %struct._cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct._qs* %0, %struct._qs** %3, align 8
  store %struct._cfg* %1, %struct._cfg** %4, align 8
  %8 = load %struct._qs*, %struct._qs** %3, align 8
  %9 = getelementptr inbounds %struct._qs, %struct._qs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = call i64 (...) @my_random24()
  store i64 %11, i64* %6, align 8
  %12 = load %struct._cfg*, %struct._cfg** %4, align 8
  %13 = getelementptr inbounds %struct._cfg, %struct._cfg* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MAX_PKT, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MAX_PKT, align 4
  %21 = sub nsw i32 %20, 1
  %22 = call i32 @RD(i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21)
  %23 = load i32, i32* @MAX_PKT, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i64, i64* %6, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %26, %31
  %33 = zext i1 %32 to i32
  %34 = load %struct._qs*, %struct._qs** %3, align 8
  %35 = getelementptr inbounds %struct._qs, %struct._qs* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %36, 8
  %38 = load %struct._cfg*, %struct._cfg** %4, align 8
  %39 = getelementptr inbounds %struct._cfg, %struct._cfg* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load %struct._qs*, %struct._qs** %3, align 8
  %45 = getelementptr inbounds %struct._qs, %struct._qs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct._cfg*, %struct._cfg** %4, align 8
  %48 = getelementptr inbounds %struct._cfg, %struct._cfg* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %46
  store i32 %52, i32* %50, align 4
  ret i32 0
}

declare dso_local i64 @my_random24(...) #1

declare dso_local i32 @RD(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
