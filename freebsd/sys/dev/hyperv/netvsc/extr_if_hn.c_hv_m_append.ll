; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hv_m_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hv_m_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, %struct.TYPE_2__, %struct.mbuf*, i32 }
%struct.TYPE_2__ = type { i32 }

@caddr_t = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MJUMPAGESIZE = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, i32, i32)* @hv_m_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_m_append(%struct.mbuf* %0, i32 %1, i32 %2) #0 {
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

57:                                               ; preds = %70, %56
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %98

60:                                               ; preds = %57
  %61 = load i32, i32* @M_NOWAIT, align 4
  %62 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MJUMPAGESIZE, align 4
  %66 = call %struct.mbuf* @m_getjcl(i32 %61, i32 %64, i32 0, i32 %65)
  store %struct.mbuf* %66, %struct.mbuf** %8, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %68 = icmp eq %struct.mbuf* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %98

70:                                               ; preds = %60
  %71 = load i32, i32* @MJUMPAGESIZE, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @min(i32 %71, i32 %72)
  %74 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %78 = load i32, i32* @caddr_t, align 4
  %79 = call i32 @mtod(%struct.mbuf* %77, i32 %78)
  %80 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %81 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @bcopy(i32 %76, i32 %79, i32 %82)
  %84 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %85 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %90 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %95 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %96 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %95, i32 0, i32 3
  store %struct.mbuf* %94, %struct.mbuf** %96, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %97, %struct.mbuf** %7, align 8
  br label %57

98:                                               ; preds = %69, %57
  %99 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @M_PKTHDR, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %98
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %110 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, %108
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %105, %98
  %115 = load i32, i32* %9, align 4
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  ret i32 %117
}

declare dso_local i32 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @m_getjcl(i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
