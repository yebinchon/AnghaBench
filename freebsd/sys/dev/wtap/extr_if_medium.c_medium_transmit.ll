; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wtap/extr_if_medium.c_medium_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wtap/extr_if_medium.c_medium_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wtap_medium = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.packet = type { i32, %struct.mbuf* }

@.str = private unnamed_addr constant [20 x i8] c"[%d] dropping m=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"[%d] transmiting m=%p\0A\00", align 1
@M_WTAP_PACKET = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@pf_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @medium_transmit(%struct.wtap_medium* %0, i32 %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wtap_medium*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.packet*, align 8
  store %struct.wtap_medium* %0, %struct.wtap_medium** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %9 = load %struct.wtap_medium*, %struct.wtap_medium** %5, align 8
  %10 = getelementptr inbounds %struct.wtap_medium, %struct.wtap_medium* %9, i32 0, i32 1
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.wtap_medium*, %struct.wtap_medium** %5, align 8
  %13 = getelementptr inbounds %struct.wtap_medium, %struct.wtap_medium* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %19 = call i32 @DWTAP_PRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.mbuf* %18)
  %20 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %21 = call i32 @m_free(%struct.mbuf* %20)
  %22 = load %struct.wtap_medium*, %struct.wtap_medium** %5, align 8
  %23 = getelementptr inbounds %struct.wtap_medium, %struct.wtap_medium* %22, i32 0, i32 1
  %24 = call i32 @mtx_unlock(i32* %23)
  store i32 0, i32* %4, align 4
  br label %59

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %28 = call i32 @DWTAP_PRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %26, %struct.mbuf* %27)
  %29 = load i32, i32* @M_WTAP_PACKET, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = load i32, i32* @M_NOWAIT, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @malloc(i32 16, i32 %29, i32 %32)
  %34 = inttoptr i64 %33 to %struct.packet*
  store %struct.packet* %34, %struct.packet** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.packet*, %struct.packet** %8, align 8
  %37 = getelementptr inbounds %struct.packet, %struct.packet* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %39 = load %struct.packet*, %struct.packet** %8, align 8
  %40 = getelementptr inbounds %struct.packet, %struct.packet* %39, i32 0, i32 1
  store %struct.mbuf* %38, %struct.mbuf** %40, align 8
  %41 = load %struct.wtap_medium*, %struct.wtap_medium** %5, align 8
  %42 = getelementptr inbounds %struct.wtap_medium, %struct.wtap_medium* %41, i32 0, i32 3
  %43 = load %struct.packet*, %struct.packet** %8, align 8
  %44 = load i32, i32* @pf_list, align 4
  %45 = call i32 @STAILQ_INSERT_TAIL(i32* %42, %struct.packet* %43, i32 %44)
  %46 = load %struct.wtap_medium*, %struct.wtap_medium** %5, align 8
  %47 = getelementptr inbounds %struct.wtap_medium, %struct.wtap_medium* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wtap_medium*, %struct.wtap_medium** %5, align 8
  %52 = getelementptr inbounds %struct.wtap_medium, %struct.wtap_medium* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @taskqueue_enqueue(i32 %50, i32* %54)
  %56 = load %struct.wtap_medium*, %struct.wtap_medium** %5, align 8
  %57 = getelementptr inbounds %struct.wtap_medium, %struct.wtap_medium* %56, i32 0, i32 1
  %58 = call i32 @mtx_unlock(i32* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %25, %16
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @DWTAP_PRINTF(i8*, i32, %struct.mbuf*) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.packet*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
