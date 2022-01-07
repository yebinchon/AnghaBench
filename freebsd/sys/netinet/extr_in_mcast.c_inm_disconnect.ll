; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_inm_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_inm_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_multi = type { %struct.ifmultiaddr*, %struct.ifnet* }
%struct.ifmultiaddr = type { i32, i64, %struct.ifnet*, %struct.ifmultiaddr* }
%struct.ifnet = type { i32, i32 }

@IFMA_F_ENQUEUED = common dso_local global i32 0, align 4
@ifmultiaddr = common dso_local global i32 0, align 4
@ifma_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"removed ifma: %p from %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"removed ll_ifma: %p from %s\0A\00", align 1
@ifma_restart = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inm_disconnect(%struct.in_multi* %0) #0 {
  %2 = alloca %struct.in_multi*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmultiaddr*, align 8
  %5 = alloca %struct.ifmultiaddr*, align 8
  store %struct.in_multi* %0, %struct.in_multi** %2, align 8
  %6 = load %struct.in_multi*, %struct.in_multi** %2, align 8
  %7 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %6, i32 0, i32 1
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = call i32 @IF_ADDR_WLOCK_ASSERT(%struct.ifnet* %9)
  %11 = load %struct.in_multi*, %struct.in_multi** %2, align 8
  %12 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %11, i32 0, i32 0
  %13 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %12, align 8
  store %struct.ifmultiaddr* %13, %struct.ifmultiaddr** %4, align 8
  %14 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %15 = call i32 @if_ref(%struct.ifnet* %14)
  %16 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %4, align 8
  %17 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IFMA_F_ENQUEUED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 1
  %25 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %4, align 8
  %26 = load i32, i32* @ifmultiaddr, align 4
  %27 = load i32, i32* @ifma_link, align 4
  %28 = call i32 @CK_STAILQ_REMOVE(i32* %24, %struct.ifmultiaddr* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @IFMA_F_ENQUEUED, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %4, align 8
  %32 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %22, %1
  %36 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %4, align 8
  %37 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MCDPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.ifmultiaddr* %36, i32 %39)
  %41 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %4, align 8
  %42 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %41, i32 0, i32 3
  %43 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %42, align 8
  store %struct.ifmultiaddr* %43, %struct.ifmultiaddr** %5, align 8
  %44 = icmp ne %struct.ifmultiaddr* %43, null
  br i1 %44, label %45, label %100

45:                                               ; preds = %35
  %46 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %4, align 8
  %47 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %5, align 8
  %48 = icmp ne %struct.ifmultiaddr* %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @MPASS(i32 %49)
  %51 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %4, align 8
  %52 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %51, i32 0, i32 3
  store %struct.ifmultiaddr* null, %struct.ifmultiaddr** %52, align 8
  %53 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %5, align 8
  %54 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %53, i32 0, i32 3
  %55 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %54, align 8
  %56 = icmp eq %struct.ifmultiaddr* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @MPASS(i32 %57)
  %59 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %5, align 8
  %60 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %59, i32 0, i32 2
  %61 = load %struct.ifnet*, %struct.ifnet** %60, align 8
  %62 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %63 = icmp eq %struct.ifnet* %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @MPASS(i32 %64)
  %66 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %5, align 8
  %67 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %45
  %72 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %5, align 8
  %73 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IFMA_F_ENQUEUED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %71
  %79 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %80 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %79, i32 0, i32 1
  %81 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %5, align 8
  %82 = load i32, i32* @ifmultiaddr, align 4
  %83 = load i32, i32* @ifma_link, align 4
  %84 = call i32 @CK_STAILQ_REMOVE(i32* %80, %struct.ifmultiaddr* %81, i32 %82, i32 %83)
  %85 = load i32, i32* @IFMA_F_ENQUEUED, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %5, align 8
  %88 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %78, %71
  %92 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %5, align 8
  %93 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %94 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @MCDPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.ifmultiaddr* %92, i32 %95)
  %97 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %5, align 8
  %98 = call i32 @if_freemulti(%struct.ifmultiaddr* %97)
  store i32 1, i32* @ifma_restart, align 4
  br label %99

99:                                               ; preds = %91, %45
  br label %100

100:                                              ; preds = %99, %35
  ret void
}

declare dso_local i32 @IF_ADDR_WLOCK_ASSERT(%struct.ifnet*) #1

declare dso_local i32 @if_ref(%struct.ifnet*) #1

declare dso_local i32 @CK_STAILQ_REMOVE(i32*, %struct.ifmultiaddr*, i32, i32) #1

declare dso_local i32 @MCDPRINTF(i8*, %struct.ifmultiaddr*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @if_freemulti(%struct.ifmultiaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
