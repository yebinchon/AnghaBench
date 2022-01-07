; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_cmd.c_ib_uverbs_ex_destroy_flow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_cmd.c_ib_uverbs_ex_destroy_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uverbs_file = type { i32, i32 }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ib_uverbs_destroy_flow = type { i32, i64 }
%struct.ib_flow = type { i32 }
%struct.ib_uobject = type { i32, i64, %struct.ib_flow* }

@EINVAL = common dso_local global i32 0, align 4
@ib_uverbs_rule_idr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_uverbs_ex_destroy_flow(%struct.ib_uverbs_file* %0, %struct.ib_device* %1, %struct.ib_udata* %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_uverbs_file*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca %struct.ib_udata*, align 8
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.ib_uverbs_destroy_flow, align 8
  %11 = alloca %struct.ib_flow*, align 8
  %12 = alloca %struct.ib_uobject*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_uverbs_file* %0, %struct.ib_uverbs_file** %6, align 8
  store %struct.ib_device* %1, %struct.ib_device** %7, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %8, align 8
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %14 = load %struct.ib_udata*, %struct.ib_udata** %8, align 8
  %15 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 16
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %76

22:                                               ; preds = %4
  %23 = load %struct.ib_udata*, %struct.ib_udata** %8, align 8
  %24 = call i32 @ib_copy_from_udata(%struct.ib_uverbs_destroy_flow* %10, %struct.ib_udata* %23, i32 16)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %5, align 4
  br label %76

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ib_uverbs_destroy_flow, %struct.ib_uverbs_destroy_flow* %10, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %76

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.ib_uverbs_destroy_flow, %struct.ib_uverbs_destroy_flow* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %40 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.ib_uobject* @idr_write_uobj(i32* @ib_uverbs_rule_idr, i32 %38, i32 %41)
  store %struct.ib_uobject* %42, %struct.ib_uobject** %12, align 8
  %43 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  %44 = icmp ne %struct.ib_uobject* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %76

48:                                               ; preds = %36
  %49 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  %50 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %49, i32 0, i32 2
  %51 = load %struct.ib_flow*, %struct.ib_flow** %50, align 8
  store %struct.ib_flow* %51, %struct.ib_flow** %11, align 8
  %52 = load %struct.ib_flow*, %struct.ib_flow** %11, align 8
  %53 = call i32 @ib_destroy_flow(%struct.ib_flow* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  %58 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %48
  %60 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  %61 = call i32 @put_uobj_write(%struct.ib_uobject* %60)
  %62 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  %63 = call i32 @idr_remove_uobj(i32* @ib_uverbs_rule_idr, %struct.ib_uobject* %62)
  %64 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %65 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %64, i32 0, i32 0
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  %68 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %67, i32 0, i32 0
  %69 = call i32 @list_del(i32* %68)
  %70 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %71 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  %74 = call i32 @put_uobj(%struct.ib_uobject* %73)
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %59, %45, %33, %27, %19
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @ib_copy_from_udata(%struct.ib_uverbs_destroy_flow*, %struct.ib_udata*, i32) #1

declare dso_local %struct.ib_uobject* @idr_write_uobj(i32*, i32, i32) #1

declare dso_local i32 @ib_destroy_flow(%struct.ib_flow*) #1

declare dso_local i32 @put_uobj_write(%struct.ib_uobject*) #1

declare dso_local i32 @idr_remove_uobj(i32*, %struct.ib_uobject*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_uobj(%struct.ib_uobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
