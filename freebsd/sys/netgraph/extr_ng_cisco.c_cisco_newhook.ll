; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_cisco.c_cisco_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_cisco.c_cisco_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@NG_CISCO_HOOK_DOWNSTREAM = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@KEEPALIVE_SECS = common dso_local global i32 0, align 4
@cisco_keepalive = common dso_local global i32 0, align 4
@NG_CISCO_HOOK_INET = common dso_local global i32 0, align 4
@NG_CISCO_HOOK_INET6 = common dso_local global i32 0, align 4
@NG_CISCO_HOOK_APPLETALK = common dso_local global i32 0, align 4
@NG_CISCO_HOOK_IPX = common dso_local global i32 0, align 4
@NG_CISCO_HOOK_DEBUG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @cisco_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cisco_newhook(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TYPE_4__* @NG_NODE_PRIVATE(i32 %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* @NG_CISCO_HOOK_DOWNSTREAM, align 4
  %13 = call i64 @strcmp(i8* %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  %23 = call i32 @NG_HOOK_SET_PRIVATE(i8* %20, %struct.TYPE_5__* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @hz, align 4
  %28 = load i32, i32* @KEEPALIVE_SECS, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = bitcast %struct.TYPE_4__* %30 to i8*
  %32 = call i32 @ng_callout(i32* %25, i32 %26, i32* null, i32 %29, i32* @cisco_keepalive, i8* %31, i32 0)
  br label %104

33:                                               ; preds = %3
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @NG_CISCO_HOOK_INET, align 4
  %36 = call i64 @strcmp(i8* %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = call i32 @NG_HOOK_SET_PRIVATE(i8* %43, %struct.TYPE_5__* %45)
  br label %103

47:                                               ; preds = %33
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @NG_CISCO_HOOK_INET6, align 4
  %50 = call i64 @strcmp(i8* %48, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = call i32 @NG_HOOK_SET_PRIVATE(i8* %57, %struct.TYPE_5__* %59)
  br label %102

61:                                               ; preds = %47
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @NG_CISCO_HOOK_APPLETALK, align 4
  %64 = call i64 @strcmp(i8* %62, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = call i32 @NG_HOOK_SET_PRIVATE(i8* %71, %struct.TYPE_5__* %73)
  br label %101

75:                                               ; preds = %61
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* @NG_CISCO_HOOK_IPX, align 4
  %78 = call i64 @strcmp(i8* %76, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i8* %81, i8** %84, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @NG_HOOK_SET_PRIVATE(i8* %85, %struct.TYPE_5__* %87)
  br label %100

89:                                               ; preds = %75
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* @NG_CISCO_HOOK_DEBUG, align 4
  %92 = call i64 @strcmp(i8* %90, i32 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @NG_HOOK_SET_PRIVATE(i8* %95, %struct.TYPE_5__* null)
  br label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %4, align 4
  br label %105

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %80
  br label %101

101:                                              ; preds = %100, %66
  br label %102

102:                                              ; preds = %101, %52
  br label %103

103:                                              ; preds = %102, %38
  br label %104

104:                                              ; preds = %103, %15
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %97
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_4__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @ng_callout(i32*, i32, i32*, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
