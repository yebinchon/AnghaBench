; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_bioq_first.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_bioq_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.g_bioq = type { i32, i32 }

@BIO_ONQUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Bio not on queue bp=%p target %p\00", align 1
@bio_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.g_bioq*)* @g_bioq_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @g_bioq_first(%struct.g_bioq* %0) #0 {
  %2 = alloca %struct.g_bioq*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.g_bioq* %0, %struct.g_bioq** %2, align 8
  %4 = load %struct.g_bioq*, %struct.g_bioq** %2, align 8
  %5 = getelementptr inbounds %struct.g_bioq, %struct.g_bioq* %4, i32 0, i32 1
  %6 = call %struct.bio* @TAILQ_FIRST(i32* %5)
  store %struct.bio* %6, %struct.bio** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = icmp ne %struct.bio* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load %struct.bio*, %struct.bio** %3, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BIO_ONQUEUE, align 4
  %14 = and i32 %12, %13
  %15 = load %struct.bio*, %struct.bio** %3, align 8
  %16 = load %struct.g_bioq*, %struct.g_bioq** %2, align 8
  %17 = bitcast %struct.g_bioq* %16 to i8*
  %18 = call i32 @KASSERT(i32 %14, i8* %17)
  %19 = load i32, i32* @BIO_ONQUEUE, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.bio*, %struct.bio** %3, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.g_bioq*, %struct.g_bioq** %2, align 8
  %26 = getelementptr inbounds %struct.g_bioq, %struct.g_bioq* %25, i32 0, i32 1
  %27 = load %struct.bio*, %struct.bio** %3, align 8
  %28 = load i32, i32* @bio_queue, align 4
  %29 = call i32 @TAILQ_REMOVE(i32* %26, %struct.bio* %27, i32 %28)
  %30 = load %struct.g_bioq*, %struct.g_bioq** %2, align 8
  %31 = getelementptr inbounds %struct.g_bioq, %struct.g_bioq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %9, %1
  %35 = load %struct.bio*, %struct.bio** %3, align 8
  ret %struct.bio* %35
}

declare dso_local %struct.bio* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
