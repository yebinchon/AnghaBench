; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_SetMode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_SetMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@PHYS_DIRECT = common dso_local global i32 0, align 4
@PHYS_DEDICATED = common dso_local global i32 0, align 4
@PHYS_DDIAL = common dso_local global i32 0, align 4
@PHYS_BACKGROUND = common dso_local global i32 0, align 4
@PHYS_FOREGROUND = common dso_local global i32 0, align 4
@DATALINK_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @datalink_SetMode(%struct.datalink* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.datalink*, align 8
  %5 = alloca i32, align 4
  store %struct.datalink* %0, %struct.datalink** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.datalink*, %struct.datalink** %4, align 8
  %7 = getelementptr inbounds %struct.datalink, %struct.datalink* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @physical_SetMode(%struct.TYPE_4__* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.datalink*, %struct.datalink** %4, align 8
  %15 = getelementptr inbounds %struct.datalink, %struct.datalink* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PHYS_DIRECT, align 4
  %20 = load i32, i32* @PHYS_DEDICATED, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load %struct.datalink*, %struct.datalink** %4, align 8
  %26 = getelementptr inbounds %struct.datalink, %struct.datalink* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %13
  %29 = load %struct.datalink*, %struct.datalink** %4, align 8
  %30 = getelementptr inbounds %struct.datalink, %struct.datalink* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PHYS_DIRECT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.datalink*, %struct.datalink** %4, align 8
  %38 = getelementptr inbounds %struct.datalink, %struct.datalink* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %28
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @PHYS_DDIAL, align 4
  %42 = load i32, i32* @PHYS_BACKGROUND, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @PHYS_FOREGROUND, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %40, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load %struct.datalink*, %struct.datalink** %4, align 8
  %50 = getelementptr inbounds %struct.datalink, %struct.datalink* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DATALINK_READY, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.datalink*, %struct.datalink** %4, align 8
  %56 = call i32 @datalink_Up(%struct.datalink* %55, i32 1, i32 1)
  br label %57

57:                                               ; preds = %54, %48, %39
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @physical_SetMode(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @datalink_Up(%struct.datalink*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
