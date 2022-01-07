; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_manage.c_e1000_mng_write_cmd_header_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_manage.c_e1000_mng_write_cmd_header_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }
%struct.e1000_host_mng_command_header = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"e1000_mng_write_cmd_header_generic\00", align 1
@E1000_HOST_IF = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_mng_write_cmd_header_generic(%struct.e1000_hw* %0, %struct.e1000_host_mng_command_header* %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_host_mng_command_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store %struct.e1000_host_mng_command_header* %1, %struct.e1000_host_mng_command_header** %4, align 8
  store i32 4, i32* %6, align 4
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_host_mng_command_header*, %struct.e1000_host_mng_command_header** %4, align 8
  %9 = bitcast %struct.e1000_host_mng_command_header* %8 to i32*
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @e1000_calculate_checksum(i32* %9, i32 %10)
  %12 = load %struct.e1000_host_mng_command_header*, %struct.e1000_host_mng_command_header** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_host_mng_command_header, %struct.e1000_host_mng_command_header* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 2
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %33, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = load i32, i32* @E1000_HOST_IF, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.e1000_host_mng_command_header*, %struct.e1000_host_mng_command_header** %4, align 8
  %25 = bitcast %struct.e1000_host_mng_command_header* %24 to i32*
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @E1000_WRITE_REG_ARRAY_DWORD(%struct.e1000_hw* %21, i32 %22, i32 %23, i32 %29)
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %31)
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %37
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_calculate_checksum(i32*, i32) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY_DWORD(%struct.e1000_hw*, i32, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
