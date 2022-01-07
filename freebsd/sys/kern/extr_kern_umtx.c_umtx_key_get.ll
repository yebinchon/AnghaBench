; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_key_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_key_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.umtx_key = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_14__ = type { i64, i64, i64 }

@curthread = common dso_local global %struct.thread* null, align 8
@THREAD_SHARE = common dso_local global i32 0, align 4
@PROCESS_SHARE = common dso_local global i32 0, align 4
@AUTO_SHARE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@VM_INHERIT_SHARE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @umtx_key_get(i8* %0, i32 %1, i32 %2, %struct.umtx_key* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.umtx_key*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.umtx_key* %3, %struct.umtx_key** %9, align 8
  %16 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %16, %struct.thread** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.umtx_key*, %struct.umtx_key** %9, align 8
  %19 = getelementptr inbounds %struct.umtx_key, %struct.umtx_key* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @THREAD_SHARE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %4
  %24 = load %struct.umtx_key*, %struct.umtx_key** %9, align 8
  %25 = getelementptr inbounds %struct.umtx_key, %struct.umtx_key* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.thread*, %struct.thread** %10, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load %struct.umtx_key*, %struct.umtx_key** %9, align 8
  %32 = getelementptr inbounds %struct.umtx_key, %struct.umtx_key* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.umtx_key*, %struct.umtx_key** %9, align 8
  %38 = getelementptr inbounds %struct.umtx_key, %struct.umtx_key* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  br label %130

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PROCESS_SHARE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @AUTO_SHARE, align 4
  %48 = icmp eq i32 %46, %47
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ true, %41 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @MPASS(i32 %51)
  %53 = load %struct.thread*, %struct.thread** %10, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32* %58, i32** %11, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load i32, i32* @VM_PROT_WRITE, align 4
  %62 = load %struct.umtx_key*, %struct.umtx_key** %9, align 8
  %63 = getelementptr inbounds %struct.umtx_key, %struct.umtx_key* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = call i64 @vm_map_lookup(i32** %11, i64 %60, i32 %61, %struct.TYPE_14__** %12, i32* %65, i32* %13, i32* %14, i32* %15)
  %67 = load i64, i64* @KERN_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %49
  %70 = load i32, i32* @EFAULT, align 4
  store i32 %70, i32* %5, align 4
  br label %133

71:                                               ; preds = %49
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @PROCESS_SHARE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @AUTO_SHARE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %75
  %80 = load i64, i64* @VM_INHERIT_SHARE, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %79, %71
  %86 = load %struct.umtx_key*, %struct.umtx_key** %9, align 8
  %87 = getelementptr inbounds %struct.umtx_key, %struct.umtx_key* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %89, %92
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load %struct.umtx_key*, %struct.umtx_key** %9, align 8
  %99 = getelementptr inbounds %struct.umtx_key, %struct.umtx_key* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  store i64 %97, i64* %101, align 8
  %102 = load %struct.umtx_key*, %struct.umtx_key** %9, align 8
  %103 = getelementptr inbounds %struct.umtx_key, %struct.umtx_key* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @vm_object_reference(i32 %106)
  br label %126

108:                                              ; preds = %79, %75
  %109 = load %struct.umtx_key*, %struct.umtx_key** %9, align 8
  %110 = getelementptr inbounds %struct.umtx_key, %struct.umtx_key* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load %struct.thread*, %struct.thread** %10, align 8
  %112 = getelementptr inbounds %struct.thread, %struct.thread* %111, i32 0, i32 0
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = load %struct.umtx_key*, %struct.umtx_key** %9, align 8
  %117 = getelementptr inbounds %struct.umtx_key, %struct.umtx_key* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  store %struct.TYPE_10__* %115, %struct.TYPE_10__** %119, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.umtx_key*, %struct.umtx_key** %9, align 8
  %123 = getelementptr inbounds %struct.umtx_key, %struct.umtx_key* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store i64 %121, i64* %125, align 8
  br label %126

126:                                              ; preds = %108, %85
  %127 = load i32*, i32** %11, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %129 = call i32 @vm_map_lookup_done(i32* %127, %struct.TYPE_14__* %128)
  br label %130

130:                                              ; preds = %126, %23
  %131 = load %struct.umtx_key*, %struct.umtx_key** %9, align 8
  %132 = call i32 @umtxq_hash(%struct.umtx_key* %131)
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %130, %69
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @vm_map_lookup(i32**, i64, i32, %struct.TYPE_14__**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @vm_object_reference(i32) #1

declare dso_local i32 @vm_map_lookup_done(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @umtxq_hash(%struct.umtx_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
