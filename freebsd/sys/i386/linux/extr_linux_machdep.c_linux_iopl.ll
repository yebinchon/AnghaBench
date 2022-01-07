; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_iopl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_iopl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.linux_iopl_args = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PRIV_IO = common dso_local global i32 0, align 4
@PSL_IOPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_iopl(%struct.thread* %0, %struct.linux_iopl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_iopl_args*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_iopl_args* %1, %struct.linux_iopl_args** %5, align 8
  %7 = load %struct.linux_iopl_args*, %struct.linux_iopl_args** %5, align 8
  %8 = getelementptr inbounds %struct.linux_iopl_args, %struct.linux_iopl_args* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.linux_iopl_args*, %struct.linux_iopl_args** %5, align 8
  %13 = getelementptr inbounds %struct.linux_iopl_args, %struct.linux_iopl_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 3
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %11
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = load i32, i32* @PRIV_IO, align 4
  %21 = call i32 @priv_check(%struct.thread* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %18
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @securelevel_gt(i32 %28, i32 0)
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %53

33:                                               ; preds = %25
  %34 = load %struct.thread*, %struct.thread** %4, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PSL_IOPL, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load %struct.linux_iopl_args*, %struct.linux_iopl_args** %5, align 8
  %43 = getelementptr inbounds %struct.linux_iopl_args, %struct.linux_iopl_args* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PSL_IOPL, align 4
  %46 = sdiv i32 %45, 3
  %47 = mul nsw i32 %44, %46
  %48 = or i32 %41, %47
  %49 = load %struct.thread*, %struct.thread** %4, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %33, %31, %23, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @securelevel_gt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
