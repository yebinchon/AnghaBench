; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_stripe_softc* }
%struct.g_stripe_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"Provider's error should be set (error=%d)(device=%s).\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Request received.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@g_stripe_fast = common dso_local global i64 0, align 8
@MAXPHYS = common dso_local global i32 0, align 4
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@g_stripe_fast_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_stripe_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_stripe_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.g_stripe_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.bio*, %struct.bio** %2, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %17, align 8
  store %struct.g_stripe_softc* %18, %struct.g_stripe_softc** %8, align 8
  %19 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %8, align 8
  %20 = icmp ne %struct.g_stripe_softc* %19, null
  %21 = zext i1 %20 to i32
  %22 = load %struct.bio*, %struct.bio** %2, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 5
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bio*, %struct.bio** %2, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @KASSERT(i32 %21, i8* %33)
  %35 = load %struct.bio*, %struct.bio** %2, align 8
  %36 = call i32 @G_STRIPE_LOGREQ(%struct.bio* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.bio*, %struct.bio** %2, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %46 [
    i32 129, label %40
    i32 128, label %40
    i32 132, label %40
    i32 131, label %41
    i32 130, label %45
  ]

40:                                               ; preds = %1, %1, %1
  br label %50

41:                                               ; preds = %1
  %42 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %8, align 8
  %43 = load %struct.bio*, %struct.bio** %2, align 8
  %44 = call i32 @g_stripe_flush(%struct.g_stripe_softc* %42, %struct.bio* %43)
  br label %166

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %1, %45
  %47 = load %struct.bio*, %struct.bio** %2, align 8
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = call i32 @g_io_deliver(%struct.bio* %47, i32 %48)
  br label %166

50:                                               ; preds = %40
  %51 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %8, align 8
  %52 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  %54 = load %struct.bio*, %struct.bio** %2, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %8, align 8
  %58 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %56, %59
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %8, align 8
  %63 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = srem i32 %61, %64
  store i32 %65, i32* %9, align 4
  %66 = load %struct.bio*, %struct.bio** %2, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, 1
  %71 = and i32 %68, %70
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %8, align 8
  %74 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %72, %75
  %77 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %8, align 8
  %78 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %76, %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %3, align 4
  %83 = load %struct.bio*, %struct.bio** %2, align 8
  %84 = getelementptr inbounds %struct.bio, %struct.bio* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %4, align 4
  %88 = sub nsw i32 %86, %87
  %89 = call i32 @MIN(i32 %85, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i64, i64* @g_stripe_fast, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %121

92:                                               ; preds = %50
  %93 = load %struct.bio*, %struct.bio** %2, align 8
  %94 = getelementptr inbounds %struct.bio, %struct.bio* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MAXPHYS, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %92
  %99 = load %struct.bio*, %struct.bio** %2, align 8
  %100 = getelementptr inbounds %struct.bio, %struct.bio* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %8, align 8
  %104 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = icmp sge i32 %101, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %98
  %109 = load %struct.bio*, %struct.bio** %2, align 8
  %110 = getelementptr inbounds %struct.bio, %struct.bio* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @BIO_UNMAPPED, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load %struct.bio*, %struct.bio** %2, align 8
  %117 = getelementptr inbounds %struct.bio, %struct.bio* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 132
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 1, i32* %11, align 4
  br label %121

121:                                              ; preds = %120, %115, %108, %98, %92, %50
  store i32 0, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %121
  %125 = load %struct.bio*, %struct.bio** %2, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @g_stripe_start_fast(%struct.bio* %125, i32 %126, i32 %127, i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i32, i32* @g_stripe_fast_failed, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* @g_stripe_fast_failed, align 4
  br label %135

135:                                              ; preds = %132, %124
  br label %136

136:                                              ; preds = %135, %121
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139, %136
  %143 = load %struct.bio*, %struct.bio** %2, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @g_stripe_start_economic(%struct.bio* %143, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %142, %139
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %148
  %152 = load %struct.bio*, %struct.bio** %2, align 8
  %153 = getelementptr inbounds %struct.bio, %struct.bio* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.bio*, %struct.bio** %2, align 8
  %159 = getelementptr inbounds %struct.bio, %struct.bio* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %156, %151
  %161 = load %struct.bio*, %struct.bio** %2, align 8
  %162 = load %struct.bio*, %struct.bio** %2, align 8
  %163 = getelementptr inbounds %struct.bio, %struct.bio* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @g_io_deliver(%struct.bio* %161, i32 %164)
  br label %166

166:                                              ; preds = %41, %46, %160, %148
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @G_STRIPE_LOGREQ(%struct.bio*, i8*) #1

declare dso_local i32 @g_stripe_flush(%struct.g_stripe_softc*, %struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @g_stripe_start_fast(%struct.bio*, i32, i32, i32) #1

declare dso_local i32 @g_stripe_start_economic(%struct.bio*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
