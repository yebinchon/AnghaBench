; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_chd.c_should_backoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_chd.c_should_backoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chd = type { i32 }

@V_chd_qthresh = common dso_local global i32 0, align 4
@RANDOM_MAX = common dso_local global i32 0, align 4
@V_chd_pmax = common dso_local global i32 0, align 4
@V_chd_qmin = common dso_local global i32 0, align 4
@V_chd_loss_fair = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.chd*)* @should_backoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_backoff(i32 %0, i32 %1, %struct.chd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.chd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.chd* %2, %struct.chd** %6, align 8
  %9 = call i64 (...) @random()
  store i64 %9, i64* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @V_chd_qthresh, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load %struct.chd*, %struct.chd** %6, align 8
  %15 = getelementptr inbounds %struct.chd, %struct.chd* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* @RANDOM_MAX, align 4
  %17 = sdiv i32 %16, 100
  %18 = load i32, i32* @V_chd_pmax, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* @V_chd_qthresh, align 4
  %21 = load i32, i32* @V_chd_qmin, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sdiv i32 %19, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @V_chd_qmin, align 4
  %26 = sub nsw i32 %24, %25
  %27 = mul nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  br label %66

29:                                               ; preds = %3
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @V_chd_qthresh, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load i32, i32* @RANDOM_MAX, align 4
  %35 = sdiv i32 %34, 100
  %36 = load i32, i32* @V_chd_pmax, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @V_chd_qthresh, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sdiv i32 %37, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %42, %43
  %45 = mul nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* @V_chd_loss_fair, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %33
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.chd*, %struct.chd** %6, align 8
  %55 = getelementptr inbounds %struct.chd, %struct.chd* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %49, %33
  br label %65

57:                                               ; preds = %29
  %58 = load i32, i32* @RANDOM_MAX, align 4
  %59 = sdiv i32 %58, 100
  %60 = load i32, i32* @V_chd_pmax, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %7, align 8
  %63 = load %struct.chd*, %struct.chd** %6, align 8
  %64 = getelementptr inbounds %struct.chd, %struct.chd* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %57, %56
  br label %66

66:                                               ; preds = %65, %13
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ult i64 %67, %68
  %70 = zext i1 %69 to i32
  ret i32 %70
}

declare dso_local i64 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
