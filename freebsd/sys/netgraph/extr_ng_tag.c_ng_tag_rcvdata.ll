; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tag.c_ng_tag_rcvdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tag.c_ng_tag_rcvdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.m_tag = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_5__, i32*, i32*, i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ng_tag_rcvdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_tag_rcvdata(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.m_tag*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.m_tag* null, %struct.m_tag** %7, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i8* @NG_HOOK_PRIVATE(i32* %17)
  %19 = bitcast i8* %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %8, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.mbuf* @NGI_M(i32 %20)
  store %struct.mbuf* %21, %struct.mbuf** %6, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %37, %2
  %41 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %41, i64 %42, i64 %43, %struct.m_tag* null)
  store %struct.m_tag* %44, %struct.m_tag** %7, align 8
  br label %45

45:                                               ; preds = %59, %40
  %46 = load %struct.m_tag*, %struct.m_tag** %7, align 8
  %47 = icmp ne %struct.m_tag* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load %struct.m_tag*, %struct.m_tag** %7, align 8
  %50 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %49, i64 1
  %51 = bitcast %struct.m_tag* %50 to i8*
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @memcmp(i8* %51, i32 %54, i64 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 1, i32* %15, align 4
  br label %65

59:                                               ; preds = %48
  %60 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.m_tag*, %struct.m_tag** %7, align 8
  %64 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %60, i64 %61, i64 %62, %struct.m_tag* %63)
  store %struct.m_tag* %64, %struct.m_tag** %7, align 8
  br label %45

65:                                               ; preds = %58, %45
  br label %66

66:                                               ; preds = %65, %37
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 10
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %76 = load %struct.m_tag*, %struct.m_tag** %7, align 8
  %77 = call i32 @m_tag_delete(%struct.mbuf* %75, %struct.m_tag* %76)
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 9
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %13, align 8
  br label %86

82:                                               ; preds = %66
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 8
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %13, align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i32*, i32** %13, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @NG_FREE_ITEM(i32 %90)
  store i32 0, i32* %3, align 4
  br label %141

92:                                               ; preds = %86
  %93 = load i32*, i32** %13, align 8
  %94 = call i8* @NG_HOOK_PRIVATE(i32* %93)
  %95 = bitcast i8* %94 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %95, %struct.TYPE_6__** %12, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %11, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %9, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %92
  %108 = load i64, i64* %9, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %135

110:                                              ; preds = %107, %92
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %10, align 8
  %114 = load i32, i32* @M_NOWAIT, align 4
  %115 = call %struct.m_tag* @m_tag_alloc(i64 %111, i64 %112, i64 %113, i32 %114)
  store %struct.m_tag* %115, %struct.m_tag** %7, align 8
  %116 = load %struct.m_tag*, %struct.m_tag** %7, align 8
  %117 = icmp ne %struct.m_tag* %116, null
  br i1 %117, label %118, label %134

118:                                              ; preds = %110
  %119 = load i64, i64* %10, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load %struct.m_tag*, %struct.m_tag** %7, align 8
  %123 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %122, i64 1
  %124 = bitcast %struct.m_tag* %123 to i8*
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @memcpy(i8* %124, i32 %127, i64 %128)
  br label %130

130:                                              ; preds = %121, %118
  %131 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %132 = load %struct.m_tag*, %struct.m_tag** %7, align 8
  %133 = call i32 @m_tag_prepend(%struct.mbuf* %131, %struct.m_tag* %132)
  br label %134

134:                                              ; preds = %130, %110
  br label %135

135:                                              ; preds = %134, %107
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32*, i32** %13, align 8
  %139 = call i32 @NG_FWD_ITEM_HOOK(i32 %136, i32 %137, i32* %138)
  %140 = load i32, i32* %16, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %135, %89
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i8* @NG_HOOK_PRIVATE(i32*) #1

declare dso_local %struct.mbuf* @NGI_M(i32) #1

declare dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf*, i64, i64, %struct.m_tag*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @m_tag_delete(%struct.mbuf*, %struct.m_tag*) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local %struct.m_tag* @m_tag_alloc(i64, i64, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

declare dso_local i32 @NG_FWD_ITEM_HOOK(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
