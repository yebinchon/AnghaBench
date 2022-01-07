; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_copyout.c_futex_orl_slow0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_copyout.c_futex_orl_slow0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_st0 = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*)* @futex_orl_slow0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @futex_orl_slow0(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.futex_st0*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.futex_st0*
  store %struct.futex_st0* %8, %struct.futex_st0** %5, align 8
  %9 = load i64, i64* %3, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %23, %2
  %13 = load i64, i64* %3, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.futex_st0*, %struct.futex_st0** %5, align 8
  %17 = getelementptr inbounds %struct.futex_st0, %struct.futex_st0* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %15, %18
  %20 = call i32 @atomic_fcmpset_int(i32* %14, i32* %6, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %12

24:                                               ; preds = %12
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.futex_st0*, %struct.futex_st0** %5, align 8
  %27 = getelementptr inbounds %struct.futex_st0, %struct.futex_st0* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32 %25, i32* %28, align 4
  ret void
}

declare dso_local i32 @atomic_fcmpset_int(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
