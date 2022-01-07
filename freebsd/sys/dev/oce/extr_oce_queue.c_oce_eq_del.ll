; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_eq_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_eq_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_eq = type { i32, i32*, i32 }
%struct.oce_mbx = type { i32 }
%struct.mbx_destroy_common_eq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@QTYPE_EQ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oce_eq*)* @oce_eq_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_eq_del(%struct.oce_eq* %0) #0 {
  %2 = alloca %struct.oce_eq*, align 8
  %3 = alloca %struct.oce_mbx, align 4
  %4 = alloca %struct.mbx_destroy_common_eq*, align 8
  %5 = alloca i32, align 4
  store %struct.oce_eq* %0, %struct.oce_eq** %2, align 8
  %6 = load %struct.oce_eq*, %struct.oce_eq** %2, align 8
  %7 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.oce_eq*, %struct.oce_eq** %2, align 8
  %10 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 65535
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = call i32 @bzero(%struct.oce_mbx* %3, i32 4)
  %15 = getelementptr inbounds %struct.oce_mbx, %struct.oce_mbx* %3, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.mbx_destroy_common_eq*
  store %struct.mbx_destroy_common_eq* %16, %struct.mbx_destroy_common_eq** %4, align 8
  %17 = load %struct.oce_eq*, %struct.oce_eq** %2, align 8
  %18 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mbx_destroy_common_eq*, %struct.mbx_destroy_common_eq** %4, align 8
  %21 = getelementptr inbounds %struct.mbx_destroy_common_eq, %struct.mbx_destroy_common_eq* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @QTYPE_EQ, align 4
  %26 = call i32 @oce_destroy_q(i32 %24, %struct.oce_mbx* %3, i32 4, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %13, %1
  %28 = load %struct.oce_eq*, %struct.oce_eq** %2, align 8
  %29 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.oce_eq*, %struct.oce_eq** %2, align 8
  %35 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @oce_destroy_ring_buffer(i32 %33, i32* %36)
  %38 = load %struct.oce_eq*, %struct.oce_eq** %2, align 8
  %39 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %32, %27
  %41 = load %struct.oce_eq*, %struct.oce_eq** %2, align 8
  %42 = load i32, i32* @M_DEVBUF, align 4
  %43 = call i32 @free(%struct.oce_eq* %41, i32 %42)
  ret void
}

declare dso_local i32 @bzero(%struct.oce_mbx*, i32) #1

declare dso_local i32 @oce_destroy_q(i32, %struct.oce_mbx*, i32, i32, i32) #1

declare dso_local i32 @oce_destroy_ring_buffer(i32, i32*) #1

declare dso_local i32 @free(%struct.oce_eq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
