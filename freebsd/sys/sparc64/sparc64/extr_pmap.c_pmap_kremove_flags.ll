; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_kremove_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_kremove_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tte = type { i32 }

@KTR_PMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"pmap_kremove_flags: va=%#lx tp=%p data=%#lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_kremove_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tte*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.tte* @tsb_kvtotte(i32 %4)
  store %struct.tte* %5, %struct.tte** %3, align 8
  %6 = load i32, i32* @KTR_PMAP, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.tte*, %struct.tte** %3, align 8
  %9 = load %struct.tte*, %struct.tte** %3, align 8
  %10 = getelementptr inbounds %struct.tte, %struct.tte* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @CTR3(i32 %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %7, %struct.tte* %8, i32 %11)
  %13 = load %struct.tte*, %struct.tte** %3, align 8
  %14 = call i32 @TTE_ZERO(%struct.tte* %13)
  ret void
}

declare dso_local %struct.tte* @tsb_kvtotte(i32) #1

declare dso_local i32 @CTR3(i32, i8*, i32, %struct.tte*, i32) #1

declare dso_local i32 @TTE_ZERO(%struct.tte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
