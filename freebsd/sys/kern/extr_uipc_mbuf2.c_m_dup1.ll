; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf2.c_m_dup1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf2.c_m_dup1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, i32 }

@MCLBYTES = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@MINCLSIZE = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.mbuf*, i32, i32, i32)* @m_dup1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @m_dup1(%struct.mbuf* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @MCLBYTES, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %93

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @M_PKTHDR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 1, i32* %11, align 4
  br label %28

27:                                               ; preds = %19, %16
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @MINCLSIZE, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @M_PKTHDR, align 4
  %41 = call %struct.mbuf* @m_getcl(i32 %36, i32 %39, i32 %40)
  store %struct.mbuf* %41, %struct.mbuf** %10, align 8
  br label %48

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.mbuf* @m_getcl(i32 %43, i32 %46, i32 0)
  store %struct.mbuf* %47, %struct.mbuf** %10, align 8
  br label %48

48:                                               ; preds = %42, %35
  br label %65

49:                                               ; preds = %28
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.mbuf* @m_gethdr(i32 %53, i32 %56)
  store %struct.mbuf* %57, %struct.mbuf** %10, align 8
  br label %64

58:                                               ; preds = %49
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %61 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.mbuf* @m_get(i32 %59, i32 %62)
  store %struct.mbuf* %63, %struct.mbuf** %10, align 8
  br label %64

64:                                               ; preds = %58, %52
  br label %65

65:                                               ; preds = %64, %48
  %66 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %67 = icmp ne %struct.mbuf* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %93

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %74 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @m_dup_pkthdr(%struct.mbuf* %73, %struct.mbuf* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %80 = call i32 @m_free(%struct.mbuf* %79)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %93

81:                                               ; preds = %72, %69
  %82 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %86 = load i32, i32* @caddr_t, align 4
  %87 = call i32 @mtod(%struct.mbuf* %85, i32 %86)
  %88 = call i32 @m_copydata(%struct.mbuf* %82, i32 %83, i32 %84, i32 %87)
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %92, %struct.mbuf** %5, align 8
  br label %93

93:                                               ; preds = %81, %78, %68, %15
  %94 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %94
}

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @m_dup_pkthdr(%struct.mbuf*, %struct.mbuf*, i32) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
