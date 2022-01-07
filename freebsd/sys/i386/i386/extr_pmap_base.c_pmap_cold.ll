; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap_base.c_pmap_cold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap_base.c_pmap_cold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@bootinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@cpu_feature = common dso_local global i32 0, align 4
@CPUID_PAE = common dso_local global i32 0, align 4
@pae_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"vm.pmap.pae_mode\00", align 1
@pmap_pae_methods = common dso_local global i32 0, align 4
@pmap_methods_ptr = common dso_local global i32* null, align 8
@pmap_nopae_methods = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_cold() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bootinfo, i32 0, i32 0), align 8
  %2 = inttoptr i64 %1 to i8*
  %3 = call i32 @init_static_kenv(i8* %2, i32 0)
  %4 = load i32, i32* @cpu_feature, align 4
  %5 = load i32, i32* @CPUID_PAE, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  store i32 %8, i32* @pae_mode, align 4
  %9 = load i32, i32* @pae_mode, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* @pae_mode)
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i32, i32* @pae_mode, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  store i32* @pmap_pae_methods, i32** @pmap_methods_ptr, align 8
  %17 = call i32 (...) @pmap_pae_cold()
  br label %20

18:                                               ; preds = %13
  store i32* @pmap_nopae_methods, i32** @pmap_methods_ptr, align 8
  %19 = call i32 (...) @pmap_nopae_cold()
  br label %20

20:                                               ; preds = %18, %16
  ret void
}

declare dso_local i32 @init_static_kenv(i8*, i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @pmap_pae_cold(...) #1

declare dso_local i32 @pmap_nopae_cold(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
