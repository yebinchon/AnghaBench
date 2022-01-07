; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tee.c_ng_tee_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tee.c_ng_tee_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__* }

@NG_TEE_HOOK_RIGHT = common dso_local global i32 0, align 4
@NG_TEE_HOOK_LEFT = common dso_local global i32 0, align 4
@NG_TEE_HOOK_RIGHT2LEFT = common dso_local global i32 0, align 4
@NG_TEE_HOOK_LEFT2RIGHT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @ng_tee_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_tee_newhook(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* @NG_TEE_HOOK_RIGHT, align 4
  %14 = call i64 @strcmp(i8* %12, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %9, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %31, align 8
  br label %32

32:                                               ; preds = %24, %16
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %40, align 8
  br label %124

41:                                               ; preds = %3
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* @NG_TEE_HOOK_LEFT, align 4
  %44 = call i64 @strcmp(i8* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %9, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %61, align 8
  br label %62

62:                                               ; preds = %54, %46
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %70, align 8
  br label %123

71:                                               ; preds = %41
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* @NG_TEE_HOOK_RIGHT2LEFT, align 4
  %74 = call i64 @strcmp(i8* %72, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %9, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = icmp ne %struct.TYPE_6__* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** %88, align 8
  br label %94

89:                                               ; preds = %76
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %93, align 8
  br label %94

94:                                               ; preds = %89, %84
  br label %122

95:                                               ; preds = %71
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* @NG_TEE_HOOK_LEFT2RIGHT, align 4
  %98 = call i64 @strcmp(i8* %96, i32 %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %95
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store %struct.TYPE_6__* %102, %struct.TYPE_6__** %9, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = icmp ne %struct.TYPE_6__* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %100
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  store %struct.TYPE_6__* %109, %struct.TYPE_6__** %112, align 8
  br label %118

113:                                              ; preds = %100
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %117, align 8
  br label %118

118:                                              ; preds = %113, %108
  br label %121

119:                                              ; preds = %95
  %120 = load i32, i32* @EINVAL, align 4
  store i32 %120, i32* %4, align 4
  br label %134

121:                                              ; preds = %118
  br label %122

122:                                              ; preds = %121, %94
  br label %123

123:                                              ; preds = %122, %62
  br label %124

124:                                              ; preds = %123, %32
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = call i32 @bzero(i32* %129, i32 4)
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %133 = call i32 @NG_HOOK_SET_PRIVATE(i32 %131, %struct.TYPE_6__* %132)
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %124, %119
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
