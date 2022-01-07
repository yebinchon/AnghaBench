; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_sy8106a.c_sy8106a_reg_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_sy8106a.c_sy8106a_reg_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sy8106a_reg_sc = type { i32, i32, i32, %struct.regnode* }
%struct.regnode = type { i32 }
%struct.regnode_init_def = type { i32, i64 }

@sy8106a_regnode_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot create regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sy8106a_reg_sc* (i32, i32)* @sy8106a_reg_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sy8106a_reg_sc* @sy8106a_reg_attach(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.sy8106a_reg_sc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sy8106a_reg_sc*, align 8
  %7 = alloca %struct.regnode_init_def, align 8
  %8 = alloca %struct.regnode*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = call i32 @memset(%struct.regnode_init_def* %7, i32 0, i32 16)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @regulator_parse_ofw_stdparam(i32 %10, i32 %11, %struct.regnode_init_def* %7)
  %13 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %7, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.regnode* @regnode_create(i32 %16, i32* @sy8106a_regnode_class, %struct.regnode_init_def* %7)
  store %struct.regnode* %17, %struct.regnode** %8, align 8
  %18 = load %struct.regnode*, %struct.regnode** %8, align 8
  %19 = icmp eq %struct.regnode* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.sy8106a_reg_sc* null, %struct.sy8106a_reg_sc** %3, align 8
  br label %43

23:                                               ; preds = %2
  %24 = load %struct.regnode*, %struct.regnode** %8, align 8
  %25 = call %struct.sy8106a_reg_sc* @regnode_get_softc(%struct.regnode* %24)
  store %struct.sy8106a_reg_sc* %25, %struct.sy8106a_reg_sc** %6, align 8
  %26 = load %struct.regnode*, %struct.regnode** %8, align 8
  %27 = load %struct.sy8106a_reg_sc*, %struct.sy8106a_reg_sc** %6, align 8
  %28 = getelementptr inbounds %struct.sy8106a_reg_sc, %struct.sy8106a_reg_sc* %27, i32 0, i32 3
  store %struct.regnode* %26, %struct.regnode** %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.sy8106a_reg_sc*, %struct.sy8106a_reg_sc** %6, align 8
  %31 = getelementptr inbounds %struct.sy8106a_reg_sc, %struct.sy8106a_reg_sc* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @OF_xref_from_node(i32 %32)
  %34 = load %struct.sy8106a_reg_sc*, %struct.sy8106a_reg_sc** %6, align 8
  %35 = getelementptr inbounds %struct.sy8106a_reg_sc, %struct.sy8106a_reg_sc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.regnode*, %struct.regnode** %8, align 8
  %37 = call i32 @regnode_get_stdparam(%struct.regnode* %36)
  %38 = load %struct.sy8106a_reg_sc*, %struct.sy8106a_reg_sc** %6, align 8
  %39 = getelementptr inbounds %struct.sy8106a_reg_sc, %struct.sy8106a_reg_sc* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.regnode*, %struct.regnode** %8, align 8
  %41 = call i32 @regnode_register(%struct.regnode* %40)
  %42 = load %struct.sy8106a_reg_sc*, %struct.sy8106a_reg_sc** %6, align 8
  store %struct.sy8106a_reg_sc* %42, %struct.sy8106a_reg_sc** %3, align 8
  br label %43

43:                                               ; preds = %23, %20
  %44 = load %struct.sy8106a_reg_sc*, %struct.sy8106a_reg_sc** %3, align 8
  ret %struct.sy8106a_reg_sc* %44
}

declare dso_local i32 @memset(%struct.regnode_init_def*, i32, i32) #1

declare dso_local i32 @regulator_parse_ofw_stdparam(i32, i32, %struct.regnode_init_def*) #1

declare dso_local %struct.regnode* @regnode_create(i32, i32*, %struct.regnode_init_def*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.sy8106a_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @regnode_get_stdparam(%struct.regnode*) #1

declare dso_local i32 @regnode_register(%struct.regnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
