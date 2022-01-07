; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf2.c_m_tag_locate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf2.c_m_tag_locate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.m_tag = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"m_tag_locate: null mbuf\00", align 1
@m_tag_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf* %0, i64 %1, i32 %2, %struct.m_tag* %3) #0 {
  %5 = alloca %struct.m_tag*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.m_tag*, align 8
  %10 = alloca %struct.m_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.m_tag* %3, %struct.m_tag** %9, align 8
  %11 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %12 = call i32 @KASSERT(%struct.mbuf* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.m_tag*, %struct.m_tag** %9, align 8
  %14 = icmp eq %struct.m_tag* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %17 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call %struct.m_tag* @SLIST_FIRST(i32* %18)
  store %struct.m_tag* %19, %struct.m_tag** %10, align 8
  br label %24

20:                                               ; preds = %4
  %21 = load %struct.m_tag*, %struct.m_tag** %9, align 8
  %22 = load i32, i32* @m_tag_link, align 4
  %23 = call %struct.m_tag* @SLIST_NEXT(%struct.m_tag* %21, i32 %22)
  store %struct.m_tag* %23, %struct.m_tag** %10, align 8
  br label %24

24:                                               ; preds = %20, %15
  br label %25

25:                                               ; preds = %42, %24
  %26 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %27 = icmp ne %struct.m_tag* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %30 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %36 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  store %struct.m_tag* %41, %struct.m_tag** %5, align 8
  br label %47

42:                                               ; preds = %34, %28
  %43 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %44 = load i32, i32* @m_tag_link, align 4
  %45 = call %struct.m_tag* @SLIST_NEXT(%struct.m_tag* %43, i32 %44)
  store %struct.m_tag* %45, %struct.m_tag** %10, align 8
  br label %25

46:                                               ; preds = %25
  store %struct.m_tag* null, %struct.m_tag** %5, align 8
  br label %47

47:                                               ; preds = %46, %40
  %48 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  ret %struct.m_tag* %48
}

declare dso_local i32 @KASSERT(%struct.mbuf*, i8*) #1

declare dso_local %struct.m_tag* @SLIST_FIRST(i32*) #1

declare dso_local %struct.m_tag* @SLIST_NEXT(%struct.m_tag*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
