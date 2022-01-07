; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_xrc_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_xrc_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__*, i32*, i32*, i32, i32*, %struct.ib_qp*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.ib_qp*)* }
%struct.TYPE_4__ = type { i32 }
%struct.ib_qp_init_attr = type { %struct.TYPE_4__*, i32, i32 }

@__ib_shared_qp_event_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_qp* (%struct.ib_qp*, %struct.ib_qp_init_attr*)* @ib_create_xrc_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_qp* @ib_create_xrc_qp(%struct.ib_qp* %0, %struct.ib_qp_init_attr* %1) #0 {
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.ib_qp_init_attr*, align 8
  %5 = alloca %struct.ib_qp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %3, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %4, align 8
  %6 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  store %struct.ib_qp* %6, %struct.ib_qp** %5, align 8
  %7 = load i32, i32* @__ib_shared_qp_event_handler, align 4
  %8 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %9 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %8, i32 0, i32 8
  store i32 %7, i32* %9, align 8
  %10 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %11 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %12 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %11, i32 0, i32 7
  store %struct.ib_qp* %10, %struct.ib_qp** %12, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %14 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %13, i32 0, i32 6
  store i32* null, i32** %14, align 8
  %15 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %16 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %15, i32 0, i32 4
  store i32* null, i32** %16, align 8
  %17 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %18 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %17, i32 0, i32 5
  store i32 0, i32* %18, align 8
  %19 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %20 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %22 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %25 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %24, i32 0, i32 2
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %25, align 8
  %26 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %27 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @atomic_inc(i32* %29)
  %31 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %32 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %31, i32 0, i32 1
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %35 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %36 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %39 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.ib_qp* @__ib_open_qp(%struct.ib_qp* %34, i32 %37, i32 %40)
  store %struct.ib_qp* %41, %struct.ib_qp** %3, align 8
  %42 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %43 = call i32 @IS_ERR(%struct.ib_qp* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %2
  %46 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %47 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %50 = call i32 @__ib_insert_xrcd_qp(%struct.TYPE_4__* %48, %struct.ib_qp* %49)
  br label %59

51:                                               ; preds = %2
  %52 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %53 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.ib_qp*)*, i32 (%struct.ib_qp*)** %55, align 8
  %57 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %58 = call i32 %56(%struct.ib_qp* %57)
  br label %59

59:                                               ; preds = %51, %45
  %60 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  ret %struct.ib_qp* %60
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.ib_qp* @__ib_open_qp(%struct.ib_qp*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.ib_qp*) #1

declare dso_local i32 @__ib_insert_xrcd_qp(%struct.TYPE_4__*, %struct.ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
