; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spibus.c_spibus_hinted_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spibus.c_spibus_hinted_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spibus_ivar = type { i32, i32, i32 }

@SPIBUS_MODE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @spibus_hinted_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spibus_hinted_child(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spibus_ivar*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @BUS_ADD_CHILD(i32 %9, i32 0, i8* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.spibus_ivar* @SPIBUS_IVAR(i32 %13)
  store %struct.spibus_ivar* %14, %struct.spibus_ivar** %8, align 8
  %15 = load i32, i32* @SPIBUS_MODE_NONE, align 4
  %16 = load %struct.spibus_ivar*, %struct.spibus_ivar** %8, align 8
  %17 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.spibus_ivar*, %struct.spibus_ivar** %8, align 8
  %21 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %20, i32 0, i32 2
  %22 = call i32 @resource_int_value(i8* %18, i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %21)
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.spibus_ivar*, %struct.spibus_ivar** %8, align 8
  %26 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %25, i32 0, i32 1
  %27 = call i32 @resource_int_value(i8* %23, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.spibus_ivar*, %struct.spibus_ivar** %8, align 8
  %31 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %30, i32 0, i32 0
  %32 = call i32 @resource_int_value(i8* %28, i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %31)
  ret void
}

declare dso_local i32 @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local %struct.spibus_ivar* @SPIBUS_IVAR(i32) #1

declare dso_local i32 @resource_int_value(i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
