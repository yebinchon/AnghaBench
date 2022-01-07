; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_netisr.c_netisr_queue_workstream.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_netisr.c_netisr_queue_workstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netisr_workstream = type { i32, i32 }
%struct.netisr_work = type { i64, i64, i64, i32, i32, %struct.mbuf*, %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }

@NWS_RUNNING = common dso_local global i32 0, align 4
@NWS_DISPATCHING = common dso_local global i32 0, align 4
@NWS_SCHEDULED = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netisr_workstream*, i32, %struct.netisr_work*, %struct.mbuf*, i32*)* @netisr_queue_workstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netisr_queue_workstream(%struct.netisr_workstream* %0, i32 %1, %struct.netisr_work* %2, %struct.mbuf* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.netisr_workstream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netisr_work*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32*, align 8
  store %struct.netisr_workstream* %0, %struct.netisr_workstream** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.netisr_work* %2, %struct.netisr_work** %9, align 8
  store %struct.mbuf* %3, %struct.mbuf** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.netisr_workstream*, %struct.netisr_workstream** %7, align 8
  %13 = call i32 @NWS_LOCK_ASSERT(%struct.netisr_workstream* %12)
  %14 = load i32*, i32** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.netisr_work*, %struct.netisr_work** %9, align 8
  %16 = getelementptr inbounds %struct.netisr_work, %struct.netisr_work* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.netisr_work*, %struct.netisr_work** %9, align 8
  %19 = getelementptr inbounds %struct.netisr_work, %struct.netisr_work* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %92

22:                                               ; preds = %5
  %23 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %24, align 8
  %25 = load %struct.netisr_work*, %struct.netisr_work** %9, align 8
  %26 = getelementptr inbounds %struct.netisr_work, %struct.netisr_work* %25, i32 0, i32 6
  %27 = load %struct.mbuf*, %struct.mbuf** %26, align 8
  %28 = icmp eq %struct.mbuf* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %31 = load %struct.netisr_work*, %struct.netisr_work** %9, align 8
  %32 = getelementptr inbounds %struct.netisr_work, %struct.netisr_work* %31, i32 0, i32 6
  store %struct.mbuf* %30, %struct.mbuf** %32, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %34 = load %struct.netisr_work*, %struct.netisr_work** %9, align 8
  %35 = getelementptr inbounds %struct.netisr_work, %struct.netisr_work* %34, i32 0, i32 5
  store %struct.mbuf* %33, %struct.mbuf** %35, align 8
  br label %45

36:                                               ; preds = %22
  %37 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %38 = load %struct.netisr_work*, %struct.netisr_work** %9, align 8
  %39 = getelementptr inbounds %struct.netisr_work, %struct.netisr_work* %38, i32 0, i32 5
  %40 = load %struct.mbuf*, %struct.mbuf** %39, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 0
  store %struct.mbuf* %37, %struct.mbuf** %41, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %43 = load %struct.netisr_work*, %struct.netisr_work** %9, align 8
  %44 = getelementptr inbounds %struct.netisr_work, %struct.netisr_work* %43, i32 0, i32 5
  store %struct.mbuf* %42, %struct.mbuf** %44, align 8
  br label %45

45:                                               ; preds = %36, %29
  %46 = load %struct.netisr_work*, %struct.netisr_work** %9, align 8
  %47 = getelementptr inbounds %struct.netisr_work, %struct.netisr_work* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.netisr_work*, %struct.netisr_work** %9, align 8
  %51 = getelementptr inbounds %struct.netisr_work, %struct.netisr_work* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.netisr_work*, %struct.netisr_work** %9, align 8
  %54 = getelementptr inbounds %struct.netisr_work, %struct.netisr_work* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %45
  %58 = load %struct.netisr_work*, %struct.netisr_work** %9, align 8
  %59 = getelementptr inbounds %struct.netisr_work, %struct.netisr_work* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.netisr_work*, %struct.netisr_work** %9, align 8
  %62 = getelementptr inbounds %struct.netisr_work, %struct.netisr_work* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %57, %45
  %64 = load i32, i32* %8, align 4
  %65 = shl i32 1, %64
  %66 = load %struct.netisr_workstream*, %struct.netisr_workstream** %7, align 8
  %67 = getelementptr inbounds %struct.netisr_workstream, %struct.netisr_workstream* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.netisr_workstream*, %struct.netisr_workstream** %7, align 8
  %71 = getelementptr inbounds %struct.netisr_workstream, %struct.netisr_workstream* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NWS_RUNNING, align 4
  %74 = load i32, i32* @NWS_DISPATCHING, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @NWS_SCHEDULED, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %72, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %63
  %81 = load i32, i32* @NWS_SCHEDULED, align 4
  %82 = load %struct.netisr_workstream*, %struct.netisr_workstream** %7, align 8
  %83 = getelementptr inbounds %struct.netisr_workstream, %struct.netisr_workstream* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32*, i32** %11, align 8
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %63
  %88 = load %struct.netisr_work*, %struct.netisr_work** %9, align 8
  %89 = getelementptr inbounds %struct.netisr_work, %struct.netisr_work* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  store i32 0, i32* %6, align 4
  br label %100

92:                                               ; preds = %5
  %93 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %94 = call i32 @m_freem(%struct.mbuf* %93)
  %95 = load %struct.netisr_work*, %struct.netisr_work** %9, align 8
  %96 = getelementptr inbounds %struct.netisr_work, %struct.netisr_work* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* @ENOBUFS, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %92, %87
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @NWS_LOCK_ASSERT(%struct.netisr_workstream*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
