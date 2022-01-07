; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_prepend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_prepend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, %struct.mbuf*, i32 }

@M_PKTHDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_prepend(%struct.mbuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %10 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @M_PKTHDR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.mbuf* @m_gethdr(i32 %16, i32 %19)
  store %struct.mbuf* %20, %struct.mbuf** %8, align 8
  br label %27

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.mbuf* @m_get(i32 %22, i32 %25)
  store %struct.mbuf* %26, %struct.mbuf** %8, align 8
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %29 = icmp eq %struct.mbuf* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %32 = call i32 @m_freem(%struct.mbuf* %31)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %62

33:                                               ; preds = %27
  %34 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @M_PKTHDR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %43 = call i32 @m_move_pkthdr(%struct.mbuf* %41, %struct.mbuf* %42)
  br label %44

44:                                               ; preds = %40, %33
  %45 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 2
  store %struct.mbuf* %45, %struct.mbuf** %47, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %48, %struct.mbuf** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %51 = call i32 @M_SIZE(%struct.mbuf* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @M_ALIGN(%struct.mbuf* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %44
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %61, %struct.mbuf** %4, align 8
  br label %62

62:                                               ; preds = %57, %30
  %63 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %63
}

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_move_pkthdr(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @M_SIZE(%struct.mbuf*) #1

declare dso_local i32 @M_ALIGN(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
