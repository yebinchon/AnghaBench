; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_bio_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_bio_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i64, i64, i32, i64, %struct.xbb_xen_reqlist* }
%struct.xbb_xen_reqlist = type { i32, i32, i64, i64, i32, %struct.xbb_softc* }
%struct.xbb_softc = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"BIO returned error %d for operation on device %s\0A\00", align 1
@BLKIF_RSP_ERROR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i64 0, align 8
@XenbusStateConnected = common dso_local global i64 0, align 8
@XenbusStateClosing = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @xbb_bio_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbb_bio_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.xbb_softc*, align 8
  %4 = alloca %struct.xbb_xen_reqlist*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 5
  %7 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %6, align 8
  store %struct.xbb_xen_reqlist* %7, %struct.xbb_xen_reqlist** %4, align 8
  %8 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %4, align 8
  %9 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %8, i32 0, i32 5
  %10 = load %struct.xbb_softc*, %struct.xbb_softc** %9, align 8
  store %struct.xbb_softc* %10, %struct.xbb_softc** %3, align 8
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = ashr i32 %13, 9
  %15 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %4, align 8
  %16 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %1
  %24 = load %struct.bio*, %struct.bio** %2, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %28 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DPRINTF(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %29)
  %31 = load i32, i32* @BLKIF_RSP_ERROR, align 4
  %32 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %4, align 8
  %33 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.bio*, %struct.bio** %2, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ENXIO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %23
  %40 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %41 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @xenbus_get_state(i32 %42)
  %44 = load i64, i64* @XenbusStateConnected, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %48 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @XenbusStateClosing, align 4
  %51 = call i32 @xenbus_set_state(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %39, %23
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %4, align 8
  %55 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %54, i32 0, i32 1
  %56 = call i32 @atomic_fetchadd_int(i32* %55, i32 -1)
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %60 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %4, align 8
  %61 = call i32 @xbb_complete_reqlist(%struct.xbb_softc* %59, %struct.xbb_xen_reqlist* %60)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.bio*, %struct.bio** %2, align 8
  %64 = call i32 @g_destroy_bio(%struct.bio* %63)
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i64, i32) #1

declare dso_local i64 @xenbus_get_state(i32) #1

declare dso_local i32 @xenbus_set_state(i32, i32) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @xbb_complete_reqlist(%struct.xbb_softc*, %struct.xbb_xen_reqlist*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
