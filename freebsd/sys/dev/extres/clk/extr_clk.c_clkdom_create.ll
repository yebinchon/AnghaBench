; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clkdom_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clkdom_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32, i32, i32 }

@M_CLOCK = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@clkdom_sysctl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Clock list for the domain\00", align 1
@clknode_default_ofw_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clkdom* @clkdom_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clkdom*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @M_CLOCK, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.clkdom* @malloc(i32 12, i32 %4, i32 %7)
  store %struct.clkdom* %8, %struct.clkdom** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.clkdom*, %struct.clkdom** %3, align 8
  %11 = getelementptr inbounds %struct.clkdom, %struct.clkdom* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.clkdom*, %struct.clkdom** %3, align 8
  %13 = getelementptr inbounds %struct.clkdom, %struct.clkdom* %12, i32 0, i32 1
  %14 = call i32 @TAILQ_INIT(i32* %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @device_get_sysctl_ctx(i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @device_get_sysctl_tree(i32 %17)
  %19 = call i32 @SYSCTL_CHILDREN(i32 %18)
  %20 = load i32, i32* @OID_AUTO, align 4
  %21 = load i32, i32* @CTLTYPE_STRING, align 4
  %22 = load i32, i32* @CTLFLAG_RD, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.clkdom*, %struct.clkdom** %3, align 8
  %25 = load i32, i32* @clkdom_sysctl, align 4
  %26 = call i32 @SYSCTL_ADD_PROC(i32 %16, i32 %19, i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %23, %struct.clkdom* %24, i32 0, i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.clkdom*, %struct.clkdom** %3, align 8
  ret %struct.clkdom* %27
}

declare dso_local %struct.clkdom* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, %struct.clkdom*, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
