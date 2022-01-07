; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_riscv_console.c_riscvtty_outwakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_riscv_console.c_riscvtty_outwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }

@MAX_BURST_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"tty error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @riscvtty_outwakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @riscvtty_outwakeup(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %7 = load i32, i32* @MAX_BURST_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  br label %11

11:                                               ; preds = %37, %1
  %12 = load %struct.tty*, %struct.tty** %2, align 8
  %13 = mul nuw i64 4, %8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @ttydisc_getc(%struct.tty* %12, i32* %10, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %38

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %34, %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %10, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @riscv_putc(i32 %32)
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %24

37:                                               ; preds = %24
  br label %11

38:                                               ; preds = %18
  %39 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %39)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ttydisc_getc(%struct.tty*, i32*, i32) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @riscv_putc(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
