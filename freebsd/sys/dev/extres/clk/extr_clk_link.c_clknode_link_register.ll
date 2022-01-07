; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_link.c_clknode_link_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_link.c_clknode_link_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.clk_link_def = type { %struct.clknode_init_def }
%struct.clknode_init_def = type { i32 }
%struct.clknode = type { i32 }

@CLK_NODE_LINKED = common dso_local global i32 0, align 4
@clknode_link_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clknode_link_register(%struct.clkdom* %0, %struct.clk_link_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clkdom*, align 8
  %5 = alloca %struct.clk_link_def*, align 8
  %6 = alloca %struct.clknode*, align 8
  %7 = alloca %struct.clknode_init_def, align 4
  store %struct.clkdom* %0, %struct.clkdom** %4, align 8
  store %struct.clk_link_def* %1, %struct.clk_link_def** %5, align 8
  %8 = load %struct.clk_link_def*, %struct.clk_link_def** %5, align 8
  %9 = getelementptr inbounds %struct.clk_link_def, %struct.clk_link_def* %8, i32 0, i32 0
  %10 = bitcast %struct.clknode_init_def* %7 to i8*
  %11 = bitcast %struct.clknode_init_def* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load i32, i32* @CLK_NODE_LINKED, align 4
  %13 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %7, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %12
  store i32 %15, i32* %13, align 4
  %16 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %17 = call %struct.clknode* @clknode_create(%struct.clkdom* %16, i32* @clknode_link_class, %struct.clknode_init_def* %7)
  store %struct.clknode* %17, %struct.clknode** %6, align 8
  %18 = load %struct.clknode*, %struct.clknode** %6, align 8
  %19 = icmp eq %struct.clknode* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %23 = load %struct.clknode*, %struct.clknode** %6, align 8
  %24 = call i32 @clknode_register(%struct.clkdom* %22, %struct.clknode* %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %20
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, %struct.clknode_init_def*) #2

declare dso_local i32 @clknode_register(%struct.clkdom*, %struct.clknode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
