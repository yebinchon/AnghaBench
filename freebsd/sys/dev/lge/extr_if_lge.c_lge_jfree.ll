; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/lge/extr_if_lge.c_lge_jfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/lge/extr_if_lge.c_lge_jfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.lge_softc* }
%struct.lge_softc = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.lge_jpool_entry = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"lge_jfree: can't find softc pointer!\00", align 1
@LGE_JLEN = common dso_local global i32 0, align 4
@LGE_JSLOTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"lge_jfree: asked to free buffer that we don't manage!\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"lge_jfree: buffer not in use!\00", align 1
@jpool_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*)* @lge_jfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lge_jfree(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.lge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lge_jpool_entry*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %7 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.lge_softc*, %struct.lge_softc** %8, align 8
  store %struct.lge_softc* %9, %struct.lge_softc** %3, align 8
  %10 = load %struct.lge_softc*, %struct.lge_softc** %3, align 8
  %11 = icmp eq %struct.lge_softc* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.lge_softc*, %struct.lge_softc** %3, align 8
  %21 = getelementptr inbounds %struct.lge_softc, %struct.lge_softc* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = sub nsw i32 %19, %24
  %26 = load i32, i32* @LGE_JLEN, align 4
  %27 = sdiv i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @LGE_JSLOTS, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %14
  %35 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = load %struct.lge_softc*, %struct.lge_softc** %3, align 8
  %38 = getelementptr inbounds %struct.lge_softc, %struct.lge_softc* %37, i32 0, i32 1
  %39 = call %struct.lge_jpool_entry* @SLIST_FIRST(i32* %38)
  store %struct.lge_jpool_entry* %39, %struct.lge_jpool_entry** %5, align 8
  %40 = load %struct.lge_jpool_entry*, %struct.lge_jpool_entry** %5, align 8
  %41 = icmp eq %struct.lge_jpool_entry* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.lge_jpool_entry*, %struct.lge_jpool_entry** %5, align 8
  %47 = getelementptr inbounds %struct.lge_jpool_entry, %struct.lge_jpool_entry* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.lge_softc*, %struct.lge_softc** %3, align 8
  %49 = getelementptr inbounds %struct.lge_softc, %struct.lge_softc* %48, i32 0, i32 1
  %50 = load i32, i32* @jpool_entries, align 4
  %51 = call i32 @SLIST_REMOVE_HEAD(i32* %49, i32 %50)
  %52 = load %struct.lge_softc*, %struct.lge_softc** %3, align 8
  %53 = getelementptr inbounds %struct.lge_softc, %struct.lge_softc* %52, i32 0, i32 0
  %54 = load %struct.lge_jpool_entry*, %struct.lge_jpool_entry** %5, align 8
  %55 = load i32, i32* @jpool_entries, align 4
  %56 = call i32 @SLIST_INSERT_HEAD(i32* %53, %struct.lge_jpool_entry* %54, i32 %55)
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.lge_jpool_entry* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.lge_jpool_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
