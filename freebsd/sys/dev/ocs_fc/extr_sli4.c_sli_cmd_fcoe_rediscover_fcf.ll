; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_rediscover_fcf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_rediscover_fcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SLI4_OPC_FCOE_REDISCOVER_FCF = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_FCFCOE = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_fcoe_rediscover_fcf(i32* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @sli_cmd_sli_config(i32* %11, i8* %12, i64 %13, i32 32, i32* null)
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = bitcast i32* %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %9, align 8
  %21 = load i32, i32* @SLI4_OPC_FCOE_REDISCOVER_FCF, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @SLI4_SUBSYSTEM_FCFCOE, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 28, i32* %31, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @UINT16_MAX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %46

38:                                               ; preds = %4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  store i64 %41, i64* %45, align 8
  br label %46

46:                                               ; preds = %38, %35
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 32
  %50 = trunc i64 %49 to i32
  ret i32 %50
}

declare dso_local i32 @sli_cmd_sli_config(i32*, i8*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
