; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga_tools/extr_mlx5fpga_tools_char.c_tools_char_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga_tools/extr_mlx5fpga_tools_char.c_tools_char_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64, i64 }
%struct.tools_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"tools char device reading %zu bytes at 0x%jx\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @tools_char_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tools_char_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tools_context*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = bitcast %struct.tools_context** %8 to i8**
  %15 = call i32 @devfs_get_cdevpriv(i8** %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  %21 = load %struct.tools_context*, %struct.tools_context** %8, align 8
  %22 = getelementptr inbounds %struct.tools_context, %struct.tools_context* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mlx5_fpga_dev(i32 %25)
  %27 = load %struct.uio*, %struct.uio** %6, align 8
  %28 = getelementptr inbounds %struct.uio, %struct.uio* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.uio*, %struct.uio** %6, align 8
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %33)
  %35 = load %struct.tools_context*, %struct.tools_context** %8, align 8
  %36 = load %struct.uio*, %struct.uio** %6, align 8
  %37 = call i32 @tools_char_llseek(%struct.tools_context* %35, %struct.uio* %36, i64* %11)
  %38 = load i64, i64* %11, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %79

41:                                               ; preds = %20
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* @M_DEVBUF, align 4
  %44 = load i32, i32* @M_WAITOK, align 4
  %45 = call i8* @malloc(i64 %42, i32 %43, i32 %44)
  store i8* %45, i8** %9, align 8
  %46 = load %struct.uio*, %struct.uio** %6, align 8
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  %49 = load %struct.uio*, %struct.uio** %6, align 8
  %50 = getelementptr inbounds %struct.uio, %struct.uio* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.uio*, %struct.uio** %6, align 8
  %55 = call i32 @uiomove(i8* %52, i64 %53, %struct.uio* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %41
  %59 = load %struct.uio*, %struct.uio** %6, align 8
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %12, align 8
  %64 = load %struct.tools_context*, %struct.tools_context** %8, align 8
  %65 = getelementptr inbounds %struct.tools_context, %struct.tools_context* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.tools_context*, %struct.tools_context** %8, align 8
  %71 = getelementptr inbounds %struct.tools_context, %struct.tools_context* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @mem_write(%struct.TYPE_2__* %66, i8* %67, i64 %68, i64 %69, i32 %72, i64* %12)
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %58, %41
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* @M_DEVBUF, align 4
  %77 = call i32 @free(i8* %75, i32 %76)
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %74, %40, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @mlx5_fpga_dev(i32) #1

declare dso_local i32 @tools_char_llseek(%struct.tools_context*, %struct.uio*, i64*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

declare dso_local i32 @mem_write(%struct.TYPE_2__*, i8*, i64, i64, i32, i64*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
