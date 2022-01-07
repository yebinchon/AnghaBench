; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_init_nvm_ops_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_init_nvm_ops_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i32, i8*, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [27 x i8] c"e1000_init_nvm_ops_generic\00", align 1
@e1000_null_ops_generic = common dso_local global i8* null, align 8
@e1000_null_read_nvm = common dso_local global i32 0, align 4
@e1000_null_nvm_generic = common dso_local global i32 0, align 4
@e1000_reload_nvm_generic = common dso_local global i32 0, align 4
@e1000_null_led_default = common dso_local global i32 0, align 4
@e1000_null_write_nvm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_init_nvm_ops_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 0
  store %struct.e1000_nvm_info* %5, %struct.e1000_nvm_info** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %7 = load i8*, i8** @e1000_null_ops_generic, align 8
  %8 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 8
  store i8* %7, i8** %10, align 8
  %11 = load i8*, i8** @e1000_null_ops_generic, align 8
  %12 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 7
  store i8* %11, i8** %14, align 8
  %15 = load i32, i32* @e1000_null_read_nvm, align 4
  %16 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 6
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @e1000_null_nvm_generic, align 4
  %20 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 5
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @e1000_reload_nvm_generic, align 4
  %24 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 8
  %27 = load i8*, i8** @e1000_null_ops_generic, align 8
  %28 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i8* %27, i8** %30, align 8
  %31 = load i32, i32* @e1000_null_led_default, align 4
  %32 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load i8*, i8** @e1000_null_ops_generic, align 8
  %36 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i8* %35, i8** %38, align 8
  %39 = load i32, i32* @e1000_null_write_nvm, align 4
  %40 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
