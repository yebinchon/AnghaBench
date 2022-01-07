; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_scope6_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_scope6_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.scope6_id = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_INTFACELOCAL = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_LINKLOCAL = common dso_local global i32 0, align 4
@V_if_index = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.scope6_id*)* @scope6_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scope6_set(%struct.ifnet* %0, %struct.scope6_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.scope6_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scope6_id*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.scope6_id* %1, %struct.scope6_id** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.scope6_id* null, %struct.scope6_id** %8, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = call i32 @IF_AFDATA_WLOCK(%struct.ifnet* %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = call %struct.scope6_id* @SID(%struct.ifnet* %11)
  store %struct.scope6_id* %12, %struct.scope6_id** %8, align 8
  %13 = load %struct.scope6_id*, %struct.scope6_id** %8, align 8
  %14 = icmp ne %struct.scope6_id* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = call i32 @IF_AFDATA_WUNLOCK(%struct.ifnet* %16)
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %108

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %101, %19
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %23, label %104

23:                                               ; preds = %20
  %24 = load %struct.scope6_id*, %struct.scope6_id** %5, align 8
  %25 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %100

32:                                               ; preds = %23
  %33 = load %struct.scope6_id*, %struct.scope6_id** %5, align 8
  %34 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.scope6_id*, %struct.scope6_id** %8, align 8
  %41 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %39, %46
  br i1 %47, label %48, label %100

48:                                               ; preds = %32
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @IPV6_ADDR_SCOPE_INTFACELOCAL, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load %struct.scope6_id*, %struct.scope6_id** %5, align 8
  %54 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  %65 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %66 = call i32 @IF_AFDATA_WUNLOCK(%struct.ifnet* %65)
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %3, align 4
  br label %108

68:                                               ; preds = %52, %48
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @IPV6_ADDR_SCOPE_LINKLOCAL, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load %struct.scope6_id*, %struct.scope6_id** %5, align 8
  %74 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @V_if_index, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %84 = call i32 @IF_AFDATA_WUNLOCK(%struct.ifnet* %83)
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %3, align 4
  br label %108

86:                                               ; preds = %72, %68
  %87 = load %struct.scope6_id*, %struct.scope6_id** %5, align 8
  %88 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.scope6_id*, %struct.scope6_id** %8, align 8
  %95 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 %93, i64* %99, align 8
  br label %100

100:                                              ; preds = %86, %32, %23
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %20

104:                                              ; preds = %20
  %105 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %106 = call i32 @IF_AFDATA_WUNLOCK(%struct.ifnet* %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %82, %64, %15
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @IF_AFDATA_WLOCK(%struct.ifnet*) #1

declare dso_local %struct.scope6_id* @SID(%struct.ifnet*) #1

declare dso_local i32 @IF_AFDATA_WUNLOCK(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
