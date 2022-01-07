; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_check_overflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_check_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_softc = type { i64, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [63 x i8] c"Journal overflow (id = %u joffset=%jd active=%jd inactive=%jd)\00", align 1
@g_journal_switcher_wokenup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"length=%jd used=%jd active=%jd inactive=%jd joffset=%jd\00", align 1
@g_journal_force_switch = common dso_local global i32 0, align 4
@g_journal_stats_journal_full = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Journal %s %jd%% full, forcing journal switch.\00", align 1
@g_journal_cache_mtx = common dso_local global i32 0, align 4
@g_journal_switcher_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_journal_softc*)* @g_journal_check_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_check_overflow(%struct.g_journal_softc* %0) #0 {
  %2 = alloca %struct.g_journal_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.g_journal_softc* %0, %struct.g_journal_softc** %2, align 8
  %5 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %6 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %10 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %8, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %16 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %19 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %17, %21
  br i1 %22, label %51, label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %25 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %29 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %27, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %23
  %34 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %35 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %38 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %36, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %33
  %43 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %44 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %47 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %45, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %42, %14
  %52 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %53 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %57 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %61 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %66 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @panic(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %59, i32 %64, i32 %69)
  br label %71

71:                                               ; preds = %51, %42, %33, %23
  %72 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %73 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %77 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %75, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %71
  %82 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %83 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %87 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %85, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %3, align 4
  %92 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %93 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %96 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %94, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %4, align 4
  br label %167

101:                                              ; preds = %71
  %102 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %103 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %107 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %105, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %3, align 4
  %112 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %113 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %117 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = sub nsw i64 %115, %119
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %3, align 4
  %125 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %126 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %129 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp sge i64 %127, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %101
  %134 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %135 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %138 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %136, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %4, align 4
  br label %166

143:                                              ; preds = %101
  %144 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %145 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %149 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %147, %151
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %4, align 4
  %154 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %155 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %158 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = sub nsw i64 %156, %160
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %143, %133
  br label %167

167:                                              ; preds = %166, %81
  %168 = load i32, i32* @g_journal_switcher_wokenup, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %214

171:                                              ; preds = %167
  %172 = load i32, i32* %3, align 4
  %173 = icmp sgt i32 %172, 0
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* %3, align 4
  %176 = load i32, i32* %4, align 4
  %177 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %178 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = trunc i64 %180 to i32
  %182 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %183 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %188 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  %193 = call i32 @KASSERT(i32 %174, i8* %192)
  %194 = load i32, i32* %4, align 4
  %195 = mul nsw i32 %194, 100
  %196 = load i32, i32* %3, align 4
  %197 = sdiv i32 %195, %196
  %198 = load i32, i32* @g_journal_force_switch, align 4
  %199 = icmp sgt i32 %197, %198
  br i1 %199, label %200, label %214

200:                                              ; preds = %171
  %201 = load i32, i32* @g_journal_stats_journal_full, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* @g_journal_stats_journal_full, align 4
  %203 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %204 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %4, align 4
  %207 = mul nsw i32 %206, 100
  %208 = load i32, i32* %3, align 4
  %209 = sdiv i32 %207, %208
  %210 = call i32 @GJ_DEBUG(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %205, i32 %209)
  %211 = call i32 @mtx_lock(i32* @g_journal_cache_mtx)
  store i32 1, i32* @g_journal_switcher_wokenup, align 4
  %212 = call i32 @wakeup(i32* @g_journal_switcher_state)
  %213 = call i32 @mtx_unlock(i32* @g_journal_cache_mtx)
  br label %214

214:                                              ; preds = %170, %200, %171
  ret void
}

declare dso_local i32 @panic(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @GJ_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
