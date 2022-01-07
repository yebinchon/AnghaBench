; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_biodone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_biodone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { i32, %struct.fd_data*, %struct.bio* }
%struct.fd_data = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bio = type { i32, i32, i32* }

@hz = common dso_local global i32 0, align 4
@fd_turnoff = common dso_local global i32 0, align 4
@debugflags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"retries: %d\0A\00", align 1
@BIO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdc_data*, i32)* @fdc_biodone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdc_biodone(%struct.fdc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fdc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd_data*, align 8
  %7 = alloca %struct.bio*, align 8
  store %struct.fdc_data* %0, %struct.fdc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %9 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %8, i32 0, i32 1
  %10 = load %struct.fd_data*, %struct.fd_data** %9, align 8
  store %struct.fd_data* %10, %struct.fd_data** %6, align 8
  %11 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %12 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %11, i32 0, i32 2
  %13 = load %struct.bio*, %struct.bio** %12, align 8
  store %struct.bio* %13, %struct.bio** %7, align 8
  %14 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %15 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %14, i32 0, i32 0
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.fd_data*, %struct.fd_data** %6, align 8
  %18 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.fd_data*, %struct.fd_data** %6, align 8
  %24 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %23, i32 0, i32 2
  %25 = load i32, i32* @hz, align 4
  %26 = mul nsw i32 4, %25
  %27 = load i32, i32* @fd_turnoff, align 4
  %28 = load %struct.fd_data*, %struct.fd_data** %6, align 8
  %29 = call i32 @callout_reset(i32* %24, i32 %26, i32 %27, %struct.fd_data* %28)
  br label %30

30:                                               ; preds = %22, %2
  %31 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %32 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %31, i32 0, i32 2
  store %struct.bio* null, %struct.bio** %32, align 8
  %33 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %34 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %33, i32 0, i32 1
  store %struct.fd_data* null, %struct.fd_data** %34, align 8
  %35 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %36 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %35, i32 0, i32 0
  %37 = call i32 @mtx_unlock(i32* %36)
  %38 = load %struct.bio*, %struct.bio** %7, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %30
  %43 = load i32, i32* @debugflags, align 4
  %44 = and i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load %struct.fd_data*, %struct.fd_data** %6, align 8
  %48 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.fd_data*, %struct.fd_data** %6, align 8
  %55 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %58)
  br label %60

60:                                               ; preds = %53, %46, %42
  %61 = load %struct.bio*, %struct.bio** %7, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @g_io_deliver(%struct.bio* %61, i32 %62)
  store i32 0, i32* %3, align 4
  br label %75

64:                                               ; preds = %30
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.bio*, %struct.bio** %7, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @BIO_DONE, align 4
  %69 = load %struct.bio*, %struct.bio** %7, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.bio*, %struct.bio** %7, align 8
  %74 = call i32 @wakeup(%struct.bio* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %64, %60
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.fd_data*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @wakeup(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
