; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_syr827.c_syr827_regnode_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_syr827.c_syr827_regnode_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.syr827_reg_sc = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@VSEL_BUCK_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32, i32*)* @syr827_regnode_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syr827_regnode_enable(%struct.regnode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.regnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.syr827_reg_sc*, align 8
  %8 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.regnode*, %struct.regnode** %4, align 8
  %10 = call %struct.syr827_reg_sc* @regnode_get_softc(%struct.regnode* %9)
  store %struct.syr827_reg_sc* %10, %struct.syr827_reg_sc** %7, align 8
  %11 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %7, align 8
  %12 = getelementptr inbounds %struct.syr827_reg_sc, %struct.syr827_reg_sc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %7, align 8
  %15 = getelementptr inbounds %struct.syr827_reg_sc, %struct.syr827_reg_sc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @syr827_read(i32 %13, i32 %16, i32* %8, i32 1)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @VSEL_BUCK_EN, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @VSEL_BUCK_EN, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %7, align 8
  %31 = getelementptr inbounds %struct.syr827_reg_sc, %struct.syr827_reg_sc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %7, align 8
  %34 = getelementptr inbounds %struct.syr827_reg_sc, %struct.syr827_reg_sc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @syr827_write(i32 %32, i32 %35, i32 %36)
  %38 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %7, align 8
  %39 = getelementptr inbounds %struct.syr827_reg_sc, %struct.syr827_reg_sc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  ret i32 0
}

declare dso_local %struct.syr827_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @syr827_read(i32, i32, i32*, i32) #1

declare dso_local i32 @syr827_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
