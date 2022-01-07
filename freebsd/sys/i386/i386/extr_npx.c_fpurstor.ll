; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_fpurstor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_fpurstor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.savefpu = type { i32 }

@use_xsave = common dso_local global i64 0, align 8
@xsave_mask = common dso_local global i32 0, align 4
@cpu_fxsr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.savefpu*)* @fpurstor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpurstor(%union.savefpu* %0) #0 {
  %2 = alloca %union.savefpu*, align 8
  store %union.savefpu* %0, %union.savefpu** %2, align 8
  %3 = load i64, i64* @use_xsave, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %union.savefpu*, %union.savefpu** %2, align 8
  %7 = bitcast %union.savefpu* %6 to i8*
  %8 = load i32, i32* @xsave_mask, align 4
  %9 = call i32 @xrstor(i8* %7, i32 %8)
  br label %20

10:                                               ; preds = %1
  %11 = load i64, i64* @cpu_fxsr, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %union.savefpu*, %union.savefpu** %2, align 8
  %15 = call i32 @fxrstor(%union.savefpu* %14)
  br label %19

16:                                               ; preds = %10
  %17 = load %union.savefpu*, %union.savefpu** %2, align 8
  %18 = call i32 @frstor(%union.savefpu* %17)
  br label %19

19:                                               ; preds = %16, %13
  br label %20

20:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @xrstor(i8*, i32) #1

declare dso_local i32 @fxrstor(%union.savefpu*) #1

declare dso_local i32 @frstor(%union.savefpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
