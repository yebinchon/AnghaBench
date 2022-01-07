; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_try_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_try_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 (i32, i64, i64)*, i32 }
%struct.vmem_btag = type { i64, i64, i64 }

@BT_TYPE_FREE = common dso_local global i64 0, align 8
@vmem_seglist = common dso_local global i32 0, align 4
@bt_seglist = common dso_local global i32 0, align 4
@BT_TYPE_SPAN = common dso_local global i64 0, align 8
@BT_MAXFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.vmem_btag*, i32)* @vmem_try_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmem_try_release(%struct.TYPE_7__* %0, %struct.vmem_btag* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.vmem_btag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmem_btag*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.vmem_btag* %1, %struct.vmem_btag** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.vmem_btag*, %struct.vmem_btag** %6, align 8
  %12 = getelementptr inbounds %struct.vmem_btag, %struct.vmem_btag* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BT_TYPE_FREE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @MPASS(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %19, align 8
  %21 = icmp eq i32 (i32, i64, i64)* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %103

23:                                               ; preds = %3
  %24 = load %struct.vmem_btag*, %struct.vmem_btag** %6, align 8
  %25 = load i32, i32* @vmem_seglist, align 4
  %26 = load i32, i32* @bt_seglist, align 4
  %27 = call %struct.vmem_btag* @TAILQ_PREV(%struct.vmem_btag* %24, i32 %25, i32 %26)
  store %struct.vmem_btag* %27, %struct.vmem_btag** %8, align 8
  %28 = load %struct.vmem_btag*, %struct.vmem_btag** %8, align 8
  %29 = icmp ne %struct.vmem_btag* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @MPASS(i32 %30)
  %32 = load %struct.vmem_btag*, %struct.vmem_btag** %8, align 8
  %33 = getelementptr inbounds %struct.vmem_btag, %struct.vmem_btag* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BT_TYPE_FREE, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @MPASS(i32 %37)
  %39 = load %struct.vmem_btag*, %struct.vmem_btag** %8, align 8
  %40 = getelementptr inbounds %struct.vmem_btag, %struct.vmem_btag* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BT_TYPE_SPAN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %102

44:                                               ; preds = %23
  %45 = load %struct.vmem_btag*, %struct.vmem_btag** %8, align 8
  %46 = getelementptr inbounds %struct.vmem_btag, %struct.vmem_btag* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.vmem_btag*, %struct.vmem_btag** %6, align 8
  %49 = getelementptr inbounds %struct.vmem_btag, %struct.vmem_btag* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %102

52:                                               ; preds = %44
  %53 = load %struct.vmem_btag*, %struct.vmem_btag** %8, align 8
  %54 = getelementptr inbounds %struct.vmem_btag, %struct.vmem_btag* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.vmem_btag*, %struct.vmem_btag** %6, align 8
  %57 = getelementptr inbounds %struct.vmem_btag, %struct.vmem_btag* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @MPASS(i32 %60)
  %62 = load %struct.vmem_btag*, %struct.vmem_btag** %8, align 8
  %63 = getelementptr inbounds %struct.vmem_btag, %struct.vmem_btag* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %9, align 8
  %65 = load %struct.vmem_btag*, %struct.vmem_btag** %8, align 8
  %66 = getelementptr inbounds %struct.vmem_btag, %struct.vmem_btag* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %10, align 8
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %52
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = load %struct.vmem_btag*, %struct.vmem_btag** %6, align 8
  %73 = call i32 @bt_remfree(%struct.TYPE_7__* %71, %struct.vmem_btag* %72)
  br label %74

74:                                               ; preds = %70, %52
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = load %struct.vmem_btag*, %struct.vmem_btag** %6, align 8
  %77 = call i32 @bt_remseg(%struct.TYPE_7__* %75, %struct.vmem_btag* %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = load %struct.vmem_btag*, %struct.vmem_btag** %8, align 8
  %80 = call i32 @bt_remseg(%struct.TYPE_7__* %78, %struct.vmem_btag* %79)
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = call i32 @VMEM_CONDVAR_BROADCAST(%struct.TYPE_7__* %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = load i32, i32* @BT_MAXFREE, align 4
  %92 = call i32 @bt_freetrim(%struct.TYPE_7__* %90, i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %94, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call i32 %95(i32 %98, i64 %99, i64 %100)
  store i32 1, i32* %4, align 4
  br label %103

102:                                              ; preds = %44, %23
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %74, %22
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.vmem_btag* @TAILQ_PREV(%struct.vmem_btag*, i32, i32) #1

declare dso_local i32 @bt_remfree(%struct.TYPE_7__*, %struct.vmem_btag*) #1

declare dso_local i32 @bt_remseg(%struct.TYPE_7__*, %struct.vmem_btag*) #1

declare dso_local i32 @VMEM_CONDVAR_BROADCAST(%struct.TYPE_7__*) #1

declare dso_local i32 @bt_freetrim(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
