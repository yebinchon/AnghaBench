; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_alloc_request_lists.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_alloc_request_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i32, i32, i32, i32, i32, %struct.xbb_xen_reqlist*, i32 }
%struct.xbb_xen_reqlist = type { i32*, i32*, %struct.xbb_softc* }

@M_XENBLOCKBACK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to allocate request list structures\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to allocate request grant references\00", align 1
@GRANT_REF_INVALID = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xbb_softc*)* @xbb_alloc_request_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xbb_alloc_request_lists(%struct.xbb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xbb_softc*, align 8
  %4 = alloca %struct.xbb_xen_reqlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xbb_softc* %0, %struct.xbb_softc** %3, align 8
  %7 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %8 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 24
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @M_XENBLOCKBACK, align 4
  %14 = load i32, i32* @M_NOWAIT, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call i8* @malloc(i32 %12, i32 %13, i32 %16)
  %18 = bitcast i8* %17 to %struct.xbb_xen_reqlist*
  %19 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %20 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %19, i32 0, i32 5
  store %struct.xbb_xen_reqlist* %18, %struct.xbb_xen_reqlist** %20, align 8
  %21 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %22 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %21, i32 0, i32 5
  %23 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %22, align 8
  %24 = icmp eq %struct.xbb_xen_reqlist* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %27 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @xenbus_dev_fatal(i32 %28, i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %2, align 4
  br label %108

32:                                               ; preds = %1
  %33 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %34 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %33, i32 0, i32 3
  %35 = call i32 @STAILQ_INIT(i32* %34)
  %36 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %37 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %36, i32 0, i32 6
  %38 = call i32 @STAILQ_INIT(i32* %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %104, %32
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %42 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %107

45:                                               ; preds = %39
  %46 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %47 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %46, i32 0, i32 5
  %48 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %48, i64 %50
  store %struct.xbb_xen_reqlist* %51, %struct.xbb_xen_reqlist** %4, align 8
  %52 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %53 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %4, align 8
  %54 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %53, i32 0, i32 2
  store %struct.xbb_softc* %52, %struct.xbb_softc** %54, align 8
  %55 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %56 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @M_XENBLOCKBACK, align 4
  %62 = load i32, i32* @M_NOWAIT, align 4
  %63 = load i32, i32* @M_ZERO, align 4
  %64 = or i32 %62, %63
  %65 = call i8* @malloc(i32 %60, i32 %61, i32 %64)
  %66 = bitcast i8* %65 to i32*
  %67 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %4, align 8
  %68 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %67, i32 0, i32 0
  store i32* %66, i32** %68, align 8
  %69 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %4, align 8
  %70 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %45
  %74 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %75 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = call i32 @xenbus_dev_fatal(i32 %76, i32 %77, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @ENOMEM, align 4
  store i32 %79, i32* %2, align 4
  br label %108

80:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %95, %80
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %84 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load i32, i32* @GRANT_REF_INVALID, align 4
  %89 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %4, align 8
  %90 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  br label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %81

98:                                               ; preds = %81
  %99 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %100 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %99, i32 0, i32 3
  %101 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %4, align 8
  %102 = load i32, i32* @links, align 4
  %103 = call i32 @STAILQ_INSERT_TAIL(i32* %100, %struct.xbb_xen_reqlist* %101, i32 %102)
  br label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %39

107:                                              ; preds = %39
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %73, %25
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.xbb_xen_reqlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
