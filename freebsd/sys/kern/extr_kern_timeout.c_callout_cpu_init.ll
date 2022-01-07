; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_timeout.c_callout_cpu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_timeout.c_callout_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.callout_cpu = type { i32, i32, %struct.callout*, i32, i32, i32, i32*, i32 }
%struct.callout = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"callout\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@callwheelsize = common dso_local global i32 0, align 4
@M_CALLOUT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SBT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"callwheel cpu %d\00", align 1
@ncallout = common dso_local global i32 0, align 4
@CALLOUT_LOCAL_ALLOC = common dso_local global i32 0, align 4
@c_links = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.callout_cpu*, i32)* @callout_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callout_cpu_init(%struct.callout_cpu* %0, i32 %1) #0 {
  %3 = alloca %struct.callout_cpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.callout*, align 8
  %6 = alloca i32, align 4
  store %struct.callout_cpu* %0, %struct.callout_cpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.callout_cpu*, %struct.callout_cpu** %3, align 8
  %8 = getelementptr inbounds %struct.callout_cpu, %struct.callout_cpu* %7, i32 0, i32 7
  %9 = load i32, i32* @MTX_SPIN, align 4
  %10 = load i32, i32* @MTX_RECURSE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @mtx_init(i32* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %11)
  %13 = load %struct.callout_cpu*, %struct.callout_cpu** %3, align 8
  %14 = getelementptr inbounds %struct.callout_cpu, %struct.callout_cpu* %13, i32 0, i32 1
  %15 = call i32 @SLIST_INIT(i32* %14)
  %16 = load %struct.callout_cpu*, %struct.callout_cpu** %3, align 8
  %17 = getelementptr inbounds %struct.callout_cpu, %struct.callout_cpu* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* @callwheelsize, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @M_CALLOUT, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.TYPE_3__* @pcpu_find(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DOMAINSET_PREF(i32 %26)
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = call i32* @malloc_domainset(i32 %21, i32 %22, i32 %27, i32 %28)
  %30 = load %struct.callout_cpu*, %struct.callout_cpu** %3, align 8
  %31 = getelementptr inbounds %struct.callout_cpu, %struct.callout_cpu* %30, i32 0, i32 6
  store i32* %29, i32** %31, align 8
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %44, %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @callwheelsize, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.callout_cpu*, %struct.callout_cpu** %3, align 8
  %38 = getelementptr inbounds %struct.callout_cpu, %struct.callout_cpu* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @LIST_INIT(i32* %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %32

47:                                               ; preds = %32
  %48 = load %struct.callout_cpu*, %struct.callout_cpu** %3, align 8
  %49 = getelementptr inbounds %struct.callout_cpu, %struct.callout_cpu* %48, i32 0, i32 5
  %50 = call i32 @TAILQ_INIT(i32* %49)
  %51 = load i32, i32* @SBT_MAX, align 4
  %52 = load %struct.callout_cpu*, %struct.callout_cpu** %3, align 8
  %53 = getelementptr inbounds %struct.callout_cpu, %struct.callout_cpu* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %61, %47
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.callout_cpu*, %struct.callout_cpu** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @cc_cce_cleanup(%struct.callout_cpu* %58, i32 %59)
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %54

64:                                               ; preds = %54
  %65 = load %struct.callout_cpu*, %struct.callout_cpu** %3, align 8
  %66 = getelementptr inbounds %struct.callout_cpu, %struct.callout_cpu* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @snprintf(i32 %67, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.callout_cpu*, %struct.callout_cpu** %3, align 8
  %71 = getelementptr inbounds %struct.callout_cpu, %struct.callout_cpu* %70, i32 0, i32 2
  %72 = load %struct.callout*, %struct.callout** %71, align 8
  %73 = icmp eq %struct.callout* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %100

75:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %97, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @ncallout, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %76
  %81 = load %struct.callout_cpu*, %struct.callout_cpu** %3, align 8
  %82 = getelementptr inbounds %struct.callout_cpu, %struct.callout_cpu* %81, i32 0, i32 2
  %83 = load %struct.callout*, %struct.callout** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.callout, %struct.callout* %83, i64 %85
  store %struct.callout* %86, %struct.callout** %5, align 8
  %87 = load %struct.callout*, %struct.callout** %5, align 8
  %88 = call i32 @callout_init(%struct.callout* %87, i32 0)
  %89 = load i32, i32* @CALLOUT_LOCAL_ALLOC, align 4
  %90 = load %struct.callout*, %struct.callout** %5, align 8
  %91 = getelementptr inbounds %struct.callout, %struct.callout* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.callout_cpu*, %struct.callout_cpu** %3, align 8
  %93 = getelementptr inbounds %struct.callout_cpu, %struct.callout_cpu* %92, i32 0, i32 1
  %94 = load %struct.callout*, %struct.callout** %5, align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @c_links, i32 0, i32 0), align 4
  %96 = call i32 @SLIST_INSERT_HEAD(i32* %93, %struct.callout* %94, i32 %95)
  br label %97

97:                                               ; preds = %80
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %76

100:                                              ; preds = %74, %76
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32* @malloc_domainset(i32, i32, i32, i32) #1

declare dso_local i32 @DOMAINSET_PREF(i32) #1

declare dso_local %struct.TYPE_3__* @pcpu_find(i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @cc_cce_cleanup(%struct.callout_cpu*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @callout_init(%struct.callout*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.callout*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
