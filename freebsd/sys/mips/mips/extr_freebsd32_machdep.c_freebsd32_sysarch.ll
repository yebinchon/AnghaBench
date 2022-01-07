; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_freebsd32_machdep.c_freebsd32_sysarch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_freebsd32_machdep.c_freebsd32_sysarch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.freebsd32_sysarch_args = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_sysarch(%struct.thread* %0, %struct.freebsd32_sysarch_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_sysarch_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_sysarch_args* %1, %struct.freebsd32_sysarch_args** %5, align 8
  %8 = load %struct.freebsd32_sysarch_args*, %struct.freebsd32_sysarch_args** %5, align 8
  %9 = getelementptr inbounds %struct.freebsd32_sysarch_args, %struct.freebsd32_sysarch_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %32 [
    i32 128, label %11
    i32 129, label %20
  ]

11:                                               ; preds = %2
  %12 = load %struct.freebsd32_sysarch_args*, %struct.freebsd32_sysarch_args** %5, align 8
  %13 = getelementptr inbounds %struct.freebsd32_sysarch_args, %struct.freebsd32_sysarch_args* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  store i32 0, i32* %3, align 4
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load %struct.freebsd32_sysarch_args*, %struct.freebsd32_sysarch_args** %5, align 8
  %28 = getelementptr inbounds %struct.freebsd32_sysarch_args, %struct.freebsd32_sysarch_args* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @copyout(i32* %7, i32 %29, i32 4)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %20, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
