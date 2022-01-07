; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_mkpeer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_mkpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*)* }

@HK_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i8*)* @ng_mkpeer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_mkpeer(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i32 @ng_make_node(i8* %14, i32* %10)
  store i32 %15, i32* %13, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %13, align 4
  store i32 %18, i32* %5, align 4
  br label %119

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @ng_add_hook(i32 %20, i8* %21, %struct.TYPE_12__** %11)
  store i32 %22, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @ng_rmnode(i32 %25, i32* null, i32* null, i32 0)
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %5, align 4
  br label %119

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @ng_add_hook(i32 %29, i8* %30, %struct.TYPE_12__** %12)
  store i32 %31, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @ng_rmnode(i32 %34, i32* null, i32* null, i32 0)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %37 = call i32 @ng_destroy_hook(%struct.TYPE_12__* %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %39 = call i32 @NG_HOOK_UNREF(%struct.TYPE_12__* %38)
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %5, align 4
  br label %119

41:                                               ; preds = %28
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %49 = call i32 @NG_HOOK_REF(%struct.TYPE_12__* %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %51 = call i32 @NG_HOOK_REF(%struct.TYPE_12__* %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %57, align 8
  %59 = icmp ne i32 (%struct.TYPE_12__*)* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %41
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %69 = call i32 %67(%struct.TYPE_12__* %68)
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %60, %41
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %70
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %79, align 8
  %81 = icmp ne i32 (%struct.TYPE_12__*)* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %73
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %88, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %91 = call i32 %89(%struct.TYPE_12__* %90)
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %82, %73, %70
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %97 = call i32 @ng_destroy_hook(%struct.TYPE_12__* %96)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @ng_rmnode(i32 %98, i32* null, i32* null, i32 0)
  br label %113

100:                                              ; preds = %92
  %101 = load i32, i32* @HK_INVALID, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* @HK_INVALID, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %100, %95
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %115 = call i32 @NG_HOOK_UNREF(%struct.TYPE_12__* %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %117 = call i32 @NG_HOOK_UNREF(%struct.TYPE_12__* %116)
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %113, %33, %24, %17
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @ng_make_node(i8*, i32*) #1

declare dso_local i32 @ng_add_hook(i32, i8*, %struct.TYPE_12__**) #1

declare dso_local i32 @ng_rmnode(i32, i32*, i32*, i32) #1

declare dso_local i32 @ng_destroy_hook(%struct.TYPE_12__*) #1

declare dso_local i32 @NG_HOOK_UNREF(%struct.TYPE_12__*) #1

declare dso_local i32 @NG_HOOK_REF(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
