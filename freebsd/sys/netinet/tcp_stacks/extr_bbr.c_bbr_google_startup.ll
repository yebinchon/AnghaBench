; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_google_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_google_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@bbr_start_exit = common dso_local global i64 0, align 8
@BBR_STARTUP_EPOCHS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcp_bbr*, i32, i64)* @bbr_google_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bbr_google_startup(%struct.tcp_bbr* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tcp_bbr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %82

13:                                               ; preds = %3
  %14 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %15 = call i32 @bbr_get_full_bw(%struct.tcp_bbr* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %17 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* @bbr_start_exit, align 8
  %21 = trunc i64 %20 to i32
  %22 = mul nsw i32 %19, %21
  %23 = sdiv i32 %22, 100
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %25 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %23, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %13
  %33 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %34 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %38 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i64 %36, i64* %39, align 8
  %40 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %43 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %47 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* @bbr_start_exit, align 8
  %51 = call i32 @bbr_log_startup_event(%struct.tcp_bbr* %40, i32 %41, i64 %45, i32 %49, i64 %50, i32 3)
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %54 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  br label %56

56:                                               ; preds = %32, %13
  %57 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %58 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %62 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %60, %64
  %66 = load i64, i64* @BBR_STARTUP_EPOCHS, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  store i64 1, i64* %4, align 8
  br label %82

69:                                               ; preds = %56
  %70 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %73 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %77 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* @bbr_start_exit, align 8
  %81 = call i32 @bbr_log_startup_event(%struct.tcp_bbr* %70, i32 %71, i64 %75, i32 %79, i64 %80, i32 8)
  store i64 0, i64* %4, align 8
  br label %82

82:                                               ; preds = %69, %68, %12
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local i32 @bbr_get_full_bw(%struct.tcp_bbr*) #1

declare dso_local i32 @bbr_log_startup_event(%struct.tcp_bbr*, i32, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
