; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_interface.c_mlx_enquiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_interface.c_mlx_enquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_enquiry2 = type { i32 }
%struct.mlx_usercommand = type { i32, i32, i64, i32*, %struct.mlx_enquiry2* }

@MLX_CMD_ENQUIRY2 = common dso_local global i32 0, align 4
@mlx_command = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx_enquiry(i32 %0, %struct.mlx_enquiry2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx_enquiry2*, align 8
  %5 = alloca %struct.mlx_usercommand, align 8
  store i32 %0, i32* %3, align 4
  store %struct.mlx_enquiry2* %1, %struct.mlx_enquiry2** %4, align 8
  %6 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %5, i32 0, i32 0
  store i32 4, i32* %6, align 8
  %7 = load %struct.mlx_enquiry2*, %struct.mlx_enquiry2** %4, align 8
  %8 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %5, i32 0, i32 4
  store %struct.mlx_enquiry2* %7, %struct.mlx_enquiry2** %8, align 8
  %9 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %5, i32 0, i32 1
  store i32 8, i32* %9, align 4
  %10 = load i32, i32* @MLX_CMD_ENQUIRY2, align 4
  %11 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %5, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @mlx_command, align 4
  %16 = bitcast %struct.mlx_usercommand* %5 to i8*
  %17 = call i32 @mlx_perform(i32 %14, i32 %15, i8* %16)
  %18 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %5, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i32 @mlx_perform(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
