; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow_temp.c_ow_temp_read_power_supply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow_temp.c_ow_temp_read_power_supply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ow_cmd = type { i32, i32*, i32 }

@READ_POWER_SUPPLY = common dso_local global i32 0, align 4
@OW_FLAG_READ_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @ow_temp_read_power_supply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ow_temp_read_power_supply(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ow_cmd, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @READ_POWER_SUPPLY, align 4
  %8 = call i32 @own_self_command(i32 %6, %struct.ow_cmd* %5, i32 %7)
  %9 = load i32, i32* @OW_FLAG_READ_BIT, align 4
  %10 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %5, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %9
  store i32 %12, i32* %10, align 8
  %13 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %5, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @own_command_wait(i32 %14, %struct.ow_cmd* %5)
  %16 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %5, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  ret i32 0
}

declare dso_local i32 @own_self_command(i32, %struct.ow_cmd*, i32) #1

declare dso_local i32 @own_command_wait(i32, %struct.ow_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
