; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_con_part2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_con_part2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_20__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32, i32 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*)* }

@.str = private unnamed_addr constant [26 x i8] c"failed in ng_con_part2()\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@hk_hooks = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed in ng_con_part2(A)\0A\00", align 1
@ng_deadhook = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"failed in ng_con_part2(B)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ng_con_part3 = common dso_local global i32 0, align 4
@NG_REUSE_ITEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed in ng_con_part2(C)\0A\00", align 1
@HK_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32, %struct.TYPE_20__*)* @ng_con_part2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_con_part2(%struct.TYPE_19__* %0, i32 %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %12 = call i32 @NG_HOOK_NAME(%struct.TYPE_20__* %11)
  %13 = call i32* @ng_findhook(%struct.TYPE_19__* %10, i32 %12)
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = call i32 (...) @TRAP_ERROR()
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %18 = call i32 @ng_destroy_hook(%struct.TYPE_20__* %17)
  %19 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EEXIST, align 4
  %21 = call i32 @ERROUT(i32 %20)
  br label %22

22:                                               ; preds = %15, %3
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32)* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %22
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32)** %33, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %34(%struct.TYPE_19__* %35, %struct.TYPE_20__* %36, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %44 = call i32 @ng_destroy_hook(%struct.TYPE_20__* %43)
  %45 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @ERROUT(i32 %46)
  br label %48

48:                                               ; preds = %42, %29
  br label %49

49:                                               ; preds = %48, %22
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %52, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %54 = call i32 @NG_NODE_REF(%struct.TYPE_19__* %53)
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %58 = load i32, i32* @hk_hooks, align 4
  %59 = call i32 @LIST_INSERT_HEAD(i32* %56, %struct.TYPE_20__* %57, i32 %58)
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %65 = call i32 @NG_HOOK_REF(%struct.TYPE_20__* %64)
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %71, align 8
  %73 = icmp ne i32 (%struct.TYPE_20__*)* %72, null
  br i1 %73, label %74, label %92

74:                                               ; preds = %49
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %80, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %83 = call i32 %81(%struct.TYPE_20__* %82)
  store i32 %83, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %74
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %87 = call i32 @ng_destroy_hook(%struct.TYPE_20__* %86)
  %88 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @ERROUT(i32 %89)
  br label %91

91:                                               ; preds = %85, %74
  br label %92

92:                                               ; preds = %91, %49
  %93 = call i32 (...) @TOPOLOGY_RLOCK()
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  store %struct.TYPE_20__* %96, %struct.TYPE_20__** %8, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %98 = icmp eq %struct.TYPE_20__* %97, @ng_deadhook
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = call i32 (...) @TOPOLOGY_RUNLOCK()
  %101 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %103 = call i32 @ng_destroy_hook(%struct.TYPE_20__* %102)
  %104 = load i32, i32* @ENOENT, align 4
  %105 = call i32 @ERROUT(i32 %104)
  br label %106

106:                                              ; preds = %99, %92
  %107 = call i32 (...) @TOPOLOGY_RUNLOCK()
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %109, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @NG_REUSE_ITEM, align 4
  %114 = call i32 @ng_send_fn2(%struct.TYPE_19__* %110, %struct.TYPE_20__* %111, i32 %112, i32* @ng_con_part3, i32* null, i32 0, i32 %113)
  store i32 %114, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %106
  %117 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %119 = call i32 @ng_destroy_hook(%struct.TYPE_20__* %118)
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %4, align 4
  br label %132

121:                                              ; preds = %106
  %122 = load i32, i32* @HK_INVALID, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  store i32 0, i32* %4, align 4
  br label %132

128:                                              ; No predecessors!
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @NG_FREE_ITEM(i32 %129)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %128, %121, %116
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32* @ng_findhook(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @NG_HOOK_NAME(%struct.TYPE_20__*) #1

declare dso_local i32 @TRAP_ERROR(...) #1

declare dso_local i32 @ng_destroy_hook(%struct.TYPE_20__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local i32 @NG_NODE_REF(%struct.TYPE_19__*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @NG_HOOK_REF(%struct.TYPE_20__*) #1

declare dso_local i32 @TOPOLOGY_RLOCK(...) #1

declare dso_local i32 @TOPOLOGY_RUNLOCK(...) #1

declare dso_local i32 @ng_send_fn2(%struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
