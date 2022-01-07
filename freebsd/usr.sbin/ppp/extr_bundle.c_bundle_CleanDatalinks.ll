; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_CleanDatalinks.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_CleanDatalinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.datalink* }
%struct.datalink = type { i64, %struct.datalink*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DATALINK_CLOSED = common dso_local global i64 0, align 8
@PHYS_DIRECT = common dso_local global i32 0, align 4
@PHYS_BACKGROUND = common dso_local global i32 0, align 4
@PHYS_FOREGROUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_CleanDatalinks(%struct.bundle* %0) #0 {
  %2 = alloca %struct.bundle*, align 8
  %3 = alloca %struct.datalink**, align 8
  %4 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %2, align 8
  %5 = load %struct.bundle*, %struct.bundle** %2, align 8
  %6 = getelementptr inbounds %struct.bundle, %struct.bundle* %5, i32 0, i32 0
  store %struct.datalink** %6, %struct.datalink*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %43, %1
  %8 = load %struct.datalink**, %struct.datalink*** %3, align 8
  %9 = load %struct.datalink*, %struct.datalink** %8, align 8
  %10 = icmp ne %struct.datalink* %9, null
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = load %struct.datalink**, %struct.datalink*** %3, align 8
  %13 = load %struct.datalink*, %struct.datalink** %12, align 8
  %14 = getelementptr inbounds %struct.datalink, %struct.datalink* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DATALINK_CLOSED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %11
  %19 = load %struct.datalink**, %struct.datalink*** %3, align 8
  %20 = load %struct.datalink*, %struct.datalink** %19, align 8
  %21 = getelementptr inbounds %struct.datalink, %struct.datalink* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PHYS_DIRECT, align 4
  %26 = load i32, i32* @PHYS_BACKGROUND, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PHYS_FOREGROUND, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %24, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %18
  %33 = load %struct.datalink**, %struct.datalink*** %3, align 8
  %34 = load %struct.datalink*, %struct.datalink** %33, align 8
  %35 = call %struct.datalink* @datalink_Destroy(%struct.datalink* %34)
  %36 = load %struct.datalink**, %struct.datalink*** %3, align 8
  store %struct.datalink* %35, %struct.datalink** %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %43

39:                                               ; preds = %18, %11
  %40 = load %struct.datalink**, %struct.datalink*** %3, align 8
  %41 = load %struct.datalink*, %struct.datalink** %40, align 8
  %42 = getelementptr inbounds %struct.datalink, %struct.datalink* %41, i32 0, i32 1
  store %struct.datalink** %42, %struct.datalink*** %3, align 8
  br label %43

43:                                               ; preds = %39, %32
  br label %7

44:                                               ; preds = %7
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.bundle*, %struct.bundle** %2, align 8
  %49 = call i32 @bundle_LinksRemoved(%struct.bundle* %48)
  br label %50

50:                                               ; preds = %47, %44
  ret void
}

declare dso_local %struct.datalink* @datalink_Destroy(%struct.datalink*) #1

declare dso_local i32 @bundle_LinksRemoved(%struct.bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
