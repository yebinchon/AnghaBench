; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_droq.c_lio_droq_drop_packets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_droq.c_lio_droq_drop_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.lio_droq = type { i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.lio_droq_info = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"DROQ: In drop: pkt with len 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, %struct.lio_droq*, i64)* @lio_droq_drop_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_droq_drop_packets(%struct.octeon_device* %0, %struct.lio_droq* %1, i64 %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.lio_droq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.lio_droq_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store %struct.lio_droq* %1, %struct.lio_droq** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %73, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %76

14:                                               ; preds = %10
  %15 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %16 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %15, i32 0, i32 5
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %19 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.lio_droq_info*
  store %struct.lio_droq_info* %24, %struct.lio_droq_info** %7, align 8
  %25 = load %struct.lio_droq_info*, %struct.lio_droq_info** %7, align 8
  %26 = bitcast %struct.lio_droq_info* %25 to i32*
  %27 = call i32 @lio_swap_8B_data(i32* %26, i32 2)
  %28 = load %struct.lio_droq_info*, %struct.lio_droq_info** %7, align 8
  %29 = getelementptr inbounds %struct.lio_droq_info, %struct.lio_droq_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %14
  %33 = load %struct.lio_droq_info*, %struct.lio_droq_info** %7, align 8
  %34 = getelementptr inbounds %struct.lio_droq_info, %struct.lio_droq_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 8
  store i64 %36, i64* %34, align 8
  %37 = load %struct.lio_droq_info*, %struct.lio_droq_info** %7, align 8
  %38 = getelementptr inbounds %struct.lio_droq_info, %struct.lio_droq_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %41 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %39
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  %47 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %48 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.lio_droq_info*, %struct.lio_droq_info** %7, align 8
  %51 = getelementptr inbounds %struct.lio_droq_info, %struct.lio_droq_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @lio_droq_get_bufcount(i32 %49, i64 %52)
  store i64 %53, i64* %9, align 8
  br label %57

54:                                               ; preds = %14
  %55 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %56 = call i32 @lio_dev_err(%struct.octeon_device* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i64 1, i64* %9, align 8
  br label %57

57:                                               ; preds = %54, %32
  %58 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %59 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %63 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @lio_incr_index(i64 %60, i64 %61, i32 %64)
  %66 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %67 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %70 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %57
  %74 = load i64, i64* %8, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %10

76:                                               ; preds = %10
  ret void
}

declare dso_local i32 @lio_swap_8B_data(i32*, i32) #1

declare dso_local i64 @lio_droq_get_bufcount(i32, i64) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*) #1

declare dso_local i64 @lio_incr_index(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
