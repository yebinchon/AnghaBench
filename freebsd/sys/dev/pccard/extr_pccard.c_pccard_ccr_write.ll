; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_ccr_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_ccr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_function = type { i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pccard_function*, i32, i32)* @pccard_ccr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pccard_ccr_write(%struct.pccard_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pccard_function*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pccard_function* %0, %struct.pccard_function** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pccard_function*, %struct.pccard_function** %4, align 8
  %8 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sdiv i32 %10, 2
  %12 = shl i32 1, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load %struct.pccard_function*, %struct.pccard_function** %4, align 8
  %17 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pccard_function*, %struct.pccard_function** %4, align 8
  %20 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.pccard_function*, %struct.pccard_function** %4, align 8
  %23 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @bus_space_write_1(i32 %18, i32 %21, i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @bus_space_write_1(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
