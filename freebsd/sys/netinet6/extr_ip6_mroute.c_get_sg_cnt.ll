; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_mroute.c_get_sg_cnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_mroute.c_get_sg_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sioc_sg_req6 = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mf6c = type { i32, i32, i32 }

@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sioc_sg_req6*)* @get_sg_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sg_cnt(%struct.sioc_sg_req6* %0) #0 {
  %2 = alloca %struct.sioc_sg_req6*, align 8
  %3 = alloca %struct.mf6c*, align 8
  %4 = alloca i32, align 4
  store %struct.sioc_sg_req6* %0, %struct.sioc_sg_req6** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 (...) @MFC6_LOCK()
  %6 = load %struct.sioc_sg_req6*, %struct.sioc_sg_req6** %2, align 8
  %7 = getelementptr inbounds %struct.sioc_sg_req6, %struct.sioc_sg_req6* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sioc_sg_req6*, %struct.sioc_sg_req6** %2, align 8
  %11 = getelementptr inbounds %struct.sioc_sg_req6, %struct.sioc_sg_req6* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mf6c*, %struct.mf6c** %3, align 8
  %15 = call i32 @MF6CFIND(i32 %9, i32 %13, %struct.mf6c* %14)
  %16 = load %struct.mf6c*, %struct.mf6c** %3, align 8
  %17 = icmp eq %struct.mf6c* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ESRCH, align 4
  store i32 %19, i32* %4, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load %struct.mf6c*, %struct.mf6c** %3, align 8
  %22 = getelementptr inbounds %struct.mf6c, %struct.mf6c* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sioc_sg_req6*, %struct.sioc_sg_req6** %2, align 8
  %25 = getelementptr inbounds %struct.sioc_sg_req6, %struct.sioc_sg_req6* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mf6c*, %struct.mf6c** %3, align 8
  %27 = getelementptr inbounds %struct.mf6c, %struct.mf6c* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sioc_sg_req6*, %struct.sioc_sg_req6** %2, align 8
  %30 = getelementptr inbounds %struct.sioc_sg_req6, %struct.sioc_sg_req6* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mf6c*, %struct.mf6c** %3, align 8
  %32 = getelementptr inbounds %struct.mf6c, %struct.mf6c* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sioc_sg_req6*, %struct.sioc_sg_req6** %2, align 8
  %35 = getelementptr inbounds %struct.sioc_sg_req6, %struct.sioc_sg_req6* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %20, %18
  %37 = call i32 (...) @MFC6_UNLOCK()
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @MFC6_LOCK(...) #1

declare dso_local i32 @MF6CFIND(i32, i32, %struct.mf6c*) #1

declare dso_local i32 @MFC6_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
