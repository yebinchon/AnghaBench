; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_cmd.c_mps_get_iocfacts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_cmd.c_mps_get_iocfacts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MPI2_FUNCTION_IOC_FACTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @mps_get_iocfacts(i32 %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call %struct.TYPE_12__* @malloc(i32 4)
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = icmp eq %struct.TYPE_12__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  store i32 %11, i32* @errno, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %36

12:                                               ; preds = %1
  %13 = call i32 @bzero(%struct.TYPE_11__* %5, i32 4)
  %14 = load i32, i32* @MPI2_FUNCTION_IOC_FACTS, align 4
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = call i32 @mps_pass_command(i32 %16, %struct.TYPE_11__* %5, i32 4, %struct.TYPE_12__* %17, i32 4, i32* null, i32 0, i32* null, i32 0, i32 10)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = call i32 @free(%struct.TYPE_12__* %22)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %36

24:                                               ; preds = %12
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IOC_STATUS_SUCCESS(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = call i32 @free(%struct.TYPE_12__* %31)
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* @errno, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %36

34:                                               ; preds = %24
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %2, align 8
  br label %36

36:                                               ; preds = %34, %30, %21, %10
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %37
}

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mps_pass_command(i32, %struct.TYPE_11__*, i32, %struct.TYPE_12__*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @IOC_STATUS_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
