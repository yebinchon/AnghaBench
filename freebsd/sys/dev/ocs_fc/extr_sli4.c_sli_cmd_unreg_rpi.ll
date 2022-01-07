; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_unreg_rpi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_unreg_rpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SLI4_MBOX_COMMAND_UNREG_RPI = common dso_local global i32 0, align 4
@SLI4_UNREG_RPI_II_RPI = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SLI4_UNREG_RPI_II_VPI = common dso_local global i32 0, align 4
@SLI4_UNREG_RPI_II_VFI = common dso_local global i32 0, align 4
@SLI4_UNREG_RPI_II_FCFI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unknown type %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_unreg_rpi(%struct.TYPE_6__* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %6
  store i32 0, i32* %7, align 4
  br label %66

24:                                               ; preds = %20
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @ocs_memset(i8* %25, i32 0, i64 %26)
  %28 = load i32, i32* @SLI4_MBOX_COMMAND_UNREG_RPI, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %12, align 4
  switch i32 %32, label %53 [
    i32 130, label %33
    i32 128, label %47
    i32 129, label %49
    i32 131, label %51
  ]

33:                                               ; preds = %24
  %34 = load i32, i32* @SLI4_UNREG_RPI_II_RPI, align 4
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @UINT32_MAX, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* @TRUE, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %13, align 4
  %43 = and i32 %42, 16777215
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %38, %33
  br label %59

47:                                               ; preds = %24
  %48 = load i32, i32* @SLI4_UNREG_RPI_II_VPI, align 4
  store i32 %48, i32* %15, align 4
  br label %59

49:                                               ; preds = %24
  %50 = load i32, i32* @SLI4_UNREG_RPI_II_VFI, align 4
  store i32 %50, i32* %15, align 4
  br label %59

51:                                               ; preds = %24
  %52 = load i32, i32* @SLI4_UNREG_RPI_II_FCFI, align 4
  store i32 %52, i32* %15, align 4
  br label %59

53:                                               ; preds = %24
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @ocs_log_test(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 0, i32* %7, align 4
  br label %66

59:                                               ; preds = %51, %49, %47, %46
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  store i32 20, i32* %7, align 4
  br label %66

66:                                               ; preds = %59, %53, %23
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
