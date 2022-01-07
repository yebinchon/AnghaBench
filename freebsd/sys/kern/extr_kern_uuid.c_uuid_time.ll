; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_uuid_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_uuid_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bintime = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @uuid_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uuid_time() #0 {
  %1 = alloca %struct.bintime, align 8
  %2 = alloca i64, align 8
  store i64 122192928000000000, i64* %2, align 8
  %3 = call i32 @bintime(%struct.bintime* %1)
  %4 = getelementptr inbounds %struct.bintime, %struct.bintime* %1, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = mul nsw i64 %5, 10000000
  %7 = load i64, i64* %2, align 8
  %8 = add nsw i64 %7, %6
  store i64 %8, i64* %2, align 8
  %9 = getelementptr inbounds %struct.bintime, %struct.bintime* %1, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = ashr i32 %10, 32
  %12 = sext i32 %11 to i64
  %13 = mul nsw i64 10000000, %12
  %14 = ashr i64 %13, 32
  %15 = load i64, i64* %2, align 8
  %16 = add nsw i64 %15, %14
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = and i64 %17, 1152921504606846975
  ret i64 %18
}

declare dso_local i32 @bintime(%struct.bintime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
