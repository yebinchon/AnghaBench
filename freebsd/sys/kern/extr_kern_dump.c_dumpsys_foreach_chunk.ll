; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_dump.c_dumpsys_foreach_chunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_dump.c_dumpsys_foreach_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_pa = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dumpsys_foreach_chunk(i32 (%struct.dump_pa*, i32, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32 (%struct.dump_pa*, i32, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dump_pa*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 (%struct.dump_pa*, i32, i8*)* %0, i32 (%struct.dump_pa*, i32, i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = call %struct.dump_pa* @dumpsys_pa_next(%struct.dump_pa* null)
  store %struct.dump_pa* %9, %struct.dump_pa** %6, align 8
  br label %10

10:                                               ; preds = %25, %2
  %11 = load %struct.dump_pa*, %struct.dump_pa** %6, align 8
  %12 = icmp ne %struct.dump_pa* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load i32 (%struct.dump_pa*, i32, i8*)*, i32 (%struct.dump_pa*, i32, i8*)** %4, align 8
  %15 = load %struct.dump_pa*, %struct.dump_pa** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 %14(%struct.dump_pa* %15, i32 %16, i8* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %30

25:                                               ; preds = %13
  %26 = load %struct.dump_pa*, %struct.dump_pa** %6, align 8
  %27 = call %struct.dump_pa* @dumpsys_pa_next(%struct.dump_pa* %26)
  store %struct.dump_pa* %27, %struct.dump_pa** %6, align 8
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %22
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.dump_pa* @dumpsys_pa_next(%struct.dump_pa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
