; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/factor/extr_factor.c_pr_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/factor/extr_factor.c_pr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" 0x\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @pr_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_print(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* @hflag, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @stdout, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @BN_print_fp(i32 %8, i32* %9)
  br label %16

11:                                               ; preds = %1
  %12 = call i32 @putchar(i8 signext 32)
  %13 = load i32, i32* @stdout, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @BN_print_dec_fp(i32 %13, i32* %14)
  br label %16

16:                                               ; preds = %11, %5
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @BN_print_fp(i32, i32*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @BN_print_dec_fp(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
