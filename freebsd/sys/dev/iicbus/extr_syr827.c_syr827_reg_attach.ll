; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_syr827.c_syr827_reg_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_syr827.c_syr827_reg_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syr827_reg_sc = type { i8*, i8*, i32, i32, i32, %struct.regnode* }
%struct.regnode = type { i32 }
%struct.regnode_init_def = type { i32, i64 }

@syr827_regnode_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot create regulator\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"fcs,suspend-voltage-selector\00", align 1
@VSEL0 = common dso_local global i8* null, align 8
@VSEL1 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.syr827_reg_sc* (i32, i32)* @syr827_reg_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.syr827_reg_sc* @syr827_reg_attach(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.syr827_reg_sc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.syr827_reg_sc*, align 8
  %7 = alloca %struct.regnode_init_def, align 8
  %8 = alloca %struct.regnode*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = call i32 @memset(%struct.regnode_init_def* %7, i32 0, i32 16)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @regulator_parse_ofw_stdparam(i32 %11, i32 %12, %struct.regnode_init_def* %7)
  %14 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %7, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.regnode* @regnode_create(i32 %17, i32* @syr827_regnode_class, %struct.regnode_init_def* %7)
  store %struct.regnode* %18, %struct.regnode** %8, align 8
  %19 = load %struct.regnode*, %struct.regnode** %8, align 8
  %20 = icmp eq %struct.regnode* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.syr827_reg_sc* null, %struct.syr827_reg_sc** %3, align 8
  br label %65

24:                                               ; preds = %2
  %25 = load %struct.regnode*, %struct.regnode** %8, align 8
  %26 = call %struct.syr827_reg_sc* @regnode_get_softc(%struct.regnode* %25)
  store %struct.syr827_reg_sc* %26, %struct.syr827_reg_sc** %6, align 8
  %27 = load %struct.regnode*, %struct.regnode** %8, align 8
  %28 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %6, align 8
  %29 = getelementptr inbounds %struct.syr827_reg_sc, %struct.syr827_reg_sc* %28, i32 0, i32 5
  store %struct.regnode* %27, %struct.regnode** %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %6, align 8
  %32 = getelementptr inbounds %struct.syr827_reg_sc, %struct.syr827_reg_sc* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @OF_xref_from_node(i32 %33)
  %35 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %6, align 8
  %36 = getelementptr inbounds %struct.syr827_reg_sc, %struct.syr827_reg_sc* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.regnode*, %struct.regnode** %8, align 8
  %38 = call i32 @regnode_get_stdparam(%struct.regnode* %37)
  %39 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %6, align 8
  %40 = getelementptr inbounds %struct.syr827_reg_sc, %struct.syr827_reg_sc* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @OF_getencprop(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32 4)
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %24
  %46 = load i32, i32* %9, align 4
  switch i32 %46, label %61 [
    i32 0, label %47
    i32 1, label %54
  ]

47:                                               ; preds = %45
  %48 = load i8*, i8** @VSEL0, align 8
  %49 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %6, align 8
  %50 = getelementptr inbounds %struct.syr827_reg_sc, %struct.syr827_reg_sc* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @VSEL1, align 8
  %52 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %6, align 8
  %53 = getelementptr inbounds %struct.syr827_reg_sc, %struct.syr827_reg_sc* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %61

54:                                               ; preds = %45
  %55 = load i8*, i8** @VSEL1, align 8
  %56 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %6, align 8
  %57 = getelementptr inbounds %struct.syr827_reg_sc, %struct.syr827_reg_sc* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @VSEL0, align 8
  %59 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %6, align 8
  %60 = getelementptr inbounds %struct.syr827_reg_sc, %struct.syr827_reg_sc* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %45, %54, %47
  %62 = load %struct.regnode*, %struct.regnode** %8, align 8
  %63 = call i32 @regnode_register(%struct.regnode* %62)
  %64 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %6, align 8
  store %struct.syr827_reg_sc* %64, %struct.syr827_reg_sc** %3, align 8
  br label %65

65:                                               ; preds = %61, %21
  %66 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %3, align 8
  ret %struct.syr827_reg_sc* %66
}

declare dso_local i32 @memset(%struct.regnode_init_def*, i32, i32) #1

declare dso_local i32 @regulator_parse_ofw_stdparam(i32, i32, %struct.regnode_init_def*) #1

declare dso_local %struct.regnode* @regnode_create(i32, i32*, %struct.regnode_init_def*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.syr827_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @regnode_get_stdparam(%struct.regnode*) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @regnode_register(%struct.regnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
