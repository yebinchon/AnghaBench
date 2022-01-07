; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_path_rec_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_path_rec_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_path = type { %struct.TYPE_6__, i32, i32, %struct.ipoib_dev_priv* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.ipoib_dev_priv = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@INFINIBAND_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipoib_path* (%struct.ipoib_dev_priv*, i32*)* @path_rec_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipoib_path* @path_rec_create(%struct.ipoib_dev_priv* %0, i32* %1) #0 {
  %3 = alloca %struct.ipoib_path*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ipoib_path*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %8 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.ipoib_path* null, %struct.ipoib_path** %3, align 8
  br label %59

12:                                               ; preds = %2
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.ipoib_path* @kzalloc(i32 40, i32 %13)
  store %struct.ipoib_path* %14, %struct.ipoib_path** %6, align 8
  %15 = load %struct.ipoib_path*, %struct.ipoib_path** %6, align 8
  %16 = icmp ne %struct.ipoib_path* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store %struct.ipoib_path* null, %struct.ipoib_path** %3, align 8
  br label %59

18:                                               ; preds = %12
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %20 = load %struct.ipoib_path*, %struct.ipoib_path** %6, align 8
  %21 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %20, i32 0, i32 3
  store %struct.ipoib_dev_priv* %19, %struct.ipoib_dev_priv** %21, align 8
  %22 = load %struct.ipoib_path*, %struct.ipoib_path** %6, align 8
  %23 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %22, i32 0, i32 2
  %24 = call i32 @bzero(i32* %23, i32 4)
  %25 = load %struct.ipoib_path*, %struct.ipoib_path** %6, align 8
  %26 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = call i32 @memcpy(i32* %29, i32* %31, i32 4)
  %33 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ipoib_path*, %struct.ipoib_path** %6, align 8
  %37 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %40 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cpu_to_be16(i32 %41)
  %43 = load %struct.ipoib_path*, %struct.ipoib_path** %6, align 8
  %44 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 8
  %46 = load %struct.ipoib_path*, %struct.ipoib_path** %6, align 8
  %47 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %50 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ipoib_path*, %struct.ipoib_path** %6, align 8
  %56 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.ipoib_path*, %struct.ipoib_path** %6, align 8
  store %struct.ipoib_path* %58, %struct.ipoib_path** %3, align 8
  br label %59

59:                                               ; preds = %18, %17, %11
  %60 = load %struct.ipoib_path*, %struct.ipoib_path** %3, align 8
  ret %struct.ipoib_path* %60
}

declare dso_local %struct.ipoib_path* @kzalloc(i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
