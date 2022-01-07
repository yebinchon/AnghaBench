; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_tag_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_tag_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj = type { i32, i32, %struct.TYPE_6__, i32, %struct.obj* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.proto_ioc_busdma = type { %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@OBJ_TYPE_TAG = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA_TAG_DERIVE = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA_TAG_CREATE = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obj* (%struct.obj*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @bd_tag_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obj* @bd_tag_new(%struct.obj* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca %struct.obj*, align 8
  %12 = alloca %struct.obj*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.proto_ioc_busdma, align 8
  %23 = alloca %struct.obj*, align 8
  store %struct.obj* %0, %struct.obj** %12, align 8
  store i32 %1, i32* %13, align 4
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %24 = load i32, i32* @OBJ_TYPE_TAG, align 4
  %25 = call %struct.obj* @obj_alloc(i32 %24)
  store %struct.obj* %25, %struct.obj** %23, align 8
  %26 = load %struct.obj*, %struct.obj** %23, align 8
  %27 = icmp eq %struct.obj* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %10
  store %struct.obj* null, %struct.obj** %11, align 8
  br label %159

29:                                               ; preds = %10
  %30 = call i32 @memset(%struct.proto_ioc_busdma* %22, i32 0, i32 80)
  %31 = load %struct.obj*, %struct.obj** %12, align 8
  %32 = icmp ne %struct.obj* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @PROTO_IOC_BUSDMA_TAG_DERIVE, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @PROTO_IOC_BUSDMA_TAG_CREATE, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 3
  store i32 %38, i32* %39, align 8
  %40 = load %struct.obj*, %struct.obj** %12, align 8
  %41 = icmp ne %struct.obj* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.obj*, %struct.obj** %12, align 8
  %44 = getelementptr inbounds %struct.obj, %struct.obj* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  br label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i32 [ %45, %42 ], [ 0, %46 ]
  %49 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = load i8*, i8** %14, align 8
  %51 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 6
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 5
  store i8* %54, i8** %57, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  store i8* %58, i8** %61, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  store i8* %62, i8** %65, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i8* %66, i8** %69, align 8
  %70 = load i8*, i8** %19, align 8
  %71 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store i8* %70, i8** %73, align 8
  %74 = load i8*, i8** %20, align 8
  %75 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i8* %74, i8** %77, align 8
  %78 = load i8*, i8** %21, align 8
  %79 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 7
  store i8* %78, i8** %81, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @PROTO_IOC_BUSDMA, align 4
  %84 = call i32 @ioctl(i32 %82, i32 %83, %struct.proto_ioc_busdma* %22)
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %47
  %87 = load %struct.obj*, %struct.obj** %23, align 8
  %88 = call i32 @obj_free(%struct.obj* %87)
  store %struct.obj* null, %struct.obj** %11, align 8
  br label %159

89:                                               ; preds = %47
  %90 = load %struct.obj*, %struct.obj** %23, align 8
  %91 = getelementptr inbounds %struct.obj, %struct.obj* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.obj*, %struct.obj** %23, align 8
  %94 = getelementptr inbounds %struct.obj, %struct.obj* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.obj*, %struct.obj** %12, align 8
  %96 = load %struct.obj*, %struct.obj** %23, align 8
  %97 = getelementptr inbounds %struct.obj, %struct.obj* %96, i32 0, i32 4
  store %struct.obj* %95, %struct.obj** %97, align 8
  %98 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.obj*, %struct.obj** %23, align 8
  %101 = getelementptr inbounds %struct.obj, %struct.obj* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 6
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.obj*, %struct.obj** %23, align 8
  %107 = getelementptr inbounds %struct.obj, %struct.obj* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 6
  store i8* %105, i8** %109, align 8
  %110 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 5
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.obj*, %struct.obj** %23, align 8
  %115 = getelementptr inbounds %struct.obj, %struct.obj* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 5
  store i8* %113, i8** %117, align 8
  %118 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.obj*, %struct.obj** %23, align 8
  %123 = getelementptr inbounds %struct.obj, %struct.obj* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 4
  store i8* %121, i8** %125, align 8
  %126 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.obj*, %struct.obj** %23, align 8
  %131 = getelementptr inbounds %struct.obj, %struct.obj* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  store i8* %129, i8** %133, align 8
  %134 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.obj*, %struct.obj** %23, align 8
  %139 = getelementptr inbounds %struct.obj, %struct.obj* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  store i8* %137, i8** %141, align 8
  %142 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.obj*, %struct.obj** %23, align 8
  %147 = getelementptr inbounds %struct.obj, %struct.obj* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  store i8* %145, i8** %149, align 8
  %150 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.obj*, %struct.obj** %23, align 8
  %155 = getelementptr inbounds %struct.obj, %struct.obj* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  store i8* %153, i8** %157, align 8
  %158 = load %struct.obj*, %struct.obj** %23, align 8
  store %struct.obj* %158, %struct.obj** %11, align 8
  br label %159

159:                                              ; preds = %89, %86, %28
  %160 = load %struct.obj*, %struct.obj** %11, align 8
  ret %struct.obj* %160
}

declare dso_local %struct.obj* @obj_alloc(i32) #1

declare dso_local i32 @memset(%struct.proto_ioc_busdma*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.proto_ioc_busdma*) #1

declare dso_local i32 @obj_free(%struct.obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
