; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptrr/extr_hptrr_osm_bsd.c_hpt_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptrr/extr_hptrr_osm_bsd.c_hpt_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (i32, %struct.TYPE_6__*)*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i64 }

@attach_generic = common dso_local global i32 0, align 4
@him_list = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32)* @hpt_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @hpt_match(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @pci_get_vendor(i32 %7)
  %9 = icmp ne i32 %8, 4355
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @attach_generic, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %51

14:                                               ; preds = %10, %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @him_list, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %6, align 8
  br label %16

16:                                               ; preds = %46, %14
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %42, %19
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64 (i32, %struct.TYPE_6__*)*, i64 (i32, %struct.TYPE_6__*)** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 %23(i32 %24, %struct.TYPE_6__* %4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @pci_get_vendor(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @pci_get_device(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %2, align 8
  br label %51

41:                                               ; preds = %33, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %20

45:                                               ; preds = %20
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %6, align 8
  br label %16

50:                                               ; preds = %16
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %51

51:                                               ; preds = %50, %39, %13
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %52
}

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
