; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*)* @mthca_destroy_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_destroy_qp(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %2, align 8
  %3 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %4 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %3, i32 0, i32 1
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %6 = icmp ne %struct.TYPE_9__* %5, null
  br i1 %6, label %7, label %58

7:                                                ; preds = %1
  %8 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %9 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @to_mdev(i32 %10)
  %12 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %13 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_10__* @to_mucontext(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %20 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_10__* @to_mucontext(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %28 = call %struct.TYPE_11__* @to_mqp(%struct.ib_qp* %27)
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mthca_unmap_user_db(i32 %11, i32* %18, i32 %26, i32 %31)
  %33 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %34 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @to_mdev(i32 %35)
  %37 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %38 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_10__* @to_mucontext(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %45 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_10__* @to_mucontext(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %53 = call %struct.TYPE_11__* @to_mqp(%struct.ib_qp* %52)
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mthca_unmap_user_db(i32 %36, i32* %43, i32 %51, i32 %56)
  br label %58

58:                                               ; preds = %7, %1
  %59 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %60 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @to_mdev(i32 %61)
  %63 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %64 = call %struct.TYPE_11__* @to_mqp(%struct.ib_qp* %63)
  %65 = call i32 @mthca_free_qp(i32 %62, %struct.TYPE_11__* %64)
  %66 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %67 = call i32 @kfree(%struct.ib_qp* %66)
  ret i32 0
}

declare dso_local i32 @mthca_unmap_user_db(i32, i32*, i32, i32) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local %struct.TYPE_10__* @to_mucontext(i32) #1

declare dso_local %struct.TYPE_11__* @to_mqp(%struct.ib_qp*) #1

declare dso_local i32 @mthca_free_qp(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @kfree(%struct.ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
