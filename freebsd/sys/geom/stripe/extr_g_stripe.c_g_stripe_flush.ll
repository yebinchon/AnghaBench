; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_stripe_softc = type { i64, %struct.g_consumer** }
%struct.g_consumer = type { i32 }
%struct.bio = type { i64, %struct.g_consumer*, i32, i32 }
%struct.bio_queue_head = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@g_stripe_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Sending request.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_stripe_softc*, %struct.bio*)* @g_stripe_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_stripe_flush(%struct.g_stripe_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_stripe_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio_queue_head, align 4
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i64, align 8
  store %struct.g_stripe_softc* %0, %struct.g_stripe_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %9 = call i32 @bioq_init(%struct.bio_queue_head* %5)
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %72, %2
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %3, align 8
  %13 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %75

16:                                               ; preds = %10
  %17 = load %struct.bio*, %struct.bio** %4, align 8
  %18 = call %struct.bio* @g_clone_bio(%struct.bio* %17)
  store %struct.bio* %18, %struct.bio** %7, align 8
  %19 = load %struct.bio*, %struct.bio** %7, align 8
  %20 = icmp eq %struct.bio* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %16
  %22 = call %struct.bio* @bioq_first(%struct.bio_queue_head* %5)
  store %struct.bio* %22, %struct.bio** %7, align 8
  br label %23

23:                                               ; preds = %31, %21
  %24 = load %struct.bio*, %struct.bio** %7, align 8
  %25 = icmp ne %struct.bio* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.bio*, %struct.bio** %7, align 8
  %28 = call i32 @bioq_remove(%struct.bio_queue_head* %5, %struct.bio* %27)
  %29 = load %struct.bio*, %struct.bio** %7, align 8
  %30 = call i32 @g_destroy_bio(%struct.bio* %29)
  br label %31

31:                                               ; preds = %26
  %32 = call %struct.bio* @bioq_first(%struct.bio_queue_head* %5)
  store %struct.bio* %32, %struct.bio** %7, align 8
  br label %23

33:                                               ; preds = %23
  %34 = load %struct.bio*, %struct.bio** %4, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i64, i64* @ENOMEM, align 8
  %40 = load %struct.bio*, %struct.bio** %4, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = load %struct.bio*, %struct.bio** %4, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @g_io_deliver(%struct.bio* %43, i64 %46)
  br label %95

48:                                               ; preds = %16
  %49 = load %struct.bio*, %struct.bio** %7, align 8
  %50 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %5, %struct.bio* %49)
  %51 = load i32, i32* @g_stripe_done, align 4
  %52 = load %struct.bio*, %struct.bio** %7, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %3, align 8
  %55 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %54, i32 0, i32 1
  %56 = load %struct.g_consumer**, %struct.g_consumer*** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.g_consumer*, %struct.g_consumer** %56, i64 %57
  %59 = load %struct.g_consumer*, %struct.g_consumer** %58, align 8
  %60 = load %struct.bio*, %struct.bio** %7, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 1
  store %struct.g_consumer* %59, %struct.g_consumer** %61, align 8
  %62 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %3, align 8
  %63 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %62, i32 0, i32 1
  %64 = load %struct.g_consumer**, %struct.g_consumer*** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.g_consumer*, %struct.g_consumer** %64, i64 %65
  %67 = load %struct.g_consumer*, %struct.g_consumer** %66, align 8
  %68 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bio*, %struct.bio** %7, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %48
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %10

75:                                               ; preds = %10
  %76 = call %struct.bio* @bioq_first(%struct.bio_queue_head* %5)
  store %struct.bio* %76, %struct.bio** %7, align 8
  br label %77

77:                                               ; preds = %93, %75
  %78 = load %struct.bio*, %struct.bio** %7, align 8
  %79 = icmp ne %struct.bio* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = load %struct.bio*, %struct.bio** %7, align 8
  %82 = call i32 @bioq_remove(%struct.bio_queue_head* %5, %struct.bio* %81)
  %83 = load %struct.bio*, %struct.bio** %7, align 8
  %84 = call i32 @G_STRIPE_LOGREQ(%struct.bio* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.bio*, %struct.bio** %7, align 8
  %86 = getelementptr inbounds %struct.bio, %struct.bio* %85, i32 0, i32 1
  %87 = load %struct.g_consumer*, %struct.g_consumer** %86, align 8
  store %struct.g_consumer* %87, %struct.g_consumer** %6, align 8
  %88 = load %struct.bio*, %struct.bio** %7, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 1
  store %struct.g_consumer* null, %struct.g_consumer** %89, align 8
  %90 = load %struct.bio*, %struct.bio** %7, align 8
  %91 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %92 = call i32 @g_io_request(%struct.bio* %90, %struct.g_consumer* %91)
  br label %93

93:                                               ; preds = %80
  %94 = call %struct.bio* @bioq_first(%struct.bio_queue_head* %5)
  store %struct.bio* %94, %struct.bio** %7, align 8
  br label %77

95:                                               ; preds = %42, %77
  ret void
}

declare dso_local i32 @bioq_init(%struct.bio_queue_head*) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local %struct.bio* @bioq_first(%struct.bio_queue_head*) #1

declare dso_local i32 @bioq_remove(%struct.bio_queue_head*, %struct.bio*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i64) #1

declare dso_local i32 @bioq_insert_tail(%struct.bio_queue_head*, %struct.bio*) #1

declare dso_local i32 @G_STRIPE_LOGREQ(%struct.bio*, i8*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
