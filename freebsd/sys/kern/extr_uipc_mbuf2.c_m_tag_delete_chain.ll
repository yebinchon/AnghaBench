; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf2.c_m_tag_delete_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf2.c_m_tag_delete_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.m_tag = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"m_tag_delete_chain: null mbuf\00", align 1
@m_tag_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_tag_delete_chain(%struct.mbuf* %0, %struct.m_tag* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.m_tag*, align 8
  %5 = alloca %struct.m_tag*, align 8
  %6 = alloca %struct.m_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.m_tag* %1, %struct.m_tag** %4, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %8 = call i32 @KASSERT(%struct.mbuf* %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %10 = icmp ne %struct.m_tag* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  store %struct.m_tag* %12, %struct.m_tag** %5, align 8
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call %struct.m_tag* @SLIST_FIRST(i32* %16)
  store %struct.m_tag* %17, %struct.m_tag** %5, align 8
  br label %18

18:                                               ; preds = %13, %11
  %19 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %20 = icmp eq %struct.m_tag* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %36

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %28, %22
  %24 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %25 = load i32, i32* @m_tag_link, align 4
  %26 = call %struct.m_tag* @SLIST_NEXT(%struct.m_tag* %24, i32 %25)
  store %struct.m_tag* %26, %struct.m_tag** %6, align 8
  %27 = icmp ne %struct.m_tag* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %30 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %31 = call i32 @m_tag_delete(%struct.mbuf* %29, %struct.m_tag* %30)
  br label %23

32:                                               ; preds = %23
  %33 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %34 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %35 = call i32 @m_tag_delete(%struct.mbuf* %33, %struct.m_tag* %34)
  br label %36

36:                                               ; preds = %32, %21
  ret void
}

declare dso_local i32 @KASSERT(%struct.mbuf*, i8*) #1

declare dso_local %struct.m_tag* @SLIST_FIRST(i32*) #1

declare dso_local %struct.m_tag* @SLIST_NEXT(%struct.m_tag*, i32) #1

declare dso_local i32 @m_tag_delete(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
