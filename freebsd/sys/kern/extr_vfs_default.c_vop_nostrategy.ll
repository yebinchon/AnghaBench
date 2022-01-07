; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_nostrategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_nostrategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_strategy_args = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"No strategy for buffer at %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vnode \00", align 1
@BIO_ERROR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_strategy_args*)* @vop_nostrategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_nostrategy(%struct.vop_strategy_args* %0) #0 {
  %2 = alloca %struct.vop_strategy_args*, align 8
  store %struct.vop_strategy_args* %0, %struct.vop_strategy_args** %2, align 8
  %3 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %2, align 8
  %4 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %5)
  %7 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %2, align 8
  %8 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @vn_printf(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @BIO_ERROR, align 4
  %12 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %2, align 8
  %13 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %11
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %2, align 8
  %20 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %2, align 8
  %24 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = call i32 @bufdone(%struct.TYPE_3__* %25)
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  ret i32 %27
}

declare dso_local i32 @printf(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @vn_printf(i32, i8*) #1

declare dso_local i32 @bufdone(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
