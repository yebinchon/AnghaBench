; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_check_and_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_check_and_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_stripe_softc = type { i64, i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__**, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.g_provider* }
%struct.g_provider = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"stripe/%s\00", align 1
@G_PF_DIRECT_SEND = common dso_local global i32 0, align 4
@G_PF_DIRECT_RECEIVE = common dso_local global i32 0, align 4
@g_stripe_fast = common dso_local global i64 0, align 8
@G_PF_ACCEPT_UNMAPPED = common dso_local global i32 0, align 4
@G_STRIPE_TYPE_AUTOMATIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Cancelling unmapped because of %s.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Device %s activated.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_stripe_softc*)* @g_stripe_check_and_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_stripe_check_and_run(%struct.g_stripe_softc* %0) #0 {
  %2 = alloca %struct.g_stripe_softc*, align 8
  %3 = alloca %struct.g_provider*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.g_stripe_softc* %0, %struct.g_stripe_softc** %2, align 8
  store i64 0, i64* %7, align 8
  %8 = call i32 (...) @g_topology_assert()
  %9 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %10 = call i64 @g_stripe_nvalid(%struct.g_stripe_softc* %9)
  %11 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %12 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %202

16:                                               ; preds = %1
  %17 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %18 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %21 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_5__* @g_new_providerf(i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %25 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %24, i32 0, i32 3
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %25, align 8
  %26 = load i32, i32* @G_PF_DIRECT_SEND, align 4
  %27 = load i32, i32* @G_PF_DIRECT_RECEIVE, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %30 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %29, i32 0, i32 3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %28
  store i32 %34, i32* %32, align 8
  %35 = load i64, i64* @g_stripe_fast, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %16
  %38 = load i32, i32* @G_PF_ACCEPT_UNMAPPED, align 4
  %39 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %40 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %39, i32 0, i32 3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %38
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %37, %16
  %46 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %47 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.g_provider*, %struct.g_provider** %51, align 8
  %53 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %4, align 4
  %55 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %56 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @G_STRIPE_TYPE_AUTOMATIC, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %45
  %61 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %62 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %61, i32 0, i32 4
  %63 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %63, i64 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.g_provider*, %struct.g_provider** %66, align 8
  %68 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %60, %45
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %77 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = srem i32 %75, %78
  %80 = load i32, i32* %4, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %83 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %82, i32 0, i32 4
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %84, i64 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.g_provider*, %struct.g_provider** %87, align 8
  %89 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %7, align 8
  store i64 1, i64* %6, align 8
  br label %91

91:                                               ; preds = %161, %74
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %94 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %92, %95
  br i1 %96, label %97, label %164

97:                                               ; preds = %91
  %98 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %99 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %98, i32 0, i32 4
  %100 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %100, i64 %101
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.g_provider*, %struct.g_provider** %104, align 8
  store %struct.g_provider* %105, %struct.g_provider** %3, align 8
  %106 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %107 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %5, align 4
  %109 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %110 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @G_STRIPE_TYPE_AUTOMATIC, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %97
  %115 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %116 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = sub i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %114, %97
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %125 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = srem i32 %123, %126
  %128 = load i32, i32* %5, align 4
  %129 = sub nsw i32 %128, %127
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %122
  %134 = load i32, i32* %5, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %133, %122
  %136 = load i64, i64* %7, align 8
  %137 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %138 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @lcm(i64 %136, i64 %139)
  store i64 %140, i64* %7, align 8
  %141 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %142 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @G_PF_ACCEPT_UNMAPPED, align 4
  %145 = and i32 %143, %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %135
  %148 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %149 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @G_STRIPE_DEBUG(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @G_PF_ACCEPT_UNMAPPED, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %155 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %154, i32 0, i32 3
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %153
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %147, %135
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %6, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %6, align 8
  br label %91

164:                                              ; preds = %91
  %165 = load i64, i64* %7, align 8
  %166 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %167 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %166, i32 0, i32 3
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  store i64 %165, i64* %169, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %173 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = mul i64 %171, %174
  %176 = trunc i64 %175 to i32
  %177 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %178 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %177, i32 0, i32 3
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  store i32 %176, i32* %180, align 8
  %181 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %182 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %185 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %184, i32 0, i32 3
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 3
  store i32 %183, i32* %187, align 4
  %188 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %189 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %188, i32 0, i32 3
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 5
  store i64 0, i64* %191, align 8
  %192 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %193 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %192, i32 0, i32 3
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = call i32 @g_error_provider(%struct.TYPE_5__* %194, i32 0)
  %196 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %2, align 8
  %197 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %196, i32 0, i32 3
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @G_STRIPE_DEBUG(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %164, %15
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i64 @g_stripe_nvalid(%struct.g_stripe_softc*) #1

declare dso_local %struct.TYPE_5__* @g_new_providerf(i32, i8*, i32) #1

declare dso_local i64 @lcm(i64, i64) #1

declare dso_local i32 @G_STRIPE_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @g_error_provider(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
