; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_subr.c_bhnd_nvram_get_vardefn_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_subr.c_bhnd_nvram_get_vardefn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_vardefn = type { i32 }

@bhnd_nvram_vardefns = common dso_local global %struct.bhnd_nvram_vardefn* null, align 8
@bhnd_nvram_num_vardefns = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid variable definition pointer %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bhnd_nvram_get_vardefn_id(%struct.bhnd_nvram_vardefn* %0) #0 {
  %2 = alloca %struct.bhnd_nvram_vardefn*, align 8
  store %struct.bhnd_nvram_vardefn* %0, %struct.bhnd_nvram_vardefn** %2, align 8
  %3 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %2, align 8
  %4 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** @bhnd_nvram_vardefns, align 8
  %5 = icmp uge %struct.bhnd_nvram_vardefn* %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %2, align 8
  %8 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** @bhnd_nvram_vardefns, align 8
  %9 = load i32, i32* @bhnd_nvram_num_vardefns, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %8, i64 %11
  %13 = icmp ule %struct.bhnd_nvram_vardefn* %7, %12
  br label %14

14:                                               ; preds = %6, %1
  %15 = phi i1 [ false, %1 ], [ %13, %6 ]
  %16 = zext i1 %15 to i32
  %17 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %2, align 8
  %18 = bitcast %struct.bhnd_nvram_vardefn* %17 to i8*
  %19 = call i32 @BHND_NV_ASSERT(i32 %16, i8* %18)
  %20 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %2, align 8
  %21 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** @bhnd_nvram_vardefns, align 8
  %22 = ptrtoint %struct.bhnd_nvram_vardefn* %20 to i64
  %23 = ptrtoint %struct.bhnd_nvram_vardefn* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  ret i64 %25
}

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
