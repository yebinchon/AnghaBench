; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_flush_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_flush_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lro_ctrl = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.mbuf*)* }
%struct.mbuf = type { i32 }
%struct.TYPE_3__ = type { i64, %struct.mbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_lro_flush_all(%struct.lro_ctrl* %0) #0 {
  %2 = alloca %struct.lro_ctrl*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  store %struct.lro_ctrl* %0, %struct.lro_ctrl** %2, align 8
  %7 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %8 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %80

12:                                               ; preds = %1
  %13 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %14 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %17 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @tcp_lro_sort(%struct.TYPE_3__* %15, i32 %18)
  store i64 0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %76, %12
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %23 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %20
  %27 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %28 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %27, i32 0, i32 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load %struct.mbuf*, %struct.mbuf** %33, align 8
  store %struct.mbuf* %34, %struct.mbuf** %6, align 8
  %35 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %36 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %35, i32 0, i32 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = and i64 %42, -16777216
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %26
  %48 = load i64, i64* %4, align 8
  store i64 %48, i64* %3, align 8
  %49 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %50 = call i32 @tcp_lro_rx_done(%struct.lro_ctrl* %49)
  br label %51

51:                                               ; preds = %47, %26
  %52 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %54 = call i64 @tcp_lro_rx2(%struct.lro_ctrl* %52, %struct.mbuf* %53, i32 0, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %58 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_4__*, %struct.mbuf*)*, i32 (%struct.TYPE_4__*, %struct.mbuf*)** %60, align 8
  %62 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %63 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %66 = call i32 %61(%struct.TYPE_4__* %64, %struct.mbuf* %65)
  %67 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %68 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %72 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %56, %51
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %20

79:                                               ; preds = %20
  br label %80

80:                                               ; preds = %79, %11
  %81 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %82 = call i32 @tcp_lro_rx_done(%struct.lro_ctrl* %81)
  %83 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %84 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  ret void
}

declare dso_local i32 @tcp_lro_sort(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @tcp_lro_rx_done(%struct.lro_ctrl*) #1

declare dso_local i64 @tcp_lro_rx2(%struct.lro_ctrl*, %struct.mbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
