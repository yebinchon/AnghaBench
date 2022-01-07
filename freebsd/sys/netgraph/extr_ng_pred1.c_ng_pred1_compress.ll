; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pred1.c_ng_pred1_compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pred1.c_ng_pred1_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@PRED1_BUF_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@PPP_INITFCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mbuf*, %struct.mbuf**)* @ng_pred1_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_pred1_compress(i32 %0, %struct.mbuf* %1, %struct.mbuf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %8, align 8
  %17 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* null, %struct.mbuf** %17, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, %27
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @PRED1_BUF_SIZE, align 4
  %35 = mul nsw i32 %34, 8
  %36 = sdiv i32 %35, 9
  %37 = add nsw i32 %36, 1
  %38 = add nsw i32 %37, 4
  %39 = icmp sgt i32 %33, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %3
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %47 = call i32 @NG_FREE_M(%struct.mbuf* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %4, align 4
  br label %191

49:                                               ; preds = %3
  %50 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %51 = load i32, i32* @M_NOWAIT, align 4
  %52 = call %struct.mbuf* @m_unshare(%struct.mbuf* %50, i32 %51)
  store %struct.mbuf* %52, %struct.mbuf** %6, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %54 = icmp eq %struct.mbuf* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %4, align 4
  br label %191

62:                                               ; preds = %49
  %63 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = ptrtoint i32* %68 to i32
  %70 = call i32 @m_copydata(%struct.mbuf* %63, i32 0, i32 %64, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, 32767
  %73 = call i32 @htons(i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* @PPP_INITFCS, align 4
  %75 = call i32 @Crc16(i32 %74, i32* %13, i32 2)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @Crc16(i32 %76, i32* %80, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = xor i32 %83, -1
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @Pred1Compress(i32 %85, i32* %89, i32* %93, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %62
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %11, align 8
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 2, %103
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32*, i32** %11, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, 128
  store i32 %109, i32* %107, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  br label %128

115:                                              ; preds = %62
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %11, align 8
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 2, %119
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32*, i32** %11, align 8
  store i32 %121, i32* %122, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %115, %99
  %129 = load i32, i32* %12, align 4
  %130 = and i32 %129, 255
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 %130, i32* %135, align 4
  %136 = load i32, i32* %12, align 4
  %137 = ashr i32 %136, 8
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 %137, i32* %142, align 4
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 2
  store i32 %144, i32* %9, align 4
  %145 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32*, i32** %11, align 8
  %148 = ptrtoint i32* %147 to i32
  %149 = call i32 @m_copyback(%struct.mbuf* %145, i32 0, i32 %146, i32 %148)
  %150 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %151 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %128
  %157 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %158 = call i32 @m_freem(%struct.mbuf* %157)
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  %164 = load i32, i32* @ENOMEM, align 4
  store i32 %164, i32* %4, align 4
  br label %191

165:                                              ; preds = %128
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %168 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp slt i32 %166, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %165
  %173 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %176 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %174, %178
  %180 = call i32 @m_adj(%struct.mbuf* %173, i32 %179)
  br label %181

181:                                              ; preds = %172, %165
  br label %182

182:                                              ; preds = %181
  %183 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %184 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %183, %struct.mbuf** %184, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, %185
  store i32 %190, i32* %188, align 4
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %182, %156, %55, %40
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local %struct.TYPE_7__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_unshare(%struct.mbuf*, i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @Crc16(i32, i32*, i32) #1

declare dso_local i32 @Pred1Compress(i32, i32*, i32*, i32) #1

declare dso_local i32 @m_copyback(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
