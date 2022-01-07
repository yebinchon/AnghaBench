; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i32, i64, i32, %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist*, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.xbb_xen_reqlist = type { %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist* }
%struct.TYPE_2__ = type { i64, i32*, i32*, i64 }
%struct.gnttab_unmap_grant_ref = type { i32, i32, i64 }

@XBB_MAX_RING_PAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@XBBF_RING_CONNECTED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@GNTTABOP_unmap_grant_ref = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Grant table op failed (%d)\00", align 1
@M_XENBLOCKBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xbb_softc*)* @xbb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xbb_disconnect(%struct.xbb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xbb_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gnttab_unmap_grant_ref*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xbb_xen_reqlist*, align 8
  %11 = alloca i32, align 4
  store %struct.xbb_softc* %0, %struct.xbb_softc** %3, align 8
  %12 = load i32, i32* @XBB_MAX_RING_PAGES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca %struct.gnttab_unmap_grant_ref, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %18 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @XBBF_RING_CONNECTED, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %164

24:                                               ; preds = %1
  %25 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %26 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %25, i32 0, i32 6
  %27 = call i32 @mtx_unlock(i32* %26)
  %28 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %28, i32 0, i32 9
  %30 = call i32 @xen_intr_unbind(i32* %29)
  %31 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %32 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %35 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %34, i32 0, i32 7
  %36 = call i32 @taskqueue_drain(i32 %33, i32* %35)
  %37 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %38 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %37, i32 0, i32 6
  %39 = call i32 @mtx_lock(i32* %38)
  %40 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %41 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %24
  %45 = load i32, i32* @EAGAIN, align 4
  store i32 %45, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %164

46:                                               ; preds = %24
  store i64 0, i64* %7, align 8
  store %struct.gnttab_unmap_grant_ref* %15, %struct.gnttab_unmap_grant_ref** %6, align 8
  br label %47

47:                                               ; preds = %83, %46
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %50 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %48, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %47
  %55 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %56 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @PAGE_SIZE, align 8
  %61 = mul i64 %59, %60
  %62 = add i64 %58, %61
  %63 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %6, align 8
  %64 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %66 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %6, align 8
  %73 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %75 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %6, align 8
  %82 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %54
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %7, align 8
  %86 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %6, align 8
  %87 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %86, i32 1
  store %struct.gnttab_unmap_grant_ref* %87, %struct.gnttab_unmap_grant_ref** %6, align 8
  br label %47

88:                                               ; preds = %47
  %89 = load i32, i32* @GNTTABOP_unmap_grant_ref, align 4
  %90 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %91 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @HYPERVISOR_grant_table_op(i32 %89, %struct.gnttab_unmap_grant_ref* %15, i64 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %97, %88
  %101 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %102 = call i32 @xbb_free_communication_mem(%struct.xbb_softc* %101)
  %103 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %104 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %103, i32 0, i32 4
  %105 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %104, align 8
  %106 = icmp ne %struct.xbb_xen_reqlist* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %109 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %108, i32 0, i32 4
  %110 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %109, align 8
  %111 = load i32, i32* @M_XENBLOCKBACK, align 4
  %112 = call i32 @free(%struct.xbb_xen_reqlist* %110, i32 %111)
  %113 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %114 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %113, i32 0, i32 4
  store %struct.xbb_xen_reqlist* null, %struct.xbb_xen_reqlist** %114, align 8
  br label %115

115:                                              ; preds = %107, %100
  %116 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %117 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %116, i32 0, i32 3
  %118 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %117, align 8
  %119 = icmp ne %struct.xbb_xen_reqlist* %118, null
  br i1 %119, label %120, label %157

120:                                              ; preds = %115
  store i32 0, i32* %11, align 4
  %121 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %122 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %121, i32 0, i32 3
  %123 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %122, align 8
  store %struct.xbb_xen_reqlist* %123, %struct.xbb_xen_reqlist** %10, align 8
  br label %124

124:                                              ; preds = %144, %120
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %127 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %149

130:                                              ; preds = %124
  %131 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %132 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %131, i32 0, i32 0
  %133 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %132, align 8
  %134 = icmp ne %struct.xbb_xen_reqlist* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %137 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %136, i32 0, i32 0
  %138 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %137, align 8
  %139 = load i32, i32* @M_XENBLOCKBACK, align 4
  %140 = call i32 @free(%struct.xbb_xen_reqlist* %138, i32 %139)
  %141 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %142 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %141, i32 0, i32 0
  store %struct.xbb_xen_reqlist* null, %struct.xbb_xen_reqlist** %142, align 8
  br label %143

143:                                              ; preds = %135, %130
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  %147 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %148 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %147, i32 1
  store %struct.xbb_xen_reqlist* %148, %struct.xbb_xen_reqlist** %10, align 8
  br label %124

149:                                              ; preds = %124
  %150 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %151 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %150, i32 0, i32 3
  %152 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %151, align 8
  %153 = load i32, i32* @M_XENBLOCKBACK, align 4
  %154 = call i32 @free(%struct.xbb_xen_reqlist* %152, i32 %153)
  %155 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %156 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %155, i32 0, i32 3
  store %struct.xbb_xen_reqlist* null, %struct.xbb_xen_reqlist** %156, align 8
  br label %157

157:                                              ; preds = %149, %115
  %158 = load i32, i32* @XBBF_RING_CONNECTED, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %161 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %164

164:                                              ; preds = %157, %44, %23
  %165 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DPRINTF(i8*) #2

declare dso_local i32 @mtx_unlock(i32*) #2

declare dso_local i32 @xen_intr_unbind(i32*) #2

declare dso_local i32 @taskqueue_drain(i32, i32*) #2

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i32 @HYPERVISOR_grant_table_op(i32, %struct.gnttab_unmap_grant_ref*, i64) #2

declare dso_local i32 @panic(i8*, i32) #2

declare dso_local i32 @xbb_free_communication_mem(%struct.xbb_softc*) #2

declare dso_local i32 @free(%struct.xbb_xen_reqlist*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
