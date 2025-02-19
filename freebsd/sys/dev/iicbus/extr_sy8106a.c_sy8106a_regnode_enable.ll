; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_sy8106a.c_sy8106a_regnode_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_sy8106a.c_sy8106a_regnode_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.sy8106a_reg_sc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@VOUT_COM = common dso_local global i32 0, align 4
@COM_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32, i32*)* @sy8106a_regnode_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sy8106a_regnode_enable(%struct.regnode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.regnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sy8106a_reg_sc*, align 8
  %8 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.regnode*, %struct.regnode** %4, align 8
  %10 = call %struct.sy8106a_reg_sc* @regnode_get_softc(%struct.regnode* %9)
  store %struct.sy8106a_reg_sc* %10, %struct.sy8106a_reg_sc** %7, align 8
  %11 = load %struct.sy8106a_reg_sc*, %struct.sy8106a_reg_sc** %7, align 8
  %12 = getelementptr inbounds %struct.sy8106a_reg_sc, %struct.sy8106a_reg_sc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VOUT_COM, align 4
  %15 = call i32 @sy8106a_read(i32 %13, i32 %14, i32* %8, i32 1)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @COM_DISABLE, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %8, align 4
  br label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @COM_DISABLE, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.sy8106a_reg_sc*, %struct.sy8106a_reg_sc** %7, align 8
  %29 = getelementptr inbounds %struct.sy8106a_reg_sc, %struct.sy8106a_reg_sc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VOUT_COM, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @sy8106a_write(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.sy8106a_reg_sc*, %struct.sy8106a_reg_sc** %7, align 8
  %35 = getelementptr inbounds %struct.sy8106a_reg_sc, %struct.sy8106a_reg_sc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  ret i32 0
}

declare dso_local %struct.sy8106a_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @sy8106a_read(i32, i32, i32*, i32) #1

declare dso_local i32 @sy8106a_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
