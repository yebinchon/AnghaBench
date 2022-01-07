; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_bus_generic_get_chipid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_bus_generic_get_chipid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_chipid = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"missing BHND_BUS_GET_CHIPID()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhnd_chipid* @bhnd_bus_generic_get_chipid(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.bhnd_chipid*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32* @device_get_parent(i32 %6)
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32* @device_get_parent(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.bhnd_chipid* @BHND_BUS_GET_CHIPID(i32* %11, i32 %12)
  store %struct.bhnd_chipid* %13, %struct.bhnd_chipid** %3, align 8
  br label %16

14:                                               ; preds = %2
  %15 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %9
  %17 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %3, align 8
  ret %struct.bhnd_chipid* %17
}

declare dso_local i32* @device_get_parent(i32) #1

declare dso_local %struct.bhnd_chipid* @BHND_BUS_GET_CHIPID(i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
