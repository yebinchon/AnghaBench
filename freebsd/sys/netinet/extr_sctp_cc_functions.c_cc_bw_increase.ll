; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_cc_bw_increase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_cc_bw_increase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32 }
%struct.sctp_nets = type { i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64, i64 }

@sctp = common dso_local global i32 0, align 4
@cwnd = common dso_local global i32 0, align 4
@rttvar = common dso_local global i32 0, align 4
@rttstep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32)* @cc_bw_increase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_bw_increase(%struct.sctp_tcb* %0, %struct.sctp_nets* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_tcb*, align 8
  %6 = alloca %struct.sctp_nets*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %5, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %12 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = shl i32 %14, 32
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @sctp, align 4
  %17 = load i32, i32* @cwnd, align 4
  %18 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %19 = load i32, i32* @rttvar, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %22 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 32
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %30 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 32
  %35 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %36 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %34, %37
  %39 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %40 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @SDT_PROBE5(i32 %16, i32 %17, %struct.sctp_nets* %18, i32 %19, i32 %20, i32 %28, i32 %38, i32 %41, i32 %42)
  %44 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %45 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %112

50:                                               ; preds = %4
  %51 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %52 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %56, 16
  store i32 %57, i32* %9, align 4
  %58 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %59 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 %65, 16
  store i32 %66, i32* %9, align 4
  %67 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %68 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* @sctp, align 4
  %75 = load i32, i32* @cwnd, align 4
  %76 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %77 = load i32, i32* @rttstep, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %80 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 %83, 32
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %88 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 32
  %93 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %94 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %92, %95
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @SDT_PROBE5(i32 %74, i32 %75, %struct.sctp_nets* %76, i32 %77, i32 %78, i32 %86, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %101 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 4
  store i32 0, i32* %103, align 8
  %104 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %105 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  store i32 0, i32* %107, align 4
  %108 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %109 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %50, %4
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %115 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 8
  %118 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %119 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %122 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  store i32 %120, i32* %124, align 4
  %125 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %126 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %129 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 5
  store i64 %127, i64* %131, align 8
  ret i32 0
}

declare dso_local i32 @SDT_PROBE5(i32, i32, %struct.sctp_nets*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
