; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_Down.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_Down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp = type { i64, i32, %struct.mbuf*, %struct.TYPE_4__, i32 }
%struct.mbuf = type { %struct.mbuf* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_Down(%struct.mp* %0) #0 {
  %2 = alloca %struct.mp*, align 8
  %3 = alloca %struct.mbuf*, align 8
  store %struct.mp* %0, %struct.mp** %2, align 8
  %4 = load %struct.mp*, %struct.mp** %2, align 8
  %5 = getelementptr inbounds %struct.mp, %struct.mp* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %1
  %9 = load %struct.mp*, %struct.mp** %2, align 8
  %10 = call i32 @mp_StopAutoloadTimer(%struct.mp* %9)
  %11 = load %struct.mp*, %struct.mp** %2, align 8
  %12 = getelementptr inbounds %struct.mp, %struct.mp* %11, i32 0, i32 4
  %13 = call i32 @mpserver_Close(i32* %12)
  %14 = load %struct.mp*, %struct.mp** %2, align 8
  %15 = getelementptr inbounds %struct.mp, %struct.mp* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @fsm2initial(i32* %17)
  br label %19

19:                                               ; preds = %24, %8
  %20 = load %struct.mp*, %struct.mp** %2, align 8
  %21 = getelementptr inbounds %struct.mp, %struct.mp* %20, i32 0, i32 2
  %22 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %23 = icmp ne %struct.mbuf* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.mp*, %struct.mp** %2, align 8
  %26 = getelementptr inbounds %struct.mp, %struct.mp* %25, i32 0, i32 2
  %27 = load %struct.mbuf*, %struct.mbuf** %26, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = load %struct.mbuf*, %struct.mbuf** %28, align 8
  store %struct.mbuf* %29, %struct.mbuf** %3, align 8
  %30 = load %struct.mp*, %struct.mp** %2, align 8
  %31 = getelementptr inbounds %struct.mp, %struct.mp* %30, i32 0, i32 2
  %32 = load %struct.mbuf*, %struct.mbuf** %31, align 8
  %33 = call i32 @m_freem(%struct.mbuf* %32)
  %34 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %35 = load %struct.mp*, %struct.mp** %2, align 8
  %36 = getelementptr inbounds %struct.mp, %struct.mp* %35, i32 0, i32 2
  store %struct.mbuf* %34, %struct.mbuf** %36, align 8
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.mp*, %struct.mp** %2, align 8
  %39 = getelementptr inbounds %struct.mp, %struct.mp* %38, i32 0, i32 1
  %40 = call i32 @peerid_Init(i32* %39)
  %41 = load %struct.mp*, %struct.mp** %2, align 8
  %42 = getelementptr inbounds %struct.mp, %struct.mp* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @mp_StopAutoloadTimer(%struct.mp*) #1

declare dso_local i32 @mpserver_Close(i32*) #1

declare dso_local i32 @fsm2initial(i32*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @peerid_Init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
