; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regulator_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regulator_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32, i32, i64, %struct.regnode*, i32 }
%struct.regnode = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@M_REGULATOR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.regulator* (%struct.regnode*, i32)* @regulator_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.regulator* @regulator_create(%struct.regnode* %0, i32 %1) #0 {
  %3 = alloca %struct.regnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator*, align 8
  store %struct.regnode* %0, %struct.regnode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @REG_TOPO_ASSERT()
  %7 = load i32, i32* @M_REGULATOR, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.regulator* @malloc(i32 32, i32 %7, i32 %10)
  store %struct.regulator* %11, %struct.regulator** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.regulator*, %struct.regulator** %5, align 8
  %14 = getelementptr inbounds %struct.regulator, %struct.regulator* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.regnode*, %struct.regnode** %3, align 8
  %16 = load %struct.regulator*, %struct.regulator** %5, align 8
  %17 = getelementptr inbounds %struct.regulator, %struct.regulator* %16, i32 0, i32 3
  store %struct.regnode* %15, %struct.regnode** %17, align 8
  %18 = load %struct.regulator*, %struct.regulator** %5, align 8
  %19 = getelementptr inbounds %struct.regulator, %struct.regulator* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.regnode*, %struct.regnode** %3, align 8
  %21 = call i32 @REGNODE_XLOCK(%struct.regnode* %20)
  %22 = load %struct.regnode*, %struct.regnode** %3, align 8
  %23 = getelementptr inbounds %struct.regnode, %struct.regnode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.regnode*, %struct.regnode** %3, align 8
  %27 = getelementptr inbounds %struct.regnode, %struct.regnode* %26, i32 0, i32 1
  %28 = load %struct.regulator*, %struct.regulator** %5, align 8
  %29 = load i32, i32* @link, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* %27, %struct.regulator* %28, i32 %29)
  %31 = load %struct.regnode*, %struct.regnode** %3, align 8
  %32 = getelementptr inbounds %struct.regnode, %struct.regnode* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.regulator*, %struct.regulator** %5, align 8
  %36 = getelementptr inbounds %struct.regulator, %struct.regulator* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.regnode*, %struct.regnode** %3, align 8
  %38 = getelementptr inbounds %struct.regnode, %struct.regnode* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.regulator*, %struct.regulator** %5, align 8
  %42 = getelementptr inbounds %struct.regulator, %struct.regulator* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.regnode*, %struct.regnode** %3, align 8
  %44 = call i32 @REGNODE_UNLOCK(%struct.regnode* %43)
  %45 = load %struct.regulator*, %struct.regulator** %5, align 8
  ret %struct.regulator* %45
}

declare dso_local i32 @REG_TOPO_ASSERT(...) #1

declare dso_local %struct.regulator* @malloc(i32, i32, i32) #1

declare dso_local i32 @REGNODE_XLOCK(%struct.regnode*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.regulator*, i32) #1

declare dso_local i32 @REGNODE_UNLOCK(%struct.regnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
