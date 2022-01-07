; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_terminal.c_terminal_input_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_terminal.c_terminal_input_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terminal = type { %struct.tty* }
%struct.tty = type { i32 }

@TF_CJK_RIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @terminal_input_char(%struct.terminal* %0, i32 %1) #0 {
  %3 = alloca %struct.terminal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca [3 x i8], align 1
  %8 = alloca [4 x i8], align 1
  store %struct.terminal* %0, %struct.terminal** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.terminal*, %struct.terminal** %3, align 8
  %10 = getelementptr inbounds %struct.terminal, %struct.terminal* %9, i32 0, i32 0
  %11 = load %struct.tty*, %struct.tty** %10, align 8
  store %struct.tty* %11, %struct.tty** %5, align 8
  %12 = load %struct.tty*, %struct.tty** %5, align 8
  %13 = icmp eq %struct.tty* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %106

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TCHAR_FORMAT(i32 %16)
  %18 = load i32, i32* @TF_CJK_RIGHT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %106

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @TCHAR_CHARACTER(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.tty*, %struct.tty** %5, align 8
  %26 = call i32 @tty_lock(%struct.tty* %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 128
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.tty*, %struct.tty** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ttydisc_rint(%struct.tty* %30, i32 %31, i32 0)
  br label %101

33:                                               ; preds = %22
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 2048
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %38, 6
  %40 = or i32 192, %39
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %37, align 1
  %42 = getelementptr inbounds i8, i8* %37, i64 1
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 63
  %45 = or i32 128, %44
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 1
  %47 = load %struct.tty*, %struct.tty** %5, align 8
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %49 = call i32 @ttydisc_rint_simple(%struct.tty* %47, i8* %48, i32 2)
  br label %100

50:                                               ; preds = %33
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 65536
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %55 = load i32, i32* %4, align 4
  %56 = ashr i32 %55, 12
  %57 = or i32 224, %56
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  %59 = getelementptr inbounds i8, i8* %54, i64 1
  %60 = load i32, i32* %4, align 4
  %61 = ashr i32 %60, 6
  %62 = and i32 %61, 63
  %63 = or i32 128, %62
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %59, align 1
  %65 = getelementptr inbounds i8, i8* %59, i64 1
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 63
  %68 = or i32 128, %67
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %65, align 1
  %70 = load %struct.tty*, %struct.tty** %5, align 8
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %72 = call i32 @ttydisc_rint_simple(%struct.tty* %70, i8* %71, i32 3)
  br label %99

73:                                               ; preds = %50
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %75 = load i32, i32* %4, align 4
  %76 = ashr i32 %75, 18
  %77 = or i32 240, %76
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %74, align 1
  %79 = getelementptr inbounds i8, i8* %74, i64 1
  %80 = load i32, i32* %4, align 4
  %81 = ashr i32 %80, 12
  %82 = and i32 %81, 63
  %83 = or i32 128, %82
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %79, align 1
  %85 = getelementptr inbounds i8, i8* %79, i64 1
  %86 = load i32, i32* %4, align 4
  %87 = ashr i32 %86, 6
  %88 = and i32 %87, 63
  %89 = or i32 128, %88
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %85, align 1
  %91 = getelementptr inbounds i8, i8* %85, i64 1
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, 63
  %94 = or i32 128, %93
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %91, align 1
  %96 = load %struct.tty*, %struct.tty** %5, align 8
  %97 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %98 = call i32 @ttydisc_rint_simple(%struct.tty* %96, i8* %97, i32 4)
  br label %99

99:                                               ; preds = %73, %53
  br label %100

100:                                              ; preds = %99, %36
  br label %101

101:                                              ; preds = %100, %29
  %102 = load %struct.tty*, %struct.tty** %5, align 8
  %103 = call i32 @ttydisc_rint_done(%struct.tty* %102)
  %104 = load %struct.tty*, %struct.tty** %5, align 8
  %105 = call i32 @tty_unlock(%struct.tty* %104)
  br label %106

106:                                              ; preds = %101, %21, %14
  ret void
}

declare dso_local i32 @TCHAR_FORMAT(i32) #1

declare dso_local i32 @TCHAR_CHARACTER(i32) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @ttydisc_rint(%struct.tty*, i32, i32) #1

declare dso_local i32 @ttydisc_rint_simple(%struct.tty*, i8*, i32) #1

declare dso_local i32 @ttydisc_rint_done(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
