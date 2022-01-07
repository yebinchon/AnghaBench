; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_ngmn_rcvdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_ngmn_rcvdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_5__, %struct.mbuf*, %struct.trxd* }
%struct.TYPE_5__ = type { i32 }
%struct.trxd = type { i32, %struct.mbuf*, %struct.trxd*, i8*, i8* }
%struct.schan = type { i32, i64, i32, i32, %struct.mn_softc* }
%struct.mn_softc = type { i8*, %struct.TYPE_6__*, %struct.TYPE_4__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.trxd* }

@UP = common dso_local global i64 0, align 8
@mn_maxlatency = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s%d: Short on mem, pitched %d packets\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ngmn_rcvdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngmn_rcvdata(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.trxd*, align 8
  %8 = alloca %struct.trxd*, align 8
  %9 = alloca %struct.schan*, align 8
  %10 = alloca %struct.mn_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.schan* @NG_HOOK_PRIVATE(i32 %15)
  store %struct.schan* %16, %struct.schan** %9, align 8
  %17 = load %struct.schan*, %struct.schan** %9, align 8
  %18 = getelementptr inbounds %struct.schan, %struct.schan* %17, i32 0, i32 4
  %19 = load %struct.mn_softc*, %struct.mn_softc** %18, align 8
  store %struct.mn_softc* %19, %struct.mn_softc** %10, align 8
  %20 = load %struct.schan*, %struct.schan** %9, align 8
  %21 = getelementptr inbounds %struct.schan, %struct.schan* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.schan*, %struct.schan** %9, align 8
  %24 = getelementptr inbounds %struct.schan, %struct.schan* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UP, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @NG_FREE_ITEM(i32 %29)
  store i32 0, i32* %3, align 4
  br label %226

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %34 = call i32 @NGI_GET_M(i32 %32, %struct.mbuf* %33)
  %35 = load %struct.schan*, %struct.schan** %9, align 8
  %36 = getelementptr inbounds %struct.schan, %struct.schan* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %37, %41
  %43 = load %struct.schan*, %struct.schan** %9, align 8
  %44 = getelementptr inbounds %struct.schan, %struct.schan* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @mn_maxlatency, align 4
  %47 = mul nsw i32 %45, %46
  %48 = icmp sgt i32 %42, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %31
  %50 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %51 = call i32 @NG_FREE_M(%struct.mbuf* %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @NG_FREE_ITEM(i32 %52)
  store i32 0, i32* %3, align 4
  br label %226

54:                                               ; preds = %31
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @NG_FREE_ITEM(i32 %55)
  store i32 0, i32* %12, align 4
  %57 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  store %struct.mbuf* %57, %struct.mbuf** %6, align 8
  %58 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %59 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %60, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.trxd*, %struct.trxd** %65, align 8
  store %struct.trxd* %66, %struct.trxd** %8, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %196, %54
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %197

74:                                               ; preds = %71
  %75 = call %struct.trxd* (...) @mn_alloc_desc()
  store %struct.trxd* %75, %struct.trxd** %7, align 8
  %76 = load %struct.trxd*, %struct.trxd** %7, align 8
  %77 = icmp ne %struct.trxd* %76, null
  br i1 %77, label %116, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  %81 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %82 = call i32 @m_freem(%struct.mbuf* %81)
  %83 = load %struct.trxd*, %struct.trxd** %8, align 8
  %84 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %85 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %86, i64 %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store %struct.trxd* %83, %struct.trxd** %91, align 8
  %92 = load %struct.trxd*, %struct.trxd** %8, align 8
  %93 = getelementptr inbounds %struct.trxd, %struct.trxd* %92, i32 0, i32 2
  %94 = load %struct.trxd*, %struct.trxd** %93, align 8
  store %struct.trxd* %94, %struct.trxd** %7, align 8
  br label %95

95:                                               ; preds = %98, %78
  %96 = load %struct.trxd*, %struct.trxd** %7, align 8
  %97 = icmp ne %struct.trxd* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load %struct.trxd*, %struct.trxd** %7, align 8
  %100 = getelementptr inbounds %struct.trxd, %struct.trxd* %99, i32 0, i32 2
  %101 = load %struct.trxd*, %struct.trxd** %100, align 8
  store %struct.trxd* %101, %struct.trxd** %8, align 8
  %102 = load %struct.trxd*, %struct.trxd** %7, align 8
  %103 = call i32 @mn_free_desc(%struct.trxd* %102)
  %104 = load %struct.trxd*, %struct.trxd** %8, align 8
  store %struct.trxd* %104, %struct.trxd** %7, align 8
  br label %95

105:                                              ; preds = %95
  %106 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %107 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %108, i64 %110
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.trxd*, %struct.trxd** %113, align 8
  %115 = getelementptr inbounds %struct.trxd, %struct.trxd* %114, i32 0, i32 2
  store %struct.trxd* null, %struct.trxd** %115, align 8
  br label %197

116:                                              ; preds = %74
  %117 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %118 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %117, i32 0, i32 3
  %119 = load %struct.trxd*, %struct.trxd** %118, align 8
  %120 = call i8* @vtophys(%struct.trxd* %119)
  %121 = load %struct.trxd*, %struct.trxd** %7, align 8
  %122 = getelementptr inbounds %struct.trxd, %struct.trxd* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %124 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = shl i32 %125, 16
  %127 = load %struct.trxd*, %struct.trxd** %7, align 8
  %128 = getelementptr inbounds %struct.trxd, %struct.trxd* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.trxd*, %struct.trxd** %7, align 8
  %130 = getelementptr inbounds %struct.trxd, %struct.trxd* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  %133 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %134 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %13, align 4
  %138 = load %struct.trxd*, %struct.trxd** %7, align 8
  %139 = call i8* @vtophys(%struct.trxd* %138)
  %140 = load %struct.trxd*, %struct.trxd** %7, align 8
  %141 = getelementptr inbounds %struct.trxd, %struct.trxd* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load %struct.trxd*, %struct.trxd** %7, align 8
  %143 = getelementptr inbounds %struct.trxd, %struct.trxd* %142, i32 0, i32 2
  store %struct.trxd* null, %struct.trxd** %143, align 8
  %144 = load %struct.trxd*, %struct.trxd** %7, align 8
  %145 = call i8* @vtophys(%struct.trxd* %144)
  %146 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %147 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %146, i32 0, i32 2
  %148 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %148, i64 %150
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load %struct.trxd*, %struct.trxd** %153, align 8
  %155 = getelementptr inbounds %struct.trxd, %struct.trxd* %154, i32 0, i32 3
  store i8* %145, i8** %155, align 8
  %156 = load %struct.trxd*, %struct.trxd** %7, align 8
  %157 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %158 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %157, i32 0, i32 2
  %159 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %159, i64 %161
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load %struct.trxd*, %struct.trxd** %164, align 8
  %166 = getelementptr inbounds %struct.trxd, %struct.trxd* %165, i32 0, i32 2
  store %struct.trxd* %156, %struct.trxd** %166, align 8
  %167 = load %struct.trxd*, %struct.trxd** %7, align 8
  %168 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %169 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %168, i32 0, i32 2
  %170 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %170, i64 %172
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store %struct.trxd* %167, %struct.trxd** %175, align 8
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %190, label %178

178:                                              ; preds = %116
  %179 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %180 = load %struct.trxd*, %struct.trxd** %7, align 8
  %181 = getelementptr inbounds %struct.trxd, %struct.trxd* %180, i32 0, i32 1
  store %struct.mbuf* %179, %struct.mbuf** %181, align 8
  %182 = load %struct.trxd*, %struct.trxd** %7, align 8
  %183 = getelementptr inbounds %struct.trxd, %struct.trxd* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, -1073741824
  store i32 %185, i32* %183, align 8
  %186 = load %struct.trxd*, %struct.trxd** %8, align 8
  %187 = getelementptr inbounds %struct.trxd, %struct.trxd* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, -1073741825
  store i32 %189, i32* %187, align 8
  br label %196

190:                                              ; preds = %116
  %191 = load %struct.trxd*, %struct.trxd** %7, align 8
  %192 = getelementptr inbounds %struct.trxd, %struct.trxd* %191, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %192, align 8
  %193 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %194 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %193, i32 0, i32 2
  %195 = load %struct.mbuf*, %struct.mbuf** %194, align 8
  store %struct.mbuf* %195, %struct.mbuf** %6, align 8
  br label %196

196:                                              ; preds = %190, %178
  br label %71

197:                                              ; preds = %105, %71
  %198 = load i32, i32* %12, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %202 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %12, align 4
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %203, i32 %204, i32 %205)
  br label %225

207:                                              ; preds = %197
  %208 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %209 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.schan*, %struct.schan** %9, align 8
  %213 = getelementptr inbounds %struct.schan, %struct.schan* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load i32, i32* %11, align 4
  %217 = shl i32 1, %216
  %218 = xor i32 %217, -1
  %219 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %220 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %219, i32 0, i32 1
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, %218
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %207, %200
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %225, %49, %28
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local %struct.schan* @NG_HOOK_PRIVATE(i32) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local %struct.trxd* @mn_alloc_desc(...) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @mn_free_desc(%struct.trxd*) #1

declare dso_local i8* @vtophys(%struct.trxd*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
