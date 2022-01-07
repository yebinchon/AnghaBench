; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_set_pktepoch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_set_pktepoch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i64, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i64, i32)* @bbr_set_pktepoch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_set_pktepoch(%struct.tcp_bbr* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.tcp_bbr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %11 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %15 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %13, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %21 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %25 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %23, %27
  store i64 %28, i64* %8, align 8
  br label %30

29:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %30

30:                                               ; preds = %29, %19
  %31 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %32 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %36 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %34, %38
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %57

43:                                               ; preds = %30
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %49, 1000
  store i32 %50, i32* %7, align 4
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %7, align 4
  %54 = sdiv i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %56

55:                                               ; preds = %43
  store i32 1000, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %46
  br label %57

57:                                               ; preds = %56, %42
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %61 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 8
  store i64 %59, i64* %62, align 8
  %63 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %64 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @IN_RECOVERY(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %57
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %74 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %72
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  br label %80

80:                                               ; preds = %70, %57
  %81 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %82 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %87 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %80
  %91 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %92 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %96 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %94, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %101 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @tcp_bbr_tso_size_check(%struct.tcp_bbr* %102, i64 %103)
  br label %105

105:                                              ; preds = %99, %90, %80
  %106 = load i64, i64* %5, align 8
  %107 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %108 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @bbr_calc_time(i64 %106, i64 %110)
  %112 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %113 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 6
  store i32 %111, i32* %114, align 8
  %115 = load i64, i64* %5, align 8
  %116 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %117 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 5
  store i64 %115, i64* %118, align 8
  %119 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @bbr_log_pkt_epoch(%struct.tcp_bbr* %119, i64 %120, i32 %121, i64 %122, i64 %123)
  %125 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %126 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %130 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  store i64 %128, i64* %131, align 8
  %132 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %133 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %137 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  store i64 %135, i64* %138, align 8
  ret void
}

declare dso_local i64 @IN_RECOVERY(i32) #1

declare dso_local i32 @tcp_bbr_tso_size_check(%struct.tcp_bbr*, i64) #1

declare dso_local i32 @bbr_calc_time(i64, i64) #1

declare dso_local i32 @bbr_log_pkt_epoch(%struct.tcp_bbr*, i64, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
