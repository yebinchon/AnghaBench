; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_cardbus_read_tuple_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_cardbus_read_tuple_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@CIS_CONFIG_SPACE = common dso_local global %struct.resource* null, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.resource*)* @cardbus_read_tuple_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cardbus_read_tuple_finish(i32 %0, i32 %1, i32 %2, %struct.resource* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.resource* %3, %struct.resource** %8, align 8
  %9 = load %struct.resource*, %struct.resource** %8, align 8
  %10 = load %struct.resource*, %struct.resource** @CIS_CONFIG_SPACE, align 8
  %11 = icmp ne %struct.resource* %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.resource*, %struct.resource** %8, align 8
  %17 = call i32 @bus_release_resource(i32 %13, i32 %14, i32 %15, %struct.resource* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SYS_RES_MEMORY, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @bus_delete_resource(i32 %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %12, %4
  ret void
}

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @bus_delete_resource(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
