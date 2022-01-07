; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_request.c_pqisrc_build_sgl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_request.c_pqisrc_build_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i8* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c" IN \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"SGL_Count :%d\00", align 1
@SG_FLAG_LAST = common dso_local global i8* null, align 8
@SG_FLAG_CHAIN = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c" OUT \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32)* @pqisrc_build_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqisrc_build_sgl(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = call i32 @OS_GET_IO_SG_COUNT(%struct.TYPE_11__* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @DBG_IO(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 0, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %111

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @pqisrc_embedded_sgl_count(i32 %25)
  %27 = icmp sle i32 %24, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i8* @OS_GET_IO_SG_ADDR(%struct.TYPE_11__* %34, i32 %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i8* @OS_GET_IO_SG_LEN(%struct.TYPE_11__* %39, i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i8* null, i8** %46, align 8
  br label %47

47:                                               ; preds = %33
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 1
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %11, align 8
  br label %29

52:                                               ; preds = %29
  %53 = load i8*, i8** @SG_FLAG_LAST, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  store i8* %53, i8** %59, align 8
  br label %110

60:                                               ; preds = %23
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %12, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 24
  %72 = trunc i64 %71 to i32
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** @SG_FLAG_CHAIN, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %97, %60
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %79
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i8* @OS_GET_IO_SG_ADDR(%struct.TYPE_11__* %84, i32 %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i8* @OS_GET_IO_SG_LEN(%struct.TYPE_11__* %89, i32 %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store i8* null, i8** %96, align 8
  br label %97

97:                                               ; preds = %83
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 1
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %11, align 8
  br label %79

102:                                              ; preds = %79
  %103 = load i8*, i8** @SG_FLAG_LAST, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i8* %103, i8** %109, align 8
  store i32 1, i32* %10, align 4
  store i32 1, i32* %13, align 4
  br label %110

110:                                              ; preds = %102, %52
  br label %111

111:                                              ; preds = %110, %22
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 24
  %115 = trunc i64 %114 to i32
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %119 = load i32, i32* %13, align 4
  ret i32 %119
}

declare dso_local i32 @OS_GET_IO_SG_COUNT(%struct.TYPE_11__*) #1

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @DBG_IO(i8*, i32) #1

declare dso_local i32 @pqisrc_embedded_sgl_count(i32) #1

declare dso_local i8* @OS_GET_IO_SG_ADDR(%struct.TYPE_11__*, i32) #1

declare dso_local i8* @OS_GET_IO_SG_LEN(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
