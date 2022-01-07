; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_del_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_del_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, i32* }
%struct.t4_filter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@FULL_INIT_DONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @del_filter(%struct.adapter* %0, %struct.t4_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.t4_filter*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.t4_filter* %1, %struct.t4_filter** %5, align 8
  %6 = load %struct.adapter*, %struct.adapter** %4, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @FULL_INIT_DONE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %66

14:                                               ; preds = %2
  %15 = load %struct.t4_filter*, %struct.t4_filter** %5, align 8
  %16 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.adapter*, %struct.adapter** %4, align 8
  %28 = load %struct.t4_filter*, %struct.t4_filter** %5, align 8
  %29 = call i32 @del_hashfilter(%struct.adapter* %27, %struct.t4_filter* %28)
  store i32 %29, i32* %3, align 4
  br label %66

30:                                               ; preds = %20
  br label %64

31:                                               ; preds = %14
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = call i64 @separate_hpfilter_region(%struct.adapter* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load %struct.t4_filter*, %struct.t4_filter** %5, align 8
  %37 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.adapter*, %struct.adapter** %4, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.adapter*, %struct.adapter** %4, align 8
  %49 = load %struct.t4_filter*, %struct.t4_filter** %5, align 8
  %50 = call i32 @del_tcamfilter(%struct.adapter* %48, %struct.t4_filter* %49)
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %41
  br label %63

52:                                               ; preds = %35, %31
  %53 = load %struct.adapter*, %struct.adapter** %4, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.adapter*, %struct.adapter** %4, align 8
  %60 = load %struct.t4_filter*, %struct.t4_filter** %5, align 8
  %61 = call i32 @del_tcamfilter(%struct.adapter* %59, %struct.t4_filter* %60)
  store i32 %61, i32* %3, align 4
  br label %66

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %51
  br label %64

64:                                               ; preds = %63, %30
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %58, %47, %26, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @del_hashfilter(%struct.adapter*, %struct.t4_filter*) #1

declare dso_local i64 @separate_hpfilter_region(%struct.adapter*) #1

declare dso_local i32 @del_tcamfilter(%struct.adapter*, %struct.t4_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
