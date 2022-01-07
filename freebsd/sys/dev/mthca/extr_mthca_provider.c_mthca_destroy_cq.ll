; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cq*)* @mthca_destroy_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_destroy_cq(%struct.ib_cq* %0) #0 {
  %2 = alloca %struct.ib_cq*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %2, align 8
  %3 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %4 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %3, i32 0, i32 1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %56

7:                                                ; preds = %1
  %8 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %9 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @to_mdev(i32 %10)
  %12 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %13 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_6__* @to_mucontext(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %20 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_6__* @to_mucontext(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %28 = call %struct.TYPE_7__* @to_mcq(%struct.ib_cq* %27)
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mthca_unmap_user_db(i32 %11, i32* %18, i32 %26, i32 %30)
  %32 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %33 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @to_mdev(i32 %34)
  %36 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %37 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_6__* @to_mucontext(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %44 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_6__* @to_mucontext(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %52 = call %struct.TYPE_7__* @to_mcq(%struct.ib_cq* %51)
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mthca_unmap_user_db(i32 %35, i32* %42, i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %7, %1
  %57 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %58 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @to_mdev(i32 %59)
  %61 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %62 = call %struct.TYPE_7__* @to_mcq(%struct.ib_cq* %61)
  %63 = call i32 @mthca_free_cq(i32 %60, %struct.TYPE_7__* %62)
  %64 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %65 = call i32 @kfree(%struct.ib_cq* %64)
  ret i32 0
}

declare dso_local i32 @mthca_unmap_user_db(i32, i32*, i32, i32) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local %struct.TYPE_6__* @to_mucontext(i32) #1

declare dso_local %struct.TYPE_7__* @to_mcq(%struct.ib_cq*) #1

declare dso_local i32 @mthca_free_cq(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.ib_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
