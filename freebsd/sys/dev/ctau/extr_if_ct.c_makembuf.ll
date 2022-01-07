; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_if_ct.c_makembuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_if_ct.c_makembuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (i8*, i32)* @makembuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @makembuf(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = load i32, i32* @MT_DATA, align 4
  %10 = call i32 @MGETHDR(%struct.mbuf* %7, i32 %8, i32 %9)
  %11 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %12 = icmp ne %struct.mbuf* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %16 = load i32, i32* @M_NOWAIT, align 4
  %17 = call i32 @MCLGET(%struct.mbuf* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %21 = call i32 @m_freem(%struct.mbuf* %20)
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %36

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %31 = load i32, i32* @caddr_t, align 4
  %32 = call i32 @mtod(%struct.mbuf* %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @bcopy(i8* %29, i32 %32, i32 %33)
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %35, %struct.mbuf** %3, align 8
  br label %36

36:                                               ; preds = %22, %19, %13
  %37 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %37
}

declare dso_local i32 @MGETHDR(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @MCLGET(%struct.mbuf*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
