; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_vap_decrement_counters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_vap_decrement_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i64, i64, i64, i64, i64, i64, i32** }

@RTWN_VAP_ID_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wrong vap id %d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"vap pointer is NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"wrong opmode %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"number of running vaps is negative (vaps %d, monvaps %d)\0A\00", align 1
@RTWN_PORT_COUNT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [57 x i8] c"number of running vaps is too big (vaps %d, monvaps %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"wrong value %d for nvaps\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"mon_vaps is negative (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"bcn_vaps value %d is wrong\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"ap_vaps value %d is wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, i32, i32)* @rtwn_vap_decrement_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_vap_decrement_counters(%struct.rtwn_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %8 = call i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc* %7)
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @RTWN_VAP_ID_INVALID, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 1
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ true, %12 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %20, i8* %23)
  %25 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %26 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %25, i32 0, i32 6
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %36 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %35, i32 0, i32 6
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %18, %3
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %63 [
    i32 131, label %43
    i32 130, label %48
    i32 128, label %53
    i32 129, label %58
  ]

43:                                               ; preds = %41
  %44 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %45 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %41, %43
  %49 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %50 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %41, %48
  %54 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %55 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %55, align 8
  br label %68

58:                                               ; preds = %41
  %59 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %60 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %60, align 8
  br label %68

63:                                               ; preds = %41
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @KASSERT(i32 0, i8* %66)
  br label %68

68:                                               ; preds = %63, %58, %53
  %69 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %70 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %75 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %76, 0
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i1 [ false, %68 ], [ %77, %73 ]
  %80 = zext i1 %79 to i32
  %81 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %82 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %85 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @KASSERT(i32 %80, i8* %87)
  %89 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %90 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %93 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = load i64, i64* @RTWN_PORT_COUNT, align 8
  %97 = icmp sle i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %100 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %103 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @KASSERT(i32 %98, i8* %105)
  %107 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %108 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %78
  %112 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %113 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @RTWN_PORT_COUNT, align 8
  %116 = icmp sle i64 %114, %115
  br label %117

117:                                              ; preds = %111, %78
  %118 = phi i1 [ false, %78 ], [ %116, %111 ]
  %119 = zext i1 %118 to i32
  %120 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %121 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 @KASSERT(i32 %119, i8* %123)
  %125 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %126 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp sge i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %131 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 @KASSERT(i32 %129, i8* %133)
  %135 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %136 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp sge i64 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %117
  %140 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %141 = call i64 @RTWN_CHIP_HAS_BCNQ1(%struct.rtwn_softc* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %145 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @RTWN_PORT_COUNT, align 8
  %148 = icmp sle i64 %146, %147
  br i1 %148, label %154, label %149

149:                                              ; preds = %143, %139
  %150 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %151 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp sle i64 %152, 1
  br label %154

154:                                              ; preds = %149, %143
  %155 = phi i1 [ true, %143 ], [ %153, %149 ]
  br label %156

156:                                              ; preds = %154, %117
  %157 = phi i1 [ false, %117 ], [ %155, %154 ]
  %158 = zext i1 %157 to i32
  %159 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %160 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to i8*
  %163 = call i32 @KASSERT(i32 %158, i8* %162)
  %164 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %165 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp sge i64 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %156
  %169 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %170 = call i64 @RTWN_CHIP_HAS_BCNQ1(%struct.rtwn_softc* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %174 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @RTWN_PORT_COUNT, align 8
  %177 = icmp sle i64 %175, %176
  br i1 %177, label %183, label %178

178:                                              ; preds = %172, %168
  %179 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %180 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp sle i64 %181, 1
  br label %183

183:                                              ; preds = %178, %172
  %184 = phi i1 [ true, %172 ], [ %182, %178 ]
  br label %185

185:                                              ; preds = %183, %156
  %186 = phi i1 [ false, %156 ], [ %184, %183 ]
  %187 = zext i1 %186 to i32
  %188 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %189 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = inttoptr i64 %190 to i8*
  %192 = call i32 @KASSERT(i32 %187, i8* %191)
  ret void
}

declare dso_local i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @RTWN_CHIP_HAS_BCNQ1(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
