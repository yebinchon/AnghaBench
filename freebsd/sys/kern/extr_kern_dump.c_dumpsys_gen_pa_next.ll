; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_dump.c_dumpsys_gen_pa_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_dump.c_dumpsys_gen_pa_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_pa = type { i64 }

@dump_map = common dso_local global %struct.dump_pa* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dump_pa* @dumpsys_gen_pa_next(%struct.dump_pa* %0) #0 {
  %2 = alloca %struct.dump_pa*, align 8
  %3 = alloca %struct.dump_pa*, align 8
  store %struct.dump_pa* %0, %struct.dump_pa** %3, align 8
  %4 = load %struct.dump_pa*, %struct.dump_pa** %3, align 8
  %5 = icmp eq %struct.dump_pa* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.dump_pa*, %struct.dump_pa** @dump_map, align 8
  %8 = getelementptr inbounds %struct.dump_pa, %struct.dump_pa* %7, i64 0
  store %struct.dump_pa* %8, %struct.dump_pa** %2, align 8
  br label %19

9:                                                ; preds = %1
  %10 = load %struct.dump_pa*, %struct.dump_pa** %3, align 8
  %11 = getelementptr inbounds %struct.dump_pa, %struct.dump_pa* %10, i32 1
  store %struct.dump_pa* %11, %struct.dump_pa** %3, align 8
  %12 = load %struct.dump_pa*, %struct.dump_pa** %3, align 8
  %13 = getelementptr inbounds %struct.dump_pa, %struct.dump_pa* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store %struct.dump_pa* null, %struct.dump_pa** %3, align 8
  br label %17

17:                                               ; preds = %16, %9
  %18 = load %struct.dump_pa*, %struct.dump_pa** %3, align 8
  store %struct.dump_pa* %18, %struct.dump_pa** %2, align 8
  br label %19

19:                                               ; preds = %17, %6
  %20 = load %struct.dump_pa*, %struct.dump_pa** %2, align 8
  ret %struct.dump_pa* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
