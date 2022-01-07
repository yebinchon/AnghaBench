; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_collapse_scan_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_collapse_scan_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }

@.str = private unnamed_addr constant [27 x i8] c"invalid ownership %p %p %p\00", align 1
@OBSC_COLLAPSE_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"vmocol\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32)* @vm_object_collapse_scan_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @vm_object_collapse_scan_wait(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %12 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_13__* %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %10, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %17 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_13__* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = icmp eq %struct.TYPE_12__* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = icmp eq %struct.TYPE_13__* %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %31 = icmp eq %struct.TYPE_13__* %29, %30
  br label %32

32:                                               ; preds = %26, %20, %4
  %33 = phi i1 [ true, %20 ], [ true, %4 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %38 = bitcast %struct.TYPE_13__* %37 to i8*
  %39 = call i32 @KASSERT(i32 %34, i8* %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @OBSC_COLLAPSE_NOWAIT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %5, align 8
  br label %74

46:                                               ; preds = %32
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = icmp eq %struct.TYPE_12__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (...) @vm_radix_wait()
  br label %66

51:                                               ; preds = %46
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = icmp eq %struct.TYPE_13__* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %59 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_13__* %58)
  br label %63

60:                                               ; preds = %51
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_13__* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %65 = call i32 @vm_page_busy_sleep(%struct.TYPE_12__* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %66

66:                                               ; preds = %63, %49
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_13__* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %70 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_13__* %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = call %struct.TYPE_12__* @TAILQ_FIRST(i32* %72)
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %5, align 8
  br label %74

74:                                               ; preds = %66, %44
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %75
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_13__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_radix_wait(...) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_page_busy_sleep(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @TAILQ_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
