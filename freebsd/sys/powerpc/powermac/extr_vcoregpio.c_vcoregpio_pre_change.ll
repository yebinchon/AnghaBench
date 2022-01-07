; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_vcoregpio.c_vcoregpio_pre_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_vcoregpio.c_vcoregpio_pre_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_level = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GPIO_DDR_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cf_level*)* @vcoregpio_pre_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcoregpio_pre_change(i32 %0, %struct.cf_level* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cf_level*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.cf_level* %1, %struct.cf_level** %4, align 8
  %5 = load %struct.cf_level*, %struct.cf_level** %4, align 8
  %6 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 10000
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @GPIO_DDR_OUTPUT, align 4
  %15 = or i32 %14, 1
  %16 = call i32 @macgpio_write(i32 %13, i32 %15)
  %17 = call i32 @DELAY(i32 1000)
  br label %18

18:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @macgpio_write(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
