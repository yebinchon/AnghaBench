; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_get_sg_cnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_get_sg_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sioc_sg_req = type { i32, i32, i32, i32, i32 }
%struct.mfc = type { i32, i32, i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sioc_sg_req*)* @get_sg_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sg_cnt(%struct.sioc_sg_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sioc_sg_req*, align 8
  %4 = alloca %struct.mfc*, align 8
  store %struct.sioc_sg_req* %0, %struct.sioc_sg_req** %3, align 8
  %5 = call i32 (...) @MFC_LOCK()
  %6 = load %struct.sioc_sg_req*, %struct.sioc_sg_req** %3, align 8
  %7 = getelementptr inbounds %struct.sioc_sg_req, %struct.sioc_sg_req* %6, i32 0, i32 4
  %8 = load %struct.sioc_sg_req*, %struct.sioc_sg_req** %3, align 8
  %9 = getelementptr inbounds %struct.sioc_sg_req, %struct.sioc_sg_req* %8, i32 0, i32 3
  %10 = call %struct.mfc* @mfc_find(i32* %7, i32* %9)
  store %struct.mfc* %10, %struct.mfc** %4, align 8
  %11 = load %struct.mfc*, %struct.mfc** %4, align 8
  %12 = icmp eq %struct.mfc* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = call i32 (...) @MFC_UNLOCK()
  %15 = load %struct.sioc_sg_req*, %struct.sioc_sg_req** %3, align 8
  %16 = getelementptr inbounds %struct.sioc_sg_req, %struct.sioc_sg_req* %15, i32 0, i32 2
  store i32 -1, i32* %16, align 4
  %17 = load %struct.sioc_sg_req*, %struct.sioc_sg_req** %3, align 8
  %18 = getelementptr inbounds %struct.sioc_sg_req, %struct.sioc_sg_req* %17, i32 0, i32 1
  store i32 -1, i32* %18, align 4
  %19 = load %struct.sioc_sg_req*, %struct.sioc_sg_req** %3, align 8
  %20 = getelementptr inbounds %struct.sioc_sg_req, %struct.sioc_sg_req* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 4
  %21 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %21, i32* %2, align 4
  br label %39

22:                                               ; preds = %1
  %23 = load %struct.mfc*, %struct.mfc** %4, align 8
  %24 = getelementptr inbounds %struct.mfc, %struct.mfc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sioc_sg_req*, %struct.sioc_sg_req** %3, align 8
  %27 = getelementptr inbounds %struct.sioc_sg_req, %struct.sioc_sg_req* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mfc*, %struct.mfc** %4, align 8
  %29 = getelementptr inbounds %struct.mfc, %struct.mfc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sioc_sg_req*, %struct.sioc_sg_req** %3, align 8
  %32 = getelementptr inbounds %struct.sioc_sg_req, %struct.sioc_sg_req* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mfc*, %struct.mfc** %4, align 8
  %34 = getelementptr inbounds %struct.mfc, %struct.mfc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sioc_sg_req*, %struct.sioc_sg_req** %3, align 8
  %37 = getelementptr inbounds %struct.sioc_sg_req, %struct.sioc_sg_req* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = call i32 (...) @MFC_UNLOCK()
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %22, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @MFC_LOCK(...) #1

declare dso_local %struct.mfc* @mfc_find(i32*, i32*) #1

declare dso_local i32 @MFC_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
