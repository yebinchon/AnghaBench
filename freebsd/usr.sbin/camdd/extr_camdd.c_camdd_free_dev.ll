; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_free_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_free_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camdd_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.camdd_dev_pass, %struct.camdd_dev_file }
%struct.camdd_dev_pass = type { i32* }
%struct.camdd_dev_file = type { i32, %struct.camdd_dev* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camdd_free_dev(%struct.camdd_dev* %0) #0 {
  %2 = alloca %struct.camdd_dev*, align 8
  %3 = alloca %struct.camdd_dev_file*, align 8
  %4 = alloca %struct.camdd_dev_pass*, align 8
  store %struct.camdd_dev* %0, %struct.camdd_dev** %2, align 8
  %5 = load %struct.camdd_dev*, %struct.camdd_dev** %2, align 8
  %6 = icmp eq %struct.camdd_dev* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %48

8:                                                ; preds = %1
  %9 = load %struct.camdd_dev*, %struct.camdd_dev** %2, align 8
  %10 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %44 [
    i32 129, label %12
    i32 128, label %30
  ]

12:                                               ; preds = %8
  %13 = load %struct.camdd_dev*, %struct.camdd_dev** %2, align 8
  %14 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.camdd_dev_file* %15, %struct.camdd_dev_file** %3, align 8
  %16 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %3, align 8
  %17 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %3, align 8
  %22 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @close(i32 %23)
  br label %25

25:                                               ; preds = %20, %12
  %26 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %3, align 8
  %27 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %26, i32 0, i32 1
  %28 = load %struct.camdd_dev*, %struct.camdd_dev** %27, align 8
  %29 = call i32 @free(%struct.camdd_dev* %28)
  br label %45

30:                                               ; preds = %8
  %31 = load %struct.camdd_dev*, %struct.camdd_dev** %2, align 8
  %32 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.camdd_dev_pass* %33, %struct.camdd_dev_pass** %4, align 8
  %34 = load %struct.camdd_dev_pass*, %struct.camdd_dev_pass** %4, align 8
  %35 = getelementptr inbounds %struct.camdd_dev_pass, %struct.camdd_dev_pass* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.camdd_dev_pass*, %struct.camdd_dev_pass** %4, align 8
  %40 = getelementptr inbounds %struct.camdd_dev_pass, %struct.camdd_dev_pass* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @cam_close_device(i32* %41)
  br label %43

43:                                               ; preds = %38, %30
  br label %45

44:                                               ; preds = %8
  br label %45

45:                                               ; preds = %44, %43, %25
  %46 = load %struct.camdd_dev*, %struct.camdd_dev** %2, align 8
  %47 = call i32 @free(%struct.camdd_dev* %46)
  br label %48

48:                                               ; preds = %45, %7
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.camdd_dev*) #1

declare dso_local i32 @cam_close_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
