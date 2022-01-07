; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_rubchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_rubchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@l = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\08\08  \08\08\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@CTAB = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\08\08\08\08\08\08\08\08\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\08 \08\00", align 1
@VERASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*)* @ttydisc_rubchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttydisc_rubchar(%struct.tty* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  %8 = load %struct.tty*, %struct.tty** %3, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 4
  %10 = call i64 @ttyinq_peekchar(i32* %9, i8* %4, i32* %5)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %125

13:                                               ; preds = %1
  %14 = load %struct.tty*, %struct.tty** %3, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 4
  %16 = call i32 @ttyinq_unputchar(i32* %15)
  %17 = load i32, i32* @l, align 4
  %18 = load i32, i32* @ECHO, align 4
  %19 = call i64 @CMP_FLAG(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %124

21:                                               ; preds = %13
  %22 = load %struct.tty*, %struct.tty** %3, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tty*, %struct.tty** %3, align 8
  %26 = getelementptr inbounds %struct.tty, %struct.tty* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.tty*, %struct.tty** %3, align 8
  %31 = call i32 @ttydisc_reprint(%struct.tty* %30)
  br label %123

32:                                               ; preds = %21
  %33 = load i32, i32* @l, align 4
  %34 = load i32, i32* @ECHOE, align 4
  %35 = call i64 @CMP_FLAG(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %112

37:                                               ; preds = %32
  %38 = load i8, i8* %4, align 1
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @CTL_PRINT(i8 signext %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load i32, i32* @l, align 4
  %44 = load i32, i32* @ECHOCTL, align 4
  %45 = call i64 @CMP_FLAG(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.tty*, %struct.tty** %3, align 8
  %49 = getelementptr inbounds %struct.tty, %struct.tty* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 2
  store i32 %51, i32* %49, align 4
  %52 = load %struct.tty*, %struct.tty** %3, align 8
  %53 = getelementptr inbounds %struct.tty, %struct.tty* %52, i32 0, i32 3
  %54 = call i32 @ttyoutq_write_nofrag(i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  br label %55

55:                                               ; preds = %47, %42
  br label %111

56:                                               ; preds = %37
  %57 = load i8, i8* %4, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 32
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load %struct.tty*, %struct.tty** %3, align 8
  %62 = getelementptr inbounds %struct.tty, %struct.tty* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.tty*, %struct.tty** %3, align 8
  %66 = getelementptr inbounds %struct.tty, %struct.tty* %65, i32 0, i32 3
  %67 = call i32 @ttyoutq_write_nofrag(i32* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %110

68:                                               ; preds = %56
  %69 = load i8, i8* %4, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* @CTAB, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %68
  %75 = load %struct.tty*, %struct.tty** %3, align 8
  %76 = call i32 @ttydisc_recalc_linelength(%struct.tty* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.tty*, %struct.tty** %3, align 8
  %79 = getelementptr inbounds %struct.tty, %struct.tty* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp uge i32 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 1, i32* %7, align 4
  br label %89

83:                                               ; preds = %74
  %84 = load %struct.tty*, %struct.tty** %3, align 8
  %85 = getelementptr inbounds %struct.tty, %struct.tty* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sub i32 %86, %87
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %83, %82
  %90 = load i32, i32* %7, align 4
  %91 = icmp ugt i32 %90, 8
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 8, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %89
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.tty*, %struct.tty** %3, align 8
  %96 = getelementptr inbounds %struct.tty, %struct.tty* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.tty*, %struct.tty** %3, align 8
  %98 = getelementptr inbounds %struct.tty, %struct.tty* %97, i32 0, i32 3
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @ttyoutq_write_nofrag(i32* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  store i32 0, i32* %2, align 4
  br label %125

101:                                              ; preds = %68
  %102 = load %struct.tty*, %struct.tty** %3, align 8
  %103 = getelementptr inbounds %struct.tty, %struct.tty* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.tty*, %struct.tty** %3, align 8
  %107 = getelementptr inbounds %struct.tty, %struct.tty* %106, i32 0, i32 3
  %108 = call i32 @ttyoutq_write_nofrag(i32* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  br label %109

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %60
  br label %111

111:                                              ; preds = %110, %55
  br label %122

112:                                              ; preds = %32
  %113 = load %struct.tty*, %struct.tty** %3, align 8
  %114 = load %struct.tty*, %struct.tty** %3, align 8
  %115 = getelementptr inbounds %struct.tty, %struct.tty* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @VERASE, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ttydisc_echo(%struct.tty* %113, i32 %120, i32 0)
  br label %122

122:                                              ; preds = %112, %111
  br label %123

123:                                              ; preds = %122, %29
  br label %124

124:                                              ; preds = %123, %13
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %124, %93, %12
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i64 @ttyinq_peekchar(i32*, i8*, i32*) #1

declare dso_local i32 @ttyinq_unputchar(i32*) #1

declare dso_local i64 @CMP_FLAG(i32, i32) #1

declare dso_local i32 @ttydisc_reprint(%struct.tty*) #1

declare dso_local i64 @CTL_PRINT(i8 signext, i32) #1

declare dso_local i32 @ttyoutq_write_nofrag(i32*, i8*, i32) #1

declare dso_local i32 @ttydisc_recalc_linelength(%struct.tty*) #1

declare dso_local i32 @ttydisc_echo(%struct.tty*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
