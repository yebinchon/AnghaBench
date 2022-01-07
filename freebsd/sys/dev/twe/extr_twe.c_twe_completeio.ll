; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_completeio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_completeio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_request = type { i64, %struct.bio*, %struct.twe_softc* }
%struct.bio = type { i32, i32 }
%struct.twe_softc = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@TWE_CMD_COMPLETE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"twe_completeio on incomplete command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twe_request*)* @twe_completeio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twe_completeio(%struct.twe_request* %0) #0 {
  %2 = alloca %struct.twe_request*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.twe_softc*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.twe_request* %0, %struct.twe_request** %2, align 8
  %6 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %7 = call %struct.TYPE_5__* @TWE_FIND_COMMAND(%struct.twe_request* %6)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %9 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %8, i32 0, i32 2
  %10 = load %struct.twe_softc*, %struct.twe_softc** %9, align 8
  store %struct.twe_softc* %10, %struct.twe_softc** %4, align 8
  %11 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %12 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %11, i32 0, i32 1
  %13 = load %struct.bio*, %struct.bio** %12, align 8
  store %struct.bio* %13, %struct.bio** %5, align 8
  %14 = call i32 @debug_called(i32 4)
  %15 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %16 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TWE_CMD_COMPLETE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %28 = call i64 @twe_report_request(%struct.twe_request* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* @EIO, align 4
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @BIO_ERROR, align 4
  %35 = load %struct.bio*, %struct.bio** %5, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %30, %26
  br label %40

40:                                               ; preds = %39, %20
  br label %44

41:                                               ; preds = %1
  %42 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %43 = call i32 @twe_panic(%struct.twe_softc* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %40
  %45 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %46 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %45, i32 0, i32 1
  store %struct.bio* null, %struct.bio** %46, align 8
  %47 = load %struct.bio*, %struct.bio** %5, align 8
  %48 = call i32 @twed_intr(%struct.bio* %47)
  %49 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %50 = call i32 @twe_release_request(%struct.twe_request* %49)
  ret void
}

declare dso_local %struct.TYPE_5__* @TWE_FIND_COMMAND(%struct.twe_request*) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i64 @twe_report_request(%struct.twe_request*) #1

declare dso_local i32 @twe_panic(%struct.twe_softc*, i8*) #1

declare dso_local i32 @twed_intr(%struct.bio*) #1

declare dso_local i32 @twe_release_request(%struct.twe_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
