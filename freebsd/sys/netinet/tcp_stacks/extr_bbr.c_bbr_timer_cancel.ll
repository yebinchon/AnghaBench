; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_timer_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_timer_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, i64, i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }

@PACE_TMR_MASK = common dso_local global i32 0, align 4
@HPTS_REMOVE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32, i64)* @bbr_timer_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_timer_cancel(%struct.tcp_bbr* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.tcp_bbr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %10 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PACE_TMR_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %99

16:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %17 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %18 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %76

23:                                               ; preds = %16
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %25 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %76

28:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  %29 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %30 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* @HPTS_REMOVE_OUTPUT, align 4
  %33 = call i32 @tcp_hpts_remove(%struct.TYPE_4__* %31, i32 %32)
  %34 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %35 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %28
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %42 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @TSTMP_GT(i64 %40, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %49 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  store i64 %51, i64* %8, align 8
  br label %53

52:                                               ; preds = %39
  store i64 0, i64* %8, align 8
  br label %53

53:                                               ; preds = %52, %46
  %54 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %55 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %63 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, %61
  store i64 %66, i64* %64, align 8
  br label %71

67:                                               ; preds = %53
  %68 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %69 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %60
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %74 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %28
  br label %76

76:                                               ; preds = %75, %23, %16
  %77 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %78 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @bbr_log_to_cancel(%struct.tcp_bbr* %79, i32 %80, i64 %81, i32 %82)
  %84 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %85 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @PACE_TMR_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %91 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @PACE_TMR_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %95 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %93
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %76, %3
  ret void
}

declare dso_local i32 @tcp_hpts_remove(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @TSTMP_GT(i64, i64) #1

declare dso_local i32 @bbr_log_to_cancel(%struct.tcp_bbr*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
