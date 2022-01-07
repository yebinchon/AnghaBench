; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_filter_unsetvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_filter_unsetvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { i32 }
%struct.bhnd_nvram_sprom = type { i32 }
%struct.bhnd_nvram_vardefn = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"missing variable definition\00", align 1
@BHND_NVRAM_VF_IGNALL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_data*, i8*)* @bhnd_nvram_sprom_filter_unsetvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_sprom_filter_unsetvar(%struct.bhnd_nvram_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_nvram_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bhnd_nvram_sprom*, align 8
  %7 = alloca %struct.bhnd_nvram_vardefn*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store %struct.bhnd_nvram_data* %0, %struct.bhnd_nvram_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %4, align 8
  %10 = bitcast %struct.bhnd_nvram_data* %9 to %struct.bhnd_nvram_sprom*
  store %struct.bhnd_nvram_sprom* %10, %struct.bhnd_nvram_sprom** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @bhnd_sprom_is_external_immutable(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.bhnd_nvram_sprom*, %struct.bhnd_nvram_sprom** %6, align 8
  %18 = getelementptr inbounds %struct.bhnd_nvram_sprom, %struct.bhnd_nvram_sprom* %17, i32 0, i32 0
  %19 = load i8*, i8** %5, align 8
  %20 = call %struct.TYPE_3__* @bhnd_sprom_opcode_index_find(i32* %18, i8* %19)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %8, align 8
  %21 = icmp eq %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOENT, align 4
  store i32 %23, i32* %3, align 4
  br label %42

24:                                               ; preds = %16
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.bhnd_nvram_vardefn* @bhnd_nvram_get_vardefn(i32 %27)
  store %struct.bhnd_nvram_vardefn* %28, %struct.bhnd_nvram_vardefn** %7, align 8
  %29 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %7, align 8
  %30 = icmp ne %struct.bhnd_nvram_vardefn* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @BHND_NV_ASSERT(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %7, align 8
  %34 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BHND_NVRAM_VF_IGNALL1, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %24
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %22, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @bhnd_sprom_is_external_immutable(i8*) #1

declare dso_local %struct.TYPE_3__* @bhnd_sprom_opcode_index_find(i32*, i8*) #1

declare dso_local %struct.bhnd_nvram_vardefn* @bhnd_nvram_get_vardefn(i32) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
