; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_device.c_cardbus_build_cis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_device.c_cardbus_build_cis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuple_callbacks = type { i32 }
%struct.cis_buffer = type { i32, i32* }

@CISTPL_END = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, i32, i32*, %struct.tuple_callbacks*, i8*)* @cardbus_build_cis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cardbus_build_cis(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32* %6, %struct.tuple_callbacks* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.tuple_callbacks*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.cis_buffer*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store %struct.tuple_callbacks* %7, %struct.tuple_callbacks** %18, align 8
  store i8* %8, i8** %19, align 8
  %22 = load i8*, i8** %19, align 8
  %23 = bitcast i8* %22 to %struct.cis_buffer*
  store %struct.cis_buffer* %23, %struct.cis_buffer** %20, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @CISTPL_END, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %9
  %28 = load %struct.cis_buffer*, %struct.cis_buffer** %20, align 8
  %29 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = icmp ugt i64 %32, 8
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.cis_buffer*, %struct.cis_buffer** %20, align 8
  %36 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i32, i32* @ENOSPC, align 4
  store i32 %37, i32* %10, align 4
  br label %106

38:                                               ; preds = %27
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.cis_buffer*, %struct.cis_buffer** %20, align 8
  %41 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.cis_buffer*, %struct.cis_buffer** %20, align 8
  %44 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  store i32 %39, i32* %48, align 4
  store i32 0, i32* %10, align 4
  br label %106

49:                                               ; preds = %9
  %50 = load %struct.cis_buffer*, %struct.cis_buffer** %20, align 8
  %51 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 2
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = icmp ugt i64 %56, 8
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load %struct.cis_buffer*, %struct.cis_buffer** %20, align 8
  %60 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load i32, i32* @ENOSPC, align 4
  store i32 %61, i32* %10, align 4
  br label %106

62:                                               ; preds = %49
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.cis_buffer*, %struct.cis_buffer** %20, align 8
  %65 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.cis_buffer*, %struct.cis_buffer** %20, align 8
  %68 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  store i32 %63, i32* %72, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.cis_buffer*, %struct.cis_buffer** %20, align 8
  %75 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.cis_buffer*, %struct.cis_buffer** %20, align 8
  %78 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  store i32 %73, i32* %82, align 4
  store i32 0, i32* %21, align 4
  br label %83

83:                                               ; preds = %102, %62
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %83
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* %21, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.cis_buffer*, %struct.cis_buffer** %20, align 8
  %94 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.cis_buffer*, %struct.cis_buffer** %20, align 8
  %97 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %95, i64 %100
  store i32 %92, i32* %101, align 4
  br label %102

102:                                              ; preds = %87
  %103 = load i32, i32* %21, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %21, align 4
  br label %83

105:                                              ; preds = %83
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %105, %58, %38, %34
  %107 = load i32, i32* %10, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
