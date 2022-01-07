; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, %struct.TYPE_2__, %struct.mbuf*, i32 }
%struct.TYPE_2__ = type { i32 }

@caddr_t = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MLEN = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_append(%struct.mbuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %11, %struct.mbuf** %7, align 8
  br label %12

12:                                               ; preds = %18, %3
  %13 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 3
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %16 = icmp ne %struct.mbuf* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 3
  %21 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  store %struct.mbuf* %21, %struct.mbuf** %7, align 8
  br label %12

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %25 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %37 = load i32, i32* @caddr_t, align 4
  %38 = call i32 @mtod(%struct.mbuf* %36, i32 %37)
  %39 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %40 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %38, %41
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @bcopy(i32 %35, i32 %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %34, %22
  br label %57

57:                                               ; preds = %69, %56
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %97

60:                                               ; preds = %57
  %61 = load i32, i32* @M_NOWAIT, align 4
  %62 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.mbuf* @m_get(i32 %61, i32 %64)
  store %struct.mbuf* %65, %struct.mbuf** %8, align 8
  %66 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %67 = icmp eq %struct.mbuf* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %97

69:                                               ; preds = %60
  %70 = load i32, i32* @MLEN, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @min(i32 %70, i32 %71)
  %73 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %74 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %77 = load i32, i32* @caddr_t, align 4
  %78 = call i32 @mtod(%struct.mbuf* %76, i32 %77)
  %79 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @bcopy(i32 %75, i32 %78, i32 %81)
  %83 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %84 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %94 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %95 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %94, i32 0, i32 3
  store %struct.mbuf* %93, %struct.mbuf** %95, align 8
  %96 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %96, %struct.mbuf** %7, align 8
  br label %57

97:                                               ; preds = %68, %57
  %98 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %99 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @M_PKTHDR, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %109 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, %107
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %104, %97
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %114, 0
  %116 = zext i1 %115 to i32
  ret i32 %116
}

declare dso_local i32 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
