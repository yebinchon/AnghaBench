; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator_fixed.c_regnode_fixed_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator_fixed.c_regnode_fixed_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode_fixed_init_def = type { i32*, i32, i32 }
%struct.regnode = type { i32 }
%struct.regnode_fixed_sc = type { %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@regnode_fixed_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot create regulator.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot register regulator.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regnode_fixed_register(i32 %0, %struct.regnode_fixed_init_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.regnode_fixed_init_def*, align 8
  %6 = alloca %struct.regnode*, align 8
  %7 = alloca %struct.regnode_fixed_sc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.regnode_fixed_init_def* %1, %struct.regnode_fixed_init_def** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.regnode_fixed_init_def*, %struct.regnode_fixed_init_def** %5, align 8
  %10 = getelementptr inbounds %struct.regnode_fixed_init_def, %struct.regnode_fixed_init_def* %9, i32 0, i32 2
  %11 = call %struct.regnode* @regnode_create(i32 %8, i32* @regnode_fixed_class, i32* %10)
  store %struct.regnode* %11, %struct.regnode** %6, align 8
  %12 = load %struct.regnode*, %struct.regnode** %6, align 8
  %13 = icmp eq %struct.regnode* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %3, align 4
  br label %71

18:                                               ; preds = %2
  %19 = load %struct.regnode*, %struct.regnode** %6, align 8
  %20 = call %struct.regnode_fixed_sc* @regnode_get_softc(%struct.regnode* %19)
  store %struct.regnode_fixed_sc* %20, %struct.regnode_fixed_sc** %7, align 8
  %21 = load %struct.regnode_fixed_init_def*, %struct.regnode_fixed_init_def** %5, align 8
  %22 = getelementptr inbounds %struct.regnode_fixed_init_def, %struct.regnode_fixed_init_def* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %7, align 8
  %25 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.regnode_fixed_init_def*, %struct.regnode_fixed_init_def** %5, align 8
  %27 = getelementptr inbounds %struct.regnode_fixed_init_def, %struct.regnode_fixed_init_def* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %18
  %31 = load %struct.regnode_fixed_init_def*, %struct.regnode_fixed_init_def** %5, align 8
  %32 = getelementptr inbounds %struct.regnode_fixed_init_def, %struct.regnode_fixed_init_def* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call %struct.TYPE_4__* @regnode_get_gpio_entry(i32* %33)
  %35 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %7, align 8
  %36 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %35, i32 0, i32 1
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %7, align 8
  %38 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp eq %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %3, align 4
  br label %71

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %18
  %45 = load %struct.regnode*, %struct.regnode** %6, align 8
  %46 = call %struct.regnode* @regnode_register(%struct.regnode* %45)
  store %struct.regnode* %46, %struct.regnode** %6, align 8
  %47 = load %struct.regnode*, %struct.regnode** %6, align 8
  %48 = icmp eq %struct.regnode* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %3, align 4
  br label %71

53:                                               ; preds = %44
  %54 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %7, align 8
  %55 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %7, align 8
  %60 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %7, align 8
  %65 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %63
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %58, %53
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %49, %41, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.regnode* @regnode_create(i32, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.regnode_fixed_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local %struct.TYPE_4__* @regnode_get_gpio_entry(i32*) #1

declare dso_local %struct.regnode* @regnode_register(%struct.regnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
