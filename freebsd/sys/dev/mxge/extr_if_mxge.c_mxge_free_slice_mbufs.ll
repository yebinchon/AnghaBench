; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_free_slice_mbufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_free_slice_mbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxge_slice_state = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32*, i32, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxge_slice_state*)* @mxge_free_slice_mbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxge_free_slice_mbufs(%struct.mxge_slice_state* %0) #0 {
  %2 = alloca %struct.mxge_slice_state*, align 8
  %3 = alloca i32, align 4
  store %struct.mxge_slice_state* %0, %struct.mxge_slice_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %56, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %7 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sle i32 %5, %9
  br i1 %10, label %11, label %59

11:                                               ; preds = %4
  %12 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %13 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %56

23:                                               ; preds = %11
  %24 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %25 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %29 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bus_dmamap_unload(i32 %27, i32 %36)
  %38 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %39 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @m_freem(i32* %46)
  %48 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %49 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %23, %22
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %4

59:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %112, %59
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %63 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sle i32 %61, %65
  br i1 %66, label %67, label %115

67:                                               ; preds = %60
  %68 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %69 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %112

79:                                               ; preds = %67
  %80 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %81 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %85 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @bus_dmamap_unload(i32 %83, i32 %92)
  %94 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %95 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @m_freem(i32* %102)
  %104 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %105 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %79, %78
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %60

115:                                              ; preds = %60
  %116 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %117 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = icmp eq %struct.TYPE_11__* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %186

122:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %183, %122
  %124 = load i32, i32* %3, align 4
  %125 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %126 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp sle i32 %124, %128
  br i1 %129, label %130, label %186

130:                                              ; preds = %123
  %131 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %132 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  store i64 0, i64* %138, align 8
  %139 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %140 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = load i32, i32* %3, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %130
  br label %183

150:                                              ; preds = %130
  %151 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %152 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %156 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @bus_dmamap_unload(i32 %154, i32 %163)
  %165 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %166 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @m_freem(i32* %173)
  %175 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %176 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  store i32* null, i32** %182, align 8
  br label %183

183:                                              ; preds = %150, %149
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %3, align 4
  br label %123

186:                                              ; preds = %121, %123
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
