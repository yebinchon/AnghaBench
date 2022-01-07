; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_alloc_requests.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_alloc_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i32, i32, %struct.xbb_xen_req*, i32 }
%struct.xbb_xen_req = type { i32 }

@M_XENBLOCKBACK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unable to allocate request structures\00", align 1
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xbb_softc*)* @xbb_alloc_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xbb_alloc_requests(%struct.xbb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xbb_softc*, align 8
  %4 = alloca %struct.xbb_xen_req*, align 8
  %5 = alloca %struct.xbb_xen_req*, align 8
  store %struct.xbb_softc* %0, %struct.xbb_softc** %3, align 8
  %6 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %7 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @M_XENBLOCKBACK, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.xbb_xen_req* @malloc(i32 %11, i32 %12, i32 %15)
  %17 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %18 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %17, i32 0, i32 2
  store %struct.xbb_xen_req* %16, %struct.xbb_xen_req** %18, align 8
  %19 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %20 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %19, i32 0, i32 2
  %21 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %20, align 8
  %22 = icmp eq %struct.xbb_xen_req* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %25 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = call i32 @xenbus_dev_fatal(i32 %26, i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %2, align 4
  br label %59

30:                                               ; preds = %1
  %31 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %32 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %31, i32 0, i32 2
  %33 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %32, align 8
  store %struct.xbb_xen_req* %33, %struct.xbb_xen_req** %4, align 8
  %34 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %35 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %34, i32 0, i32 2
  %36 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %35, align 8
  %37 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %38 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.xbb_xen_req, %struct.xbb_xen_req* %36, i64 %41
  store %struct.xbb_xen_req* %42, %struct.xbb_xen_req** %5, align 8
  %43 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %44 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %43, i32 0, i32 1
  %45 = call i32 @STAILQ_INIT(i32* %44)
  br label %46

46:                                               ; preds = %50, %30
  %47 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %4, align 8
  %48 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %5, align 8
  %49 = icmp ule %struct.xbb_xen_req* %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %52 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %51, i32 0, i32 1
  %53 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %4, align 8
  %54 = load i32, i32* @links, align 4
  %55 = call i32 @STAILQ_INSERT_TAIL(i32* %52, %struct.xbb_xen_req* %53, i32 %54)
  %56 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %4, align 8
  %57 = getelementptr inbounds %struct.xbb_xen_req, %struct.xbb_xen_req* %56, i32 1
  store %struct.xbb_xen_req* %57, %struct.xbb_xen_req** %4, align 8
  br label %46

58:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %23
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.xbb_xen_req* @malloc(i32, i32, i32) #1

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.xbb_xen_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
