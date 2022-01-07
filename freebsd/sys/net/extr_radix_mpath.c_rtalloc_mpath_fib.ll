; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_radix_mpath.c_rtalloc_mpath_fib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_radix_mpath.c_rtalloc_mpath_fib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route = type { %struct.rtentry*, i32 }
%struct.rtentry = type { i32, i64 }
%struct.radix_node = type { i32 }

@RTF_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtalloc_mpath_fib(%struct.route* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.route*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtentry*, align 8
  store %struct.route* %0, %struct.route** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.route*, %struct.route** %4, align 8
  %9 = getelementptr inbounds %struct.route, %struct.route* %8, i32 0, i32 0
  %10 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %11 = icmp ne %struct.rtentry* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = load %struct.route*, %struct.route** %4, align 8
  %14 = getelementptr inbounds %struct.route, %struct.route* %13, i32 0, i32 0
  %15 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %16 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = load %struct.route*, %struct.route** %4, align 8
  %21 = getelementptr inbounds %struct.route, %struct.route* %20, i32 0, i32 0
  %22 = load %struct.rtentry*, %struct.rtentry** %21, align 8
  %23 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RTF_UP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load %struct.route*, %struct.route** %4, align 8
  %30 = getelementptr inbounds %struct.route, %struct.route* %29, i32 0, i32 0
  %31 = load %struct.rtentry*, %struct.rtentry** %30, align 8
  %32 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @RT_LINK_IS_UP(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %103

37:                                               ; preds = %28, %19, %12, %3
  %38 = load %struct.route*, %struct.route** %4, align 8
  %39 = getelementptr inbounds %struct.route, %struct.route* %38, i32 0, i32 1
  %40 = load i32, i32* %6, align 4
  %41 = call %struct.rtentry* @rtalloc1_fib(i32* %39, i32 1, i32 0, i32 %40)
  %42 = load %struct.route*, %struct.route** %4, align 8
  %43 = getelementptr inbounds %struct.route, %struct.route* %42, i32 0, i32 0
  store %struct.rtentry* %41, %struct.rtentry** %43, align 8
  %44 = load %struct.route*, %struct.route** %4, align 8
  %45 = getelementptr inbounds %struct.route, %struct.route* %44, i32 0, i32 0
  %46 = load %struct.rtentry*, %struct.rtentry** %45, align 8
  %47 = icmp eq %struct.rtentry* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %103

49:                                               ; preds = %37
  %50 = load %struct.route*, %struct.route** %4, align 8
  %51 = getelementptr inbounds %struct.route, %struct.route* %50, i32 0, i32 0
  %52 = load %struct.rtentry*, %struct.rtentry** %51, align 8
  %53 = bitcast %struct.rtentry* %52 to %struct.radix_node*
  %54 = call i32* @rn_mpath_next(%struct.radix_node* %53)
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.route*, %struct.route** %4, align 8
  %58 = getelementptr inbounds %struct.route, %struct.route* %57, i32 0, i32 0
  %59 = load %struct.rtentry*, %struct.rtentry** %58, align 8
  %60 = call i32 @RT_UNLOCK(%struct.rtentry* %59)
  br label %103

61:                                               ; preds = %49
  %62 = load %struct.route*, %struct.route** %4, align 8
  %63 = getelementptr inbounds %struct.route, %struct.route* %62, i32 0, i32 0
  %64 = load %struct.rtentry*, %struct.rtentry** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call %struct.rtentry* @rt_mpath_selectrte(%struct.rtentry* %64, i32 %65)
  store %struct.rtentry* %66, %struct.rtentry** %7, align 8
  %67 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %68 = icmp ne %struct.rtentry* %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %61
  %70 = load %struct.route*, %struct.route** %4, align 8
  %71 = getelementptr inbounds %struct.route, %struct.route* %70, i32 0, i32 0
  %72 = load %struct.rtentry*, %struct.rtentry** %71, align 8
  %73 = call i32 @RT_UNLOCK(%struct.rtentry* %72)
  %74 = load %struct.route*, %struct.route** %4, align 8
  %75 = getelementptr inbounds %struct.route, %struct.route* %74, i32 0, i32 0
  store %struct.rtentry* null, %struct.rtentry** %75, align 8
  br label %103

76:                                               ; preds = %61
  %77 = load %struct.route*, %struct.route** %4, align 8
  %78 = getelementptr inbounds %struct.route, %struct.route* %77, i32 0, i32 0
  %79 = load %struct.rtentry*, %struct.rtentry** %78, align 8
  %80 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %81 = icmp ne %struct.rtentry* %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %76
  %83 = load %struct.route*, %struct.route** %4, align 8
  %84 = getelementptr inbounds %struct.route, %struct.route* %83, i32 0, i32 0
  %85 = load %struct.rtentry*, %struct.rtentry** %84, align 8
  %86 = call i32 @RTFREE_LOCKED(%struct.rtentry* %85)
  %87 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %88 = load %struct.route*, %struct.route** %4, align 8
  %89 = getelementptr inbounds %struct.route, %struct.route* %88, i32 0, i32 0
  store %struct.rtentry* %87, %struct.rtentry** %89, align 8
  %90 = load %struct.route*, %struct.route** %4, align 8
  %91 = getelementptr inbounds %struct.route, %struct.route* %90, i32 0, i32 0
  %92 = load %struct.rtentry*, %struct.rtentry** %91, align 8
  %93 = call i32 @RT_LOCK(%struct.rtentry* %92)
  %94 = load %struct.route*, %struct.route** %4, align 8
  %95 = getelementptr inbounds %struct.route, %struct.route* %94, i32 0, i32 0
  %96 = load %struct.rtentry*, %struct.rtentry** %95, align 8
  %97 = call i32 @RT_ADDREF(%struct.rtentry* %96)
  br label %98

98:                                               ; preds = %82, %76
  %99 = load %struct.route*, %struct.route** %4, align 8
  %100 = getelementptr inbounds %struct.route, %struct.route* %99, i32 0, i32 0
  %101 = load %struct.rtentry*, %struct.rtentry** %100, align 8
  %102 = call i32 @RT_UNLOCK(%struct.rtentry* %101)
  br label %103

103:                                              ; preds = %98, %69, %56, %48, %36
  ret void
}

declare dso_local i64 @RT_LINK_IS_UP(i64) #1

declare dso_local %struct.rtentry* @rtalloc1_fib(i32*, i32, i32, i32) #1

declare dso_local i32* @rn_mpath_next(%struct.radix_node*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local %struct.rtentry* @rt_mpath_selectrte(%struct.rtentry*, i32) #1

declare dso_local i32 @RTFREE_LOCKED(%struct.rtentry*) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_ADDREF(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
