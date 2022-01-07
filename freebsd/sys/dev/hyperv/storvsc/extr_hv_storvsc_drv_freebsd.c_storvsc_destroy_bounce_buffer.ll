; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_destroy_bounce_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_destroy_bounce_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.sglist = type { i32 }
%struct.hv_sgl_node = type { %struct.sglist* }

@g_hv_sgl_page_pool = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [38 x i8] c"storvsc error: not enough in use sgl\0A\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sglist*)* @storvsc_destroy_bounce_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storvsc_destroy_bounce_buffer(%struct.sglist* %0) #0 {
  %2 = alloca %struct.sglist*, align 8
  %3 = alloca %struct.hv_sgl_node*, align 8
  store %struct.sglist* %0, %struct.sglist** %2, align 8
  store %struct.hv_sgl_node* null, %struct.hv_sgl_node** %3, align 8
  %4 = call i64 @LIST_EMPTY(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_hv_sgl_page_pool, i32 0, i32 1))
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %19

8:                                                ; preds = %1
  %9 = call %struct.hv_sgl_node* @LIST_FIRST(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_hv_sgl_page_pool, i32 0, i32 1))
  store %struct.hv_sgl_node* %9, %struct.hv_sgl_node** %3, align 8
  %10 = load %struct.hv_sgl_node*, %struct.hv_sgl_node** %3, align 8
  %11 = load i32, i32* @link, align 4
  %12 = call i32 @LIST_REMOVE(%struct.hv_sgl_node* %10, i32 %11)
  %13 = load %struct.sglist*, %struct.sglist** %2, align 8
  %14 = load %struct.hv_sgl_node*, %struct.hv_sgl_node** %3, align 8
  %15 = getelementptr inbounds %struct.hv_sgl_node, %struct.hv_sgl_node* %14, i32 0, i32 0
  store %struct.sglist* %13, %struct.sglist** %15, align 8
  %16 = load %struct.hv_sgl_node*, %struct.hv_sgl_node** %3, align 8
  %17 = load i32, i32* @link, align 4
  %18 = call i32 @LIST_INSERT_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_hv_sgl_page_pool, i32 0, i32 0), %struct.hv_sgl_node* %16, i32 %17)
  br label %19

19:                                               ; preds = %8, %6
  ret void
}

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.hv_sgl_node* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.hv_sgl_node*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.hv_sgl_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
