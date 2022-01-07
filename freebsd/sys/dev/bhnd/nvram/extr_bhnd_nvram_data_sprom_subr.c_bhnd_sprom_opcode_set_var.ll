; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_set_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_set_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.bhnd_nvram_vardefn = type { i32, i32 }

@SPROM_OPCODE_VAR_STATE_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"overwrite of open variable definition\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown variable ID: %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SPROM_OPCODE_VAR_STATE_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64)* @bhnd_sprom_opcode_set_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_sprom_opcode_set_var(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bhnd_nvram_vardefn*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SPROM_OPCODE_VAR_STATE_NONE, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BHND_NV_ASSERT(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %5, align 8
  %16 = call %struct.bhnd_nvram_vardefn* @bhnd_nvram_get_vardefn(i64 %15)
  store %struct.bhnd_nvram_vardefn* %16, %struct.bhnd_nvram_vardefn** %6, align 8
  %17 = icmp eq %struct.bhnd_nvram_vardefn* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @SPROM_OP_BAD(%struct.TYPE_6__* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %51

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* @SPROM_OPCODE_VAR_STATE_OPEN, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = call i32 @memset(i32* %31, i32 0, i32 4)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %6, align 8
  %35 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bhnd_sprom_opcode_set_type(%struct.TYPE_6__* %33, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %51

41:                                               ; preds = %23
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %6, align 8
  %44 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bhnd_sprom_opcode_set_nelem(%struct.TYPE_6__* %42, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %48, %39, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local %struct.bhnd_nvram_vardefn* @bhnd_nvram_get_vardefn(i64) #1

declare dso_local i32 @SPROM_OP_BAD(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bhnd_sprom_opcode_set_type(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bhnd_sprom_opcode_set_nelem(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
