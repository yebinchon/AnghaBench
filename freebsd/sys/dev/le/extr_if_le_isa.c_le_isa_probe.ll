; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_isa.c_le_isa_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_isa.c_le_isa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@le_isa_ids = common dso_local global i32 0, align 4
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@le_isa_params = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @le_isa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_isa_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @device_get_parent(i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @le_isa_ids, align 4
  %9 = call i32 @ISA_PNP_PROBE(i32 %6, i32 %7, i32 %8)
  switch i32 %9, label %42 [
    i32 0, label %10
    i32 129, label %12
    i32 128, label %41
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %11, i32* %2, align 4
  br label %43

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @le_isa_params, align 8
  %16 = call i32 @nitems(%struct.TYPE_4__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @le_isa_params, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = call i32 @le_isa_probe_legacy(i32 %19, %struct.TYPE_4__* %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @le_isa_params, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_set_desc(i32 %27, i32 %33)
  %35 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %35, i32* %2, align 4
  br label %43

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %13

40:                                               ; preds = %13
  br label %41

41:                                               ; preds = %1, %40
  br label %42

42:                                               ; preds = %1, %41
  store i32 128, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %26, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @ISA_PNP_PROBE(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @nitems(%struct.TYPE_4__*) #1

declare dso_local i32 @le_isa_probe_legacy(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
