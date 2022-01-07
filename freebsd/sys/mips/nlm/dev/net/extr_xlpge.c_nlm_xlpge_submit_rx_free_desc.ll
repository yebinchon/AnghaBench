; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_submit_rx_free_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_submit_rx_free_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpge_softc = type { i32, i32 }
%struct.nlm_fmn_msg = type { i64* }

@.str = private unnamed_addr constant [22 x i8] c"Cannot allocate mbuf\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Bad ptr for %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Too many credit fails for send free desc\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_xlpge_submit_rx_free_desc(%struct.nlm_xlpge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.nlm_xlpge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlm_fmn_msg, align 8
  %10 = alloca i8*, align 8
  store %struct.nlm_xlpge_softc* %0, %struct.nlm_xlpge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %57, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %11
  %16 = call i32 @memset(%struct.nlm_fmn_msg* %9, i32 0, i32 8)
  %17 = call i8* (...) @get_buf()
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %22 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %60

25:                                               ; preds = %15
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @vtophys(i8* %26)
  %28 = getelementptr inbounds %struct.nlm_fmn_msg, %struct.nlm_fmn_msg* %9, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  store i64 %27, i64* %30, align 8
  %31 = getelementptr inbounds %struct.nlm_fmn_msg, %struct.nlm_fmn_msg* %9, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %60

39:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %55
  %41 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %42 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @nlm_fmn_msgsend(i32 %43, i32 %44, i32 0, %struct.nlm_fmn_msg* %9)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %56

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = icmp sgt i32 %50, 10000
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %56

55:                                               ; preds = %49
  br label %40

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %11

60:                                               ; preds = %36, %20, %11
  ret void
}

declare dso_local i32 @memset(%struct.nlm_fmn_msg*, i32, i32) #1

declare dso_local i8* @get_buf(...) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @vtophys(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nlm_fmn_msgsend(i32, i32, i32, %struct.nlm_fmn_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
