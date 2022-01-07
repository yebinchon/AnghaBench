; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_sample.c_ng_xxx_rcvdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_sample.c_ng_xxx_rcvdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.mbuf = type { i32 }
%struct.XXX_hookinfo = type { i32, i32 }

@XXX_NUM_DLCIS = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @ng_xxx_rcvdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_xxx_rcvdata(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @NG_HOOK_NODE(i64 %11)
  %13 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  store i32 -2, i32* %7, align 4
  store i32 -2, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %16 = call i32 @NGI_GET_M(i32 %14, %struct.mbuf* %15)
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @NG_HOOK_PRIVATE(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %95

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @NG_HOOK_PRIVATE(i64 %21)
  %23 = inttoptr i64 %22 to %struct.XXX_hookinfo*
  %24 = getelementptr inbounds %struct.XXX_hookinfo, %struct.XXX_hookinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @NG_HOOK_PRIVATE(i64 %26)
  %28 = inttoptr i64 %27 to %struct.XXX_hookinfo*
  %29 = getelementptr inbounds %struct.XXX_hookinfo, %struct.XXX_hookinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %46

33:                                               ; preds = %20
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %41 = call i32 @NG_FWD_NEW_DATA(i32 %34, i32 %35, i64 %39, %struct.mbuf* %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %94

46:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %64, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @XXX_NUM_DLCIS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %67

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %47

67:                                               ; preds = %62, %47
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @XXX_NUM_DLCIS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @NG_FREE_ITEM(i32 %72)
  %74 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %75 = call i32 @NG_FREE_M(%struct.mbuf* %74)
  %76 = load i32, i32* @ENETUNREACH, align 4
  store i32 %76, i32* %3, align 4
  br label %109

77:                                               ; preds = %67
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %89 = call i32 @NG_FWD_NEW_DATA(i32 %78, i32 %79, i64 %87, %struct.mbuf* %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %77, %33
  br label %108

95:                                               ; preds = %2
  %96 = load i64, i64* %4, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %96, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @NG_FREE_ITEM(i32 %103)
  %105 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %106 = call i32 @NG_FREE_M(%struct.mbuf* %105)
  br label %107

107:                                              ; preds = %102, %95
  br label %108

108:                                              ; preds = %107, %94
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %71
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_7__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i64) #1

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local i64 @NG_HOOK_PRIVATE(i64) #1

declare dso_local i32 @NG_FWD_NEW_DATA(i32, i32, i64, %struct.mbuf*) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
