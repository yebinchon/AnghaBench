; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_ngmn_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_ngmn_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn_softc = type { i8*, i32, %struct.TYPE_11__**, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, %struct.trxd*, i32, %struct.trxd* }
%struct.trxd = type { %struct.trxd*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.schan = type { i32, i64, %struct.mn_softc* }

@DOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"%s: zap chan %d stat %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ngmn_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngmn_disconnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mn_softc*, align 8
  %7 = alloca %struct.schan*, align 8
  %8 = alloca %struct.trxd*, align 8
  %9 = alloca %struct.trxd*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.schan* @NG_HOOK_PRIVATE(i32 %11)
  store %struct.schan* %12, %struct.schan** %7, align 8
  %13 = load %struct.schan*, %struct.schan** %7, align 8
  %14 = getelementptr inbounds %struct.schan, %struct.schan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.schan*, %struct.schan** %7, align 8
  %17 = getelementptr inbounds %struct.schan, %struct.schan* %16, i32 0, i32 2
  %18 = load %struct.mn_softc*, %struct.mn_softc** %17, align 8
  store %struct.mn_softc* %18, %struct.mn_softc** %6, align 8
  %19 = load %struct.schan*, %struct.schan** %7, align 8
  %20 = getelementptr inbounds %struct.schan, %struct.schan* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DOWN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %206

25:                                               ; preds = %1
  %26 = load i64, i64* @DOWN, align 8
  %27 = load %struct.schan*, %struct.schan** %7, align 8
  %28 = getelementptr inbounds %struct.schan, %struct.schan* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.mn_softc*, %struct.mn_softc** %6, align 8
  %30 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 -2137915386, i32* %36, align 8
  %37 = load %struct.mn_softc*, %struct.mn_softc** %6, align 8
  %38 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %71, %25
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 32
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  %49 = load %struct.mn_softc*, %struct.mn_softc** %6, align 8
  %50 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %49, i32 0, i32 2
  %51 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %51, i64 %53
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %48
  %63 = load %struct.mn_softc*, %struct.mn_softc** %6, align 8
  %64 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 536879104, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %48
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %45

74:                                               ; preds = %45
  %75 = load i32, i32* %4, align 4
  %76 = shl i32 %75, 8
  %77 = add nsw i32 32768, %76
  %78 = load %struct.mn_softc*, %struct.mn_softc** %6, align 8
  %79 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  %81 = load %struct.mn_softc*, %struct.mn_softc** %6, align 8
  %82 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %81, i32 0, i32 3
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  %85 = call i32 @DELAY(i32 30)
  %86 = load %struct.mn_softc*, %struct.mn_softc** %6, align 8
  %87 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %86, i32 0, i32 3
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %74
  %95 = load %struct.mn_softc*, %struct.mn_softc** %6, align 8
  %96 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %94, %74
  %102 = load %struct.mn_softc*, %struct.mn_softc** %6, align 8
  %103 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %102, i32 0, i32 3
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  %106 = load %struct.mn_softc*, %struct.mn_softc** %6, align 8
  %107 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %106, i32 0, i32 2
  %108 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %108, i64 %110
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = load %struct.trxd*, %struct.trxd** %113, align 8
  store %struct.trxd* %114, %struct.trxd** %8, align 8
  br label %115

115:                                              ; preds = %142, %101
  %116 = load %struct.trxd*, %struct.trxd** %8, align 8
  %117 = icmp ne %struct.trxd* %116, null
  br i1 %117, label %118, label %144

118:                                              ; preds = %115
  %119 = load %struct.trxd*, %struct.trxd** %8, align 8
  %120 = getelementptr inbounds %struct.trxd, %struct.trxd* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = icmp ne %struct.TYPE_12__* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.trxd*, %struct.trxd** %8, align 8
  %125 = getelementptr inbounds %struct.trxd, %struct.trxd* %124, i32 0, i32 1
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = call i32 @m_freem(%struct.TYPE_12__* %126)
  br label %128

128:                                              ; preds = %123, %118
  %129 = load %struct.trxd*, %struct.trxd** %8, align 8
  %130 = getelementptr inbounds %struct.trxd, %struct.trxd* %129, i32 0, i32 0
  %131 = load %struct.trxd*, %struct.trxd** %130, align 8
  store %struct.trxd* %131, %struct.trxd** %9, align 8
  %132 = load %struct.mn_softc*, %struct.mn_softc** %6, align 8
  %133 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %132, i32 0, i32 2
  %134 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %134, i64 %136
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 3
  store %struct.trxd* %131, %struct.trxd** %139, align 8
  %140 = load %struct.trxd*, %struct.trxd** %8, align 8
  %141 = call i32 @mn_free_desc(%struct.trxd* %140)
  br label %142

142:                                              ; preds = %128
  %143 = load %struct.trxd*, %struct.trxd** %9, align 8
  store %struct.trxd* %143, %struct.trxd** %8, align 8
  br label %115

144:                                              ; preds = %115
  %145 = load %struct.mn_softc*, %struct.mn_softc** %6, align 8
  %146 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %145, i32 0, i32 2
  %147 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %147, i64 %149
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load %struct.trxd*, %struct.trxd** %152, align 8
  store %struct.trxd* %153, %struct.trxd** %8, align 8
  br label %154

154:                                              ; preds = %199, %144
  %155 = load %struct.trxd*, %struct.trxd** %8, align 8
  %156 = icmp ne %struct.trxd* %155, null
  br i1 %156, label %157, label %201

157:                                              ; preds = %154
  %158 = load %struct.trxd*, %struct.trxd** %8, align 8
  %159 = getelementptr inbounds %struct.trxd, %struct.trxd* %158, i32 0, i32 1
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = icmp ne %struct.TYPE_12__* %160, null
  br i1 %161, label %162, label %185

162:                                              ; preds = %157
  %163 = load %struct.trxd*, %struct.trxd** %8, align 8
  %164 = getelementptr inbounds %struct.trxd, %struct.trxd* %163, i32 0, i32 1
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.mn_softc*, %struct.mn_softc** %6, align 8
  %170 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %169, i32 0, i32 2
  %171 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %170, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %171, i64 %173
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = sub nsw i64 %178, %168
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %176, align 8
  %181 = load %struct.trxd*, %struct.trxd** %8, align 8
  %182 = getelementptr inbounds %struct.trxd, %struct.trxd* %181, i32 0, i32 1
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = call i32 @m_freem(%struct.TYPE_12__* %183)
  br label %185

185:                                              ; preds = %162, %157
  %186 = load %struct.trxd*, %struct.trxd** %8, align 8
  %187 = getelementptr inbounds %struct.trxd, %struct.trxd* %186, i32 0, i32 0
  %188 = load %struct.trxd*, %struct.trxd** %187, align 8
  store %struct.trxd* %188, %struct.trxd** %9, align 8
  %189 = load %struct.mn_softc*, %struct.mn_softc** %6, align 8
  %190 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %189, i32 0, i32 2
  %191 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %190, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %191, i64 %193
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  store %struct.trxd* %188, %struct.trxd** %196, align 8
  %197 = load %struct.trxd*, %struct.trxd** %8, align 8
  %198 = call i32 @mn_free_desc(%struct.trxd* %197)
  br label %199

199:                                              ; preds = %185
  %200 = load %struct.trxd*, %struct.trxd** %9, align 8
  store %struct.trxd* %200, %struct.trxd** %8, align 8
  br label %154

201:                                              ; preds = %154
  %202 = load %struct.mn_softc*, %struct.mn_softc** %6, align 8
  %203 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %203, align 8
  store i32 0, i32* %2, align 4
  br label %206

206:                                              ; preds = %201, %24
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local %struct.schan* @NG_HOOK_PRIVATE(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.TYPE_12__*) #1

declare dso_local i32 @mn_free_desc(%struct.trxd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
