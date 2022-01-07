; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_minidump_machdep.c_minidumpsys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_minidump_machdep.c_minidumpsys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i32 }

@pae_mode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minidumpsys(%struct.dumperinfo* %0) #0 {
  %2 = alloca %struct.dumperinfo*, align 8
  store %struct.dumperinfo* %0, %struct.dumperinfo** %2, align 8
  %3 = load i64, i64* @pae_mode, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.dumperinfo*, %struct.dumperinfo** %2, align 8
  %7 = call i32 @minidumpsys_pae(%struct.dumperinfo* %6)
  br label %11

8:                                                ; preds = %1
  %9 = load %struct.dumperinfo*, %struct.dumperinfo** %2, align 8
  %10 = call i32 @minidumpsys_nopae(%struct.dumperinfo* %9)
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i32 [ %7, %5 ], [ %10, %8 ]
  ret i32 %12
}

declare dso_local i32 @minidumpsys_pae(%struct.dumperinfo*) #1

declare dso_local i32 @minidumpsys_nopae(%struct.dumperinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
