; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_lookup_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_lookup_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_8__, i64, i64 }
%struct.TYPE_8__ = type { i32* }

@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@MAP_ENTRY_IS_SUB_MAP = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@KERN_PROTECTION_FAILURE = common dso_local global i32 0, align 4
@MAP_ENTRY_NEEDS_COPY = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_lookup_locked(%struct.TYPE_9__** %0, i64 %1, i32 %2, %struct.TYPE_10__** %3, i32** %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %13, align 8
  store i32** %4, i32*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %19, align 8
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %21, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %28 = call i32 @vm_map_lookup_entry(%struct.TYPE_9__* %25, i64 %26, %struct.TYPE_10__** %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %8
  %31 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %31, i32* %9, align 4
  br label %127

32:                                               ; preds = %8
  %33 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %18, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MAP_ENTRY_IS_SUB_MAP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %42, i32* %9, align 4
  br label %127

43:                                               ; preds = %32
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* @VM_PROT_READ, align 4
  %48 = load i32, i32* @VM_PROT_WRITE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %21, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %21, align 4
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %20, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %21, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = load i32, i32* @KERN_PROTECTION_FAILURE, align 4
  store i32 %60, i32* %9, align 4
  br label %127

61:                                               ; preds = %43
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load i32*, i32** %17, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %17, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %21, align 4
  br label %75

75:                                               ; preds = %71, %61
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* @VM_PROT_WRITE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %88, i32* %9, align 4
  br label %127

89:                                               ; preds = %82
  %90 = load i32, i32* @VM_PROT_WRITE, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %20, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %20, align 4
  br label %94

94:                                               ; preds = %89, %75
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %106, i32* %9, align 4
  br label %127

107:                                              ; preds = %100, %94
  %108 = load i64, i64* %11, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %108, %111
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = call i32 @OFF_TO_IDX(i64 %116)
  %118 = load i32*, i32** %15, align 8
  store i32 %117, i32* %118, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32**, i32*** %14, align 8
  store i32* %122, i32** %123, align 8
  %124 = load i32, i32* %20, align 4
  %125 = load i32*, i32** %16, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %107, %105, %87, %59, %41, %30
  %128 = load i32, i32* %9, align 4
  ret i32 %128
}

declare dso_local i32 @vm_map_lookup_entry(%struct.TYPE_9__*, i64, %struct.TYPE_10__**) #1

declare dso_local i32 @OFF_TO_IDX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
