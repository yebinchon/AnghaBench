; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clknode_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clknode_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.clknode = type { i32 }

@CLK_NODE_REGISTERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c" CLKNODE_INIT failed: %d\0A\00", align 1
@clkdom_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clknode* @clknode_register(%struct.clkdom* %0, %struct.clknode* %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca %struct.clkdom*, align 8
  %5 = alloca %struct.clknode*, align 8
  %6 = alloca i32, align 4
  store %struct.clkdom* %0, %struct.clkdom** %4, align 8
  store %struct.clknode* %1, %struct.clknode** %5, align 8
  %7 = load %struct.clknode*, %struct.clknode** %5, align 8
  %8 = getelementptr inbounds %struct.clknode, %struct.clknode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CLK_NODE_REGISTERED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.clknode*, %struct.clknode** %5, align 8
  store %struct.clknode* %14, %struct.clknode** %3, align 8
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.clknode*, %struct.clknode** %5, align 8
  %17 = load %struct.clknode*, %struct.clknode** %5, align 8
  %18 = call i32 @clknode_get_device(%struct.clknode* %17)
  %19 = call i32 @CLKNODE_INIT(%struct.clknode* %16, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  store %struct.clknode* null, %struct.clknode** %3, align 8
  br label %37

25:                                               ; preds = %15
  %26 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %27 = getelementptr inbounds %struct.clkdom, %struct.clkdom* %26, i32 0, i32 0
  %28 = load %struct.clknode*, %struct.clknode** %5, align 8
  %29 = load i32, i32* @clkdom_link, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* %27, %struct.clknode* %28, i32 %29)
  %31 = load i32, i32* @CLK_NODE_REGISTERED, align 4
  %32 = load %struct.clknode*, %struct.clknode** %5, align 8
  %33 = getelementptr inbounds %struct.clknode, %struct.clknode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.clknode*, %struct.clknode** %5, align 8
  store %struct.clknode* %36, %struct.clknode** %3, align 8
  br label %37

37:                                               ; preds = %25, %22, %13
  %38 = load %struct.clknode*, %struct.clknode** %3, align 8
  ret %struct.clknode* %38
}

declare dso_local i32 @CLKNODE_INIT(%struct.clknode*, i32) #1

declare dso_local i32 @clknode_get_device(%struct.clknode*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.clknode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
