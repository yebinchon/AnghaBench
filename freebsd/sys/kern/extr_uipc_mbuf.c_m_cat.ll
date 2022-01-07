; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_cat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i64, %struct.mbuf* }

@M_NOMAP = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_cat(%struct.mbuf* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  br label %5

5:                                                ; preds = %10, %2
  %6 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %7 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %6, i32 0, i32 2
  %8 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %9 = icmp ne %struct.mbuf* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %12 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %11, i32 0, i32 2
  %13 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %13, %struct.mbuf** %3, align 8
  br label %5

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %40, %14
  %16 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %17 = icmp ne %struct.mbuf* %16, null
  br i1 %17, label %18, label %65

18:                                               ; preds = %15
  %19 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %20 = call i32 @M_WRITABLE(%struct.mbuf* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @M_NOMAP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %31 = call i64 @M_TRAILINGSPACE(%struct.mbuf* %30)
  %32 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29, %22, %18
  %37 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 2
  store %struct.mbuf* %37, %struct.mbuf** %39, align 8
  br label %65

40:                                               ; preds = %29
  %41 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %42 = load i32, i32* @caddr_t, align 4
  %43 = call i64 @mtod(%struct.mbuf* %41, i32 %42)
  %44 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %45 = load i32, i32* @caddr_t, align 4
  %46 = call i64 @mtod(%struct.mbuf* %44, i32 %45)
  %47 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @bcopy(i64 %43, i64 %50, i32 %54)
  %56 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %64 = call %struct.mbuf* @m_free(%struct.mbuf* %63)
  store %struct.mbuf* %64, %struct.mbuf** %4, align 8
  br label %15

65:                                               ; preds = %36, %15
  ret void
}

declare dso_local i32 @M_WRITABLE(%struct.mbuf*) #1

declare dso_local i64 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @bcopy(i64, i64, i32) #1

declare dso_local i64 @mtod(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @m_free(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
