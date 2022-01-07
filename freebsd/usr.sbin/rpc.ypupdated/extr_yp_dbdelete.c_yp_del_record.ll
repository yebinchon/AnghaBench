; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypupdated/extr_yp_dbdelete.c_yp_del_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypupdated/extr_yp_dbdelete.c_yp_del_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32*, i32)*, i32 (%struct.TYPE_5__*)* }

@YP_FALSE = common dso_local global i32 0, align 4
@YP_BADDB = common dso_local global i32 0, align 4
@YP_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_del_record(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32 (%struct.TYPE_5__*, i32*, i32)*, i32 (%struct.TYPE_5__*, i32*, i32)** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 %9(%struct.TYPE_5__* %10, i32* %11, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %19 [
    i32 1, label %16
    i32 -1, label %18
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @YP_FALSE, align 4
  store i32 %17, i32* %3, align 4
  br label %28

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %14, %18
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = call i32 %22(%struct.TYPE_5__* %23)
  %25 = load i32, i32* @YP_BADDB, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @YP_TRUE, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %19, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
