; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_print_irq_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_print_irq_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"\09\09IRQ modes:\00", align 1
@CIS_IRQ_LEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" Level\00", align 1
@CIS_IRQ_PULSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%c Pulse\00", align 1
@CIS_IRQ_SHARING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%c Shared\00", align 1
@CIS_IRQ_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"\09\09IRQs: \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" NMI\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" IOCK\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" BERR\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" VEND\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"\09\09IRQ level = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"\09Wrong length for IRQ sub-tuple\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @print_irq_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @print_irq_map(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ule i32* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %118

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 32, i32* %8, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CIS_IRQ_LEVEL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 44, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %13
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CIS_IRQ_PULSE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32 44, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CIS_IRQ_SHARING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %31
  %41 = call i32 @putchar(i8 signext 10)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CIS_IRQ_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %109

47:                                               ; preds = %40
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = icmp slt i64 %53, 3
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %118

56:                                               ; preds = %47
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = call i32 @tpl16(i32* %58)
  store i32 %59, i32* %6, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %56
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %74
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %81
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %102, %88
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 16
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = shl i32 1, %94
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %98, %92
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %89

105:                                              ; preds = %89
  %106 = call i32 @putchar(i8 signext 10)
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  store i32* %108, i32** %4, align 8
  br label %116

109:                                              ; preds = %40
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @CIS_IRQ_IRQN(i32 %111)
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %112)
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %4, align 8
  br label %116

116:                                              ; preds = %109, %105
  %117 = load i32*, i32** %4, align 8
  store i32* %117, i32** %3, align 8
  br label %121

118:                                              ; preds = %55, %12
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %120 = load i32*, i32** %4, align 8
  store i32* %120, i32** %3, align 8
  br label %121

121:                                              ; preds = %118, %116
  %122 = load i32*, i32** %3, align 8
  ret i32* %122
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @tpl16(i32*) #1

declare dso_local i32 @CIS_IRQ_IRQN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
