; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_fill_in_logging_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_fill_in_logging_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.tcp_log_bbr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, %struct.tcp_log_bbr*, i32)* @bbr_fill_in_logging_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_fill_in_logging_data(%struct.tcp_bbr* %0, %struct.tcp_log_bbr* %1, i32 %2) #0 {
  %4 = alloca %struct.tcp_bbr*, align 8
  %5 = alloca %struct.tcp_log_bbr*, align 8
  %6 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %4, align 8
  store %struct.tcp_log_bbr* %1, %struct.tcp_log_bbr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %8 = call i32 @memset(%struct.tcp_log_bbr* %7, i32 0, i32 4)
  %9 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %10 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 13
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %14 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %13, i32 0, i32 19
  store i32 %12, i32* %14, align 4
  %15 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %16 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 12
  %18 = call i32 @get_filter_value(i32* %17)
  %19 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %20 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %19, i32 0, i32 18
  store i32 %18, i32* %20, align 4
  %21 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %22 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 11
  %24 = call i32 @get_filter_value_small(i32* %23)
  %25 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %26 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %25, i32 0, i32 17
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %28 = call i32 @bbr_get_bw(%struct.tcp_bbr* %27)
  %29 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %30 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %29, i32 0, i32 16
  store i32 %28, i32* %30, align 4
  %31 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %32 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %35 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 10
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %39 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 9
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %37, %41
  %43 = call i32 @ctf_flight_size(i32 %33, i64 %42)
  %44 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %45 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %44, i32 0, i32 15
  store i32 %43, i32* %45, align 4
  %46 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %47 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %51 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %50, i32 0, i32 14
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %53 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %57 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %56, i32 0, i32 13
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %60 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %59, i32 0, i32 12
  store i32 %58, i32* %60, align 4
  %61 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %62 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %66 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %65, i32 0, i32 11
  store i32 %64, i32* %66, align 4
  %67 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %68 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %71 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %70, i32 0, i32 10
  store i32 %69, i32* %71, align 4
  %72 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %73 = call i32 @bbr_state_val(%struct.tcp_bbr* %72)
  %74 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %75 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %74, i32 0, i32 9
  store i32 %73, i32* %75, align 4
  %76 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %77 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %81 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 4
  %82 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %83 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %87 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  %88 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %89 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %93 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  %94 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %95 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %99 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %101 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %100, i32 0, i32 2
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %106 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %108 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %113 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %115 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %118 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %120 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %124 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %126 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.tcp_log_bbr*, %struct.tcp_log_bbr** %5, align 8
  %130 = getelementptr inbounds %struct.tcp_log_bbr, %struct.tcp_log_bbr* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  ret void
}

declare dso_local i32 @memset(%struct.tcp_log_bbr*, i32, i32) #1

declare dso_local i32 @get_filter_value(i32*) #1

declare dso_local i32 @get_filter_value_small(i32*) #1

declare dso_local i32 @bbr_get_bw(%struct.tcp_bbr*) #1

declare dso_local i32 @ctf_flight_size(i32, i64) #1

declare dso_local i32 @bbr_state_val(%struct.tcp_bbr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
