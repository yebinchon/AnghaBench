; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_getc_uio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_getc_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32 }
%struct.uio = type { i64 }

@TTY_STACKBUF = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@TF_STOPPED = common dso_local global i32 0, align 4
@getc_capture = common dso_local global i32 0, align 4
@getc_inject = common dso_local global i32 0, align 4
@tty_nout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttydisc_getc_uio(%struct.tty* %0, %struct.uio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.uio*, %struct.uio** %5, align 8
  %13 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* @TTY_STACKBUF, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.tty*, %struct.tty** %4, align 8
  %20 = load i32, i32* @MA_OWNED, align 4
  %21 = call i32 @tty_lock_assert(%struct.tty* %19, i32 %20)
  %22 = load %struct.tty*, %struct.tty** %4, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TF_STOPPED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %85

29:                                               ; preds = %2
  %30 = load %struct.tty*, %struct.tty** %4, align 8
  %31 = load i32, i32* @getc_capture, align 4
  %32 = call i64 @ttyhook_hashook(%struct.tty* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.tty*, %struct.tty** %4, align 8
  %36 = load i32, i32* @getc_inject, align 4
  %37 = call i64 @ttyhook_hashook(%struct.tty* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %67, %39
  %41 = load %struct.uio*, %struct.uio** %5, align 8
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %40
  %46 = load %struct.tty*, %struct.tty** %4, align 8
  %47 = load %struct.uio*, %struct.uio** %5, align 8
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %16 to i32
  %51 = call i32 @MIN(i64 %49, i32 %50)
  %52 = call i64 @ttydisc_getc(%struct.tty* %46, i8* %18, i32 %51)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %68

56:                                               ; preds = %45
  %57 = load %struct.tty*, %struct.tty** %4, align 8
  %58 = call i32 @tty_unlock(%struct.tty* %57)
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.uio*, %struct.uio** %5, align 8
  %61 = call i32 @uiomove(i8* %18, i64 %59, %struct.uio* %60)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.tty*, %struct.tty** %4, align 8
  %63 = call i32 @tty_lock(%struct.tty* %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %68

67:                                               ; preds = %56
  br label %40

68:                                               ; preds = %66, %55, %40
  br label %83

69:                                               ; preds = %34
  %70 = load %struct.tty*, %struct.tty** %4, align 8
  %71 = getelementptr inbounds %struct.tty, %struct.tty* %70, i32 0, i32 1
  %72 = load %struct.tty*, %struct.tty** %4, align 8
  %73 = load %struct.uio*, %struct.uio** %5, align 8
  %74 = call i32 @ttyoutq_read_uio(i32* %71, %struct.tty* %72, %struct.uio* %73)
  store i32 %74, i32* %6, align 4
  %75 = load %struct.tty*, %struct.tty** %4, align 8
  %76 = call i32 @ttydisc_wakeup_watermark(%struct.tty* %75)
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.uio*, %struct.uio** %5, align 8
  %79 = getelementptr inbounds %struct.uio, %struct.uio* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = call i32 @atomic_add_long(i32* @tty_nout, i64 %81)
  br label %83

83:                                               ; preds = %69, %68
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %85

85:                                               ; preds = %83, %28
  %86 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #2

declare dso_local i64 @ttyhook_hashook(%struct.tty*, i32) #2

declare dso_local i64 @ttydisc_getc(%struct.tty*, i8*, i32) #2

declare dso_local i32 @MIN(i64, i32) #2

declare dso_local i32 @tty_unlock(%struct.tty*) #2

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #2

declare dso_local i32 @tty_lock(%struct.tty*) #2

declare dso_local i32 @ttyoutq_read_uio(i32*, %struct.tty*, %struct.uio*) #2

declare dso_local i32 @ttydisc_wakeup_watermark(%struct.tty*) #2

declare dso_local i32 @atomic_add_long(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
