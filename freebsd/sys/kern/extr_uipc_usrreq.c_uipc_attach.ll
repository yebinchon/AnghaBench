; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32*, %struct.unpcb*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.unpcb = type { i32, i64, i64, i32, %struct.socket*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"uipc_attach: so_pcb != NULL\00", align 1
@unpst_sendspace = common dso_local global i32 0, align 4
@unpst_recvspace = common dso_local global i32 0, align 4
@unpdg_sendspace = common dso_local global i32 0, align 4
@unpdg_recvspace = common dso_local global i32 0, align 4
@unpsp_sendspace = common dso_local global i32 0, align 4
@unpsp_recvspace = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"uipc_attach\00", align 1
@unp_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@UNP_NASCENT = common dso_local global i32 0, align 4
@unp_gencnt = common dso_local global i64 0, align 8
@unp_ino = common dso_local global i64 0, align 8
@unp_count = common dso_local global i32 0, align 4
@unp_shead = common dso_local global i32 0, align 4
@unp_link = common dso_local global i32 0, align 4
@unp_dhead = common dso_local global i32 0, align 4
@unp_sphead = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.thread*)* @uipc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uipc_attach(%struct.socket* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.unpcb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 2
  %15 = load %struct.unpcb*, %struct.unpcb** %14, align 8
  %16 = icmp eq %struct.unpcb* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.socket*, %struct.socket** %5, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load %struct.socket*, %struct.socket** %5, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %24, %3
  %31 = load %struct.socket*, %struct.socket** %5, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %43 [
    i32 128, label %34
    i32 130, label %37
    i32 129, label %40
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @unpst_sendspace, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @unpst_recvspace, align 4
  store i32 %36, i32* %9, align 4
  br label %45

37:                                               ; preds = %30
  %38 = load i32, i32* @unpdg_sendspace, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @unpdg_recvspace, align 4
  store i32 %39, i32* %9, align 4
  br label %45

40:                                               ; preds = %30
  %41 = load i32, i32* @unpsp_sendspace, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @unpsp_recvspace, align 4
  store i32 %42, i32* %9, align 4
  br label %45

43:                                               ; preds = %30
  %44 = call i32 @panic(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40, %37, %34
  %46 = load %struct.socket*, %struct.socket** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @soreserve(%struct.socket* %46, i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %128

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %24
  %56 = load i32, i32* @unp_zone, align 4
  %57 = load i32, i32* @M_NOWAIT, align 4
  %58 = load i32, i32* @M_ZERO, align 4
  %59 = or i32 %57, %58
  %60 = call %struct.unpcb* @uma_zalloc(i32 %56, i32 %59)
  store %struct.unpcb* %60, %struct.unpcb** %10, align 8
  %61 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %62 = icmp eq %struct.unpcb* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @ENOBUFS, align 4
  store i32 %64, i32* %4, align 4
  br label %128

65:                                               ; preds = %55
  %66 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %67 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %66, i32 0, i32 5
  %68 = call i32 @LIST_INIT(i32* %67)
  %69 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %70 = call i32 @UNP_PCB_LOCK_INIT(%struct.unpcb* %69)
  %71 = load %struct.socket*, %struct.socket** %5, align 8
  %72 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %73 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %72, i32 0, i32 4
  store %struct.socket* %71, %struct.socket** %73, align 8
  %74 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %75 = load %struct.socket*, %struct.socket** %5, align 8
  %76 = getelementptr inbounds %struct.socket, %struct.socket* %75, i32 0, i32 2
  store %struct.unpcb* %74, %struct.unpcb** %76, align 8
  %77 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %78 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.socket*, %struct.socket** %5, align 8
  %80 = getelementptr inbounds %struct.socket, %struct.socket* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %65
  %84 = load i32, i32* @UNP_NASCENT, align 4
  %85 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %86 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %65
  %90 = call i32 (...) @UNP_LINK_WOWNED()
  store i32 %90, i32* %12, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 (...) @UNP_LINK_WLOCK()
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i64, i64* @unp_gencnt, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* @unp_gencnt, align 8
  %97 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %98 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* @unp_ino, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* @unp_ino, align 8
  %101 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %102 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* @unp_count, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @unp_count, align 4
  %105 = load %struct.socket*, %struct.socket** %5, align 8
  %106 = getelementptr inbounds %struct.socket, %struct.socket* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %120 [
    i32 128, label %108
    i32 130, label %112
    i32 129, label %116
  ]

108:                                              ; preds = %94
  %109 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %110 = load i32, i32* @unp_link, align 4
  %111 = call i32 @LIST_INSERT_HEAD(i32* @unp_shead, %struct.unpcb* %109, i32 %110)
  br label %122

112:                                              ; preds = %94
  %113 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %114 = load i32, i32* @unp_link, align 4
  %115 = call i32 @LIST_INSERT_HEAD(i32* @unp_dhead, %struct.unpcb* %113, i32 %114)
  br label %122

116:                                              ; preds = %94
  %117 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %118 = load i32, i32* @unp_link, align 4
  %119 = call i32 @LIST_INSERT_HEAD(i32* @unp_sphead, %struct.unpcb* %117, i32 %118)
  br label %122

120:                                              ; preds = %94
  %121 = call i32 @panic(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %116, %112, %108
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 (...) @UNP_LINK_WUNLOCK()
  br label %127

127:                                              ; preds = %125, %122
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %63, %52
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local %struct.unpcb* @uma_zalloc(i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @UNP_PCB_LOCK_INIT(%struct.unpcb*) #1

declare dso_local i32 @UNP_LINK_WOWNED(...) #1

declare dso_local i32 @UNP_LINK_WLOCK(...) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.unpcb*, i32) #1

declare dso_local i32 @UNP_LINK_WUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
