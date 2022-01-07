; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_splay_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_splay_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, %struct.TYPE_14__*, %struct.TYPE_14__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*)* @vm_map_splay_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_map_splay_merge(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %14 = call i8* @vm_map_entry_max_free_left(%struct.TYPE_14__* %12, %struct.TYPE_14__* %13)
  store i8* %14, i8** %10, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %18 = icmp ne %struct.TYPE_14__* %15, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %9, align 8
  br label %23

23:                                               ; preds = %35, %19
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i8* @MAX(i8* %26, i8* %27)
  store i8* %28, i8** %10, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = call i32 @vm_map_entry_swap(%struct.TYPE_14__** %32, %struct.TYPE_14__** %9)
  %34 = call i32 @vm_map_entry_swap(%struct.TYPE_14__** %9, %struct.TYPE_14__** %7)
  br label %35

35:                                               ; preds = %23
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = icmp ne %struct.TYPE_14__* %36, %38
  br i1 %39, label %23, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %43, align 8
  br label %44

44:                                               ; preds = %40, %4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = call i8* @vm_map_entry_max_free_right(%struct.TYPE_14__* %45, %struct.TYPE_14__* %46)
  store i8* %47, i8** %11, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = icmp ne %struct.TYPE_14__* %48, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %44
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %9, align 8
  br label %56

56:                                               ; preds = %68, %52
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i8* @MAX(i8* %59, i8* %60)
  store i8* %61, i8** %11, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = call i32 @vm_map_entry_swap(%struct.TYPE_14__** %65, %struct.TYPE_14__** %9)
  %67 = call i32 @vm_map_entry_swap(%struct.TYPE_14__** %9, %struct.TYPE_14__** %8)
  br label %68

68:                                               ; preds = %56
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = icmp ne %struct.TYPE_14__* %69, %71
  br i1 %72, label %56, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %76, align 8
  br label %77

77:                                               ; preds = %73, %44
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = call i8* @MAX(i8* %78, i8* %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %85, align 8
  ret void
}

declare dso_local i8* @vm_map_entry_max_free_left(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i8* @MAX(i8*, i8*) #1

declare dso_local i32 @vm_map_entry_swap(%struct.TYPE_14__**, %struct.TYPE_14__**) #1

declare dso_local i8* @vm_map_entry_max_free_right(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
