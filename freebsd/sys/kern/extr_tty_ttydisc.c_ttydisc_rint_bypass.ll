; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_rint_bypass.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_rint_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@TF_BYPASS = common dso_local global i32 0, align 4
@tty_nin = common dso_local global i32 0, align 4
@rint_bypass = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ttydisc_rint_bypass(%struct.tty* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tty* %0, %struct.tty** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.tty*, %struct.tty** %5, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @tty_lock_assert(%struct.tty* %9, i32 %10)
  %12 = load %struct.tty*, %struct.tty** %5, align 8
  %13 = getelementptr inbounds %struct.tty, %struct.tty* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TF_BYPASS, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @MPASS(i32 %16)
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @atomic_add_long(i32* @tty_nin, i64 %18)
  %20 = load %struct.tty*, %struct.tty** %5, align 8
  %21 = load i32, i32* @rint_bypass, align 4
  %22 = call i64 @ttyhook_hashook(%struct.tty* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.tty*, %struct.tty** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @ttyhook_rint_bypass(%struct.tty* %25, i8* %26, i64 %27)
  store i64 %28, i64* %4, align 8
  br label %46

29:                                               ; preds = %3
  %30 = load %struct.tty*, %struct.tty** %5, align 8
  %31 = getelementptr inbounds %struct.tty, %struct.tty* %30, i32 0, i32 1
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @ttyinq_write(i32* %31, i8* %32, i64 %33, i32 0)
  store i64 %34, i64* %8, align 8
  %35 = load %struct.tty*, %struct.tty** %5, align 8
  %36 = getelementptr inbounds %struct.tty, %struct.tty* %35, i32 0, i32 1
  %37 = call i32 @ttyinq_canonicalize(i32* %36)
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load %struct.tty*, %struct.tty** %5, align 8
  %43 = call i32 @tty_hiwat_in_block(%struct.tty* %42)
  br label %44

44:                                               ; preds = %41, %29
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %44, %24
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @atomic_add_long(i32*, i64) #1

declare dso_local i64 @ttyhook_hashook(%struct.tty*, i32) #1

declare dso_local i64 @ttyhook_rint_bypass(%struct.tty*, i8*, i64) #1

declare dso_local i64 @ttyinq_write(i32*, i8*, i64, i32) #1

declare dso_local i32 @ttyinq_canonicalize(i32*) #1

declare dso_local i32 @tty_hiwat_in_block(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
