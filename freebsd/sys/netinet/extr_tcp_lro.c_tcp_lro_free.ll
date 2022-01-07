; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lro_ctrl = type { i32, %struct.TYPE_2__*, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lro_entry = type { i32 }

@M_LRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_lro_free(%struct.lro_ctrl* %0) #0 {
  %2 = alloca %struct.lro_ctrl*, align 8
  %3 = alloca %struct.lro_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.lro_ctrl* %0, %struct.lro_ctrl** %2, align 8
  %5 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %6 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %5, i32 0, i32 5
  %7 = call i32 @LIST_INIT(i32* %6)
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %10 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %9, i32 0, i32 4
  %11 = call %struct.lro_entry* @LIST_FIRST(i32* %10)
  store %struct.lro_entry* %11, %struct.lro_entry** %3, align 8
  %12 = icmp ne %struct.lro_entry* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.lro_entry*, %struct.lro_entry** %3, align 8
  %15 = call i32 @tcp_lro_active_remove(%struct.lro_entry* %14)
  %16 = load %struct.lro_entry*, %struct.lro_entry** %3, align 8
  %17 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @m_freem(i32 %18)
  br label %8

20:                                               ; preds = %8
  %21 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %22 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* @M_LRO, align 4
  %25 = call i32 @free(%struct.TYPE_2__* %23, i32 %24)
  %26 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %27 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %26, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %27, align 8
  %28 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %29 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %46, %20
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %33 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %38 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @m_freem(i32 %44)
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %4, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %51 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %53 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* @M_LRO, align 4
  %56 = call i32 @free(%struct.TYPE_2__* %54, i32 %55)
  %57 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %58 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %57, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %58, align 8
  ret void
}

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local %struct.lro_entry* @LIST_FIRST(i32*) #1

declare dso_local i32 @tcp_lro_active_remove(%struct.lro_entry*) #1

declare dso_local i32 @m_freem(i32) #1

declare dso_local i32 @free(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
